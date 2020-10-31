from datetime import datetime

from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

from model import OMRow

firefox_options = Options()
firefox_options.add_argument("--headless")


if __name__ == '__main__':
    time_now = datetime.today()
    print("Scraping data at:", time_now)

    url = 'https://testovanie.trnava.sk/'
    browser = webdriver.Firefox(executable_path='resources/driver/geckodriver-firefox', firefox_options=firefox_options)
    browser.get(url)

    # page = requests.get(url)

    soup = BeautifulSoup(browser.page_source, 'html.parser')
    rows_table_om = soup.find(id='OM').find('tbody').find_all('tr')
    # print(rows_table_om.find('tbody'))
    # print(rows_table_om)
    for row in rows_table_om:
        tds = row.find_all('td')
        om_row = OMRow(
            om_id=tds[0].get_text(),
            om_name=tds[1].get_text(),
            actual_waiting_number=tds[2].get_text(),
            last_update=tds[3].get_text()
        )
        print(om_row)

