#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER haris WITH PASSWORD 'barucija';
    CREATE DATABASE harisdb;
    GRANT ALL PRIVILEGES ON DATABASE harisdb TO haris;
EOSQL