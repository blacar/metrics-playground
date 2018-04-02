#!/bin/bash

docker-compose up -d
echo "Waiting for 10 seconds..."
sleep 10

#Configure Grafana
curl -vvvv --user admin:admin -H 'Content-Type: application/json' --data @config/dataSource.json http://localhost:3000/api/datasources
curl -vvvv --user admin:admin -H 'Content-Type: application/json' --data @config/server_dashboard.json http://localhost:3000/api/dashboards/db
curl -vvvv --user admin:admin -H 'Content-Type: application/json' --data @config/people_dashboard.json http://localhost:3000/api/dashboards/db
curl -vvvv --user admin:admin -H 'Content-Type: application/json' --data @config/actuator_dashboard.json http://localhost:3000/api/dashboards/db
