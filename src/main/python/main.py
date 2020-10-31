from datetime import datetime

import psycopg2

from output import PostgresOutputter
from processor import TrnavaBeautifulSoupWrapper, TrnavaTestingPlaceAttributesExtractor

postgres_connection = psycopg2.connect(
    user="postgres",
    password="abcd123",
    host="localhost",
    port="5432",
    database="postgres"
)
outputter = PostgresOutputter(postgres_connection)

if __name__ == '__main__':
    time_now = datetime.today()
    print("Scraping data at:", time_now)

    html_testing_places = TrnavaBeautifulSoupWrapper.get_html_elements_for_testing_places()
    for testing_place_html in html_testing_places:
        entry = TrnavaTestingPlaceAttributesExtractor.extract_attributes(testing_place_html)
        record_to_insert = (
            entry.om_id,
            entry.om_name,
            entry.actual_waiting_number,
            entry.last_update,
            time_now
        )
        outputter.output(record_to_insert)


    print("Data successfully stored")
