CREATE DATABASE ocpizza;

CREATE USER ocpizza WITH PASSWORD '0+0=LaTeteàT0t0';

ALTER ROLE ocpizza SET client_encoding TO 'utf8';

ALTER ROLE ocpizza SET default_transaction_isolation TO 'read committed';

ALTER ROLE ocpizza SET timezone TO 'Europe/Paris';

GRANT ALL PRIVILEGES ON DATABASE ocpizza TO ocpizza;
