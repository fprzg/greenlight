-- Create a new user (replace 'username' and 'password' with the desired values)
CREATE USER greenlight WITH PASSWORD 'pa55w0rd';

-- Create a new database (replace 'dbname' with the desired database name)
CREATE DATABASE greenlight OWNER greenlight;

-- Connect to the new database to grant permissions
\c greenlight

-- Grant specific privileges to the user
GRANT USAGE ON SCHEMA public TO greenlight;
-- GRANT CREATE, DELETE ON ALL TABLES IN SCHEMA public TO greenlight;

-- Grant the same privileges on tables created in the future
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT CREATE, DELETE ON TABLES TO greenlight;