#! /bin/sh

curl -i -X PATCH -d '{"runtime": "97 mins"}' "localhost:4000/v1/movies/4" & \
curl -i -X PATCH -d '{"genres": ["comedy","drama"]}' "localhost:4000/v1/movies/4" &
