# Greenlight

## Database configuration

sudo -u postgres psql
`
SELECT current_user; # shows the current user (it should be postgres).
CREATE DATABASE greenlight;
CREATE ROLE greenlight WITH LOGIN PASSWORD 'the_password';
CREATE EXTENSION IF NOT EXISTS citext;
`

psql --host=localhost --db=greenlight --user=greenlight
`write the password`
`
SELECT current_user; # shows the current user (it should be greenlight).
`
sudo -u postgres psql -c "SHOW config_file;"
