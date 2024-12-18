# Greenlight

## Database configuration
Run `sudo -u postgres psql`, then
```[sql]
SELECT current_user; # shows the current user (it should be postgres).
CREATE DATABASE greenlight;
CREATE ROLE greenlight WITH LOGIN PASSWORD 'the_password';
CREATE EXTENSION IF NOT EXISTS citext;
```
Login to database using user: `psql --host=localhost --db=greenlight --user=greenlight`.

Show config file: `sudo -u postgres psql -c "SHOW config_file;`.
