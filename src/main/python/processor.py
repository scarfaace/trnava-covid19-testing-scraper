from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

from model import OMEntry


'''
This class serves as a getter for the set of all testing places.
It returns the set of all testing places (e.g. <tr> tags).
'''
class TrnavaBeautifulSoupWrapper:
    url = 'https://testovanie.trnava.sk/'

    @classmethod
    def get_html_elements_for_testing_places(cls):
        browser = webdriver.Firefox(
            executable_path='resources/driver/geckodriver-firefox',
            firefox_options=cls.__get_browser_options()
        )
        browser.get(cls.url)
        soup = BeautifulSoup(browser.page_source, 'html.parser')
        trs_testing_places = soup.find(id='OM').find('tbody').find_all('tr')
        return trs_testing_places

    @classmethod
    def __get_browser_options(cls):
        firefox_options = Options()
        firefox_options.add_argument("--headless")
        return firefox_options


'''
This class serves as an attribute extractor for an html element
representing a testing place (e.g. <tr>). Such element usually contains
other inner elements (e.g. <td>) which represent attributes of the
testing place.
'''
class TrnavaTestingPlaceAttributesExtractor:
    @classmethod
    def extract_attributes(cls, testing_place_html_element):
        tds = testing_place_html_element.find_all('td')
        return OMEntry(
            om_id=tds[0].get_text(),
            om_name=tds[1].get_text(),
            actual_waiting_number=tds[2].get_text(),
            last_update=tds[3].get_text()
        )
