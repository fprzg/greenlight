#BODY='{ "title": "Moana", "runtime": 107, "genres": [ "animation", "adventure" ] }'
#curl -i -d "$BODY" localhost:4000/v1/movies


# Send some XML as the request body
curl -d '<?xml version="1.0" encoding="UTF-8"?><note><to>Alex</to></note>' localhost:4000/v1/movies
#{
#"error": "body contains badly-formed JSON (at character 1)"
#}

# Send some malformed JSON (notice the trailing comma)
curl -d '{"title": "Moana", }' localhost:4000/v1/movies
#{
#"error": "body contains badly-formed JSON (at character 20)"
#}

# Send a JSON array instead of an object
curl -d '["foo", "bar"]' localhost:4000/v1/movies
#{
#"error": "body contains incorrect JSON type (at character 1)"
#}
# Send a numeric 'title' value (instead of string)

curl -d '{"title": 123}' localhost:4000/v1/movies
#{
#"error": "body contains incorrect JSON type for \"title\""
#}

# Send an empty request body
curl -X POST localhost:4000/v1/movies
#{
#"error": "body must not be empty"
#}

curl -d '{"title": "Moana", "rating":"PG"}' localhost:4000/v1/movies
#{
#"error": "body contains unknown key \"rating\""
#}

curl -d '{"title": "Moana"}{"title": "Top Gun"}' localhost:4000/v1/movies
#{
#"error": "body must only contain a single JSON value"
#}

curl -d '{"title": "Moana"} :~()' localhost:4000/v1/movies
#{
#"error": "body must only contain a single JSON value"
#}

curl -d '{"title": "Moana", "runtime": "107 mins"}' localhost:4000/v1/movies
#{
#"error": "body contains incorrect JSON type for \"runtime\""
#}



# wget -O /tmp/largefile.json https://www.alexedwards.net/static/largefile.json

curl -d @/tmp/largefile.json localhost:4000/v1/movies
#{
#"error": "body must not be larger than 1048576 bytes"
#}
