#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER replicador WITH LOGIN REPLICATION PASSWORD 'replicador';
    CREATE DATABASE cloud;
    GRANT ALL PRIVILEGES ON DATABASE cloud TO replicador;
EOSQL