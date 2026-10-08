#!/bin/sh
# The REST API logs in the seeded test user (MongoDB) and returns a JWT.
curl -fsS -X POST -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'username=test&password=test' http://web/api/v2/login | grep -q '"token"'
