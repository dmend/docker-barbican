#! /usr/bin/env bash

docker run -d --name=postgresql -p 5432:5432 postgresql

sleep 5

docker exec -u postgres postgresql psql --command "DO
\$body\$
BEGIN
  IF NOT EXISTS (SELECT * FROM pg_catalog.pg_user WHERE usename = 'keystone') THEN
    CREATE ROLE keystone WITH SUPERUSER PASSWORD 'keystone';
  END IF;
END
\$body\$;"

docker exec -u postgres postgresql createdb -O keystone keystone

docker exec -u postgres postgresql psql --command "DO
\$body\$
BEGIN
  IF NOT EXISTS (SELECT * FROM pg_catalog.pg_user WHERE usename = 'barbican') THEN
    CREATE ROLE barbican WITH SUPERUSER PASSWORD 'barbican';
  END IF;
END
\$body\$;"

docker exec -u postgres postgresql createdb -O barbican barbican
