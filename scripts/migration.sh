#! /bin/bash

migrate -path=./migrations -database=$GREENLIGHT_DB_DSN up
#migrate -path=./migrations -database=$GREENLIGHT_DB_DSN down

#migrate -path=./migrations -database=$GREENLIGHT_DB_DSN goto 1
#migrate -path=./migrations -database=$GREENLIGHT_DB_DSN down 1

#migrate -path=./migrations -database=$GREENLIGHT_DB_DSN force 1
