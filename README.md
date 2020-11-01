# trnava-covid19-testing-scraper

On the days 31st October and 1nd November 2020 and 7th and 8th November 2020, Slovak citizens undergo Covid-19 antigene testing. Some cities (like Trnava) provide a web page (e.g. https://testovanie.trnava.sk/) that regularly updates numbers of waiting people at testing centres.

This project provides a solution for scraping and outputting (to database, to stdout or whatever else that you implement) these data. By default, the project scrapes the testing centres from https://testovanie.trnava.sk/ and saves them into a local PostgreSQL database.

In order to make the project running correctly, you have to run a PostgreSQL database instance and set a correct configuration for that. You have to run a create script for creating the table for storing the data. To get some meaningful data, you have to schedule to run the `main.py` script regularly (find attached cron in schedule.conf).
