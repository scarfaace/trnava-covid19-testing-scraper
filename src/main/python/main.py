from datetime import datetime

from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
import psycopg2


from model import OMEntry

firefox_options = Options()
firefox_options.add_argument("--headless")


if __name__ == '__main__':
    time_now = datetime.today()
    print("Scraping data at:", time_now)

    connection = psycopg2.connect(user="postgres",
                                  password="abcd123",
                                  host="localhost",
                                  port="5432",
                                  database="postgres")
    cursor = connection.cursor()
    postgres_insert_query = """ INSERT INTO odberove_miesto (om_id, om_name, actual_waiting_number, last_update, db_insert_time) VALUES (%s,%s,%s,%s,%s)"""

    url = 'https://testovanie.trnava.sk/'
    browser = webdriver.Firefox(executable_path='resources/driver/geckodriver-firefox', firefox_options=firefox_options)
    browser.get(url)


    soup = BeautifulSoup(browser.page_source, 'html.parser')
    rows_table_om = soup.find(id='OM').find('tbody').find_all('tr')
    # print(rows_table_om.find('tbody'))
    # print(rows_table_om)
    for row in rows_table_om:
        tds = row.find_all('td')
        om_entry = OMEntry(
            om_id=tds[0].get_text(),
            om_name=tds[1].get_text(),
            actual_waiting_number=tds[2].get_text(),
            last_update=tds[3].get_text()
        )
        record_to_insert = (
            om_entry.om_id,
            om_entry.om_name,
            om_entry.actual_waiting_number,
            om_entry.last_update,
            time_now
        )

        cursor.execute(postgres_insert_query, record_to_insert)
        connection.commit()
    print("Data successfully stored")
