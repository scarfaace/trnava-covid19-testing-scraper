class PostgresOutputter:

    postgres_insert_query = """ INSERT INTO odberove_miesto (om_id, om_name, actual_waiting_number, last_update, db_insert_time) VALUES (%s,%s,%s,%s,%s)"""

    def __init__(self, connection):
        self.connection = connection
        self.cursor = self.connection.cursor()

    def output(self, record_to_insert):
        self.cursor.execute(self.postgres_insert_query, record_to_insert)
        self.connection.commit()
