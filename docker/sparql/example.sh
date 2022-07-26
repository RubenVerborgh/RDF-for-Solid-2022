#!/usr/bin/env bash

# Build the SPARQL endpoint container
./build

# Start the SPARQL endpoint in the background
# IMPORTANT: Restart after any change to any Turtle file
./start *.ttl &

# Give the SPARQL endpoint some time to start
sleep 2

# Now execute some queries (both are equivalent)
curl http://localhost:3000/dataset/sparql?query=$(./urlencode "$(cat example.sparql)")
curl http://localhost:3000/dataset/sparql -G --data-urlencode query@example.sparql

# Stop the container
./stop
# In an interactive shell, you can just do:
# kill %
