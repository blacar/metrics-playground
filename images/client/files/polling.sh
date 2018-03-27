#!/bin/bash
while sleep 1; do curl -X GET http://dataproducer:8080/api/people; done
