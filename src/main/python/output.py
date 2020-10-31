import psycopg2


class PostgresOutputter:

    postgres_insert_query = """ INSERT INTO odberove_miesto (om_id, om_name, actual_waiting_number, last_update, db_insert_time) VALUES (%s,%s,%s,%s,%s)"""

    def __init__(self):
        self.connection = psycopg2.connect(
            user="postgres",
            password="abcd123",
            host="localhost",
            port="5432",
            database="postgres"
        )
        self.cursor = self.connection.cursor()

    def output(self, record_to_insert):
        self.cursor.execute(self.postgres_insert_query, record_to_insert)
        self.connection.commit()
