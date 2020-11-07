sudo docker pull postgres:10.12

sudo docker run --name postgres_trnava-covid-testing -e POSTGRES_PASSWORD=abcd123 -d postgres:10.12

sudo docker exec -it postgres_trnava-covid-testing bash

/usr/bin/psql -U postgres postgres