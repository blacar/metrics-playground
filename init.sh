#!/bin/bash

docker-compose up -d
echo "Waiting for 10 seconds..."
sleep 10

#Configure Grafana
curl -vvvv --user admin:admin -X POST -H 'Content-Type: application/json' --data @config/dataSource.json http://localhost:3000/api/datasources
curl -vvvv --user admin:admin -X POST -H 'Content-Type: application/json' --data @config/dashboard.json http://localhost:3000/api/dashboards/db
export DASHBOARD_ID=$(curl --user admin:admin http://localhost:3000/api/dashboards/db/sample-dashboard 2>/dev/null|jq .dashboard.id)
echo "{\\"homeDashboardId\\":${DASHBOARD_ID}}" | curl -s --show-error --user admin:admin -X PUT -H 'Content-Type: application/json' --data @- http://localhost:3000/api/user/preferences
