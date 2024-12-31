#! /bin/bash

curl -w '\nTime %{time_total}s \n' localhost:4000/v1/movies/1
