#! /bin/bash

BODY='{"title":"Black Panther","year":2018,"runtime":"134 mins","genres":["action","adventure"]}'
curl -d "$BODY" localhost:4000/v1/movies

BODY='{"title":"Deadpool","year":2016, "runtime":"108 mins","genres":["action","comedy"]}'
curl -d "$BODY" localhost:4000/v1/movies

BODY='{"title":"The Breakfast Club","year":1986, "runtime":"96 mins","genres":["drama"]}'
curl -d "$BODY" localhost:4000/v1/movies
