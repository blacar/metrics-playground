# metrics-playground

Trying out [Prometheus](https://prometheus.io), an open-source monitoring solution; and [Grafana](https://grafana.net), an open-source metrics visualization tool.

This project was heavily influenced by [AlphaHydrae prometheus-experiments](https://github.com/AlphaHydrae/prometheus-experiments) although there are significant differences in the techonology stack, and approach.

This demo will:

* Run an instance of Prometheus (exposed on port 9090)
* Run a Grafana instance (exposed on port 3000) and configure Prometheus datasource
* Run a spring-boot based HTTP API instrumented with [Micrometer](https://micrometer.io/docs/concepts) exposing metrics in Prometheus expected format
* Run a dummy client to run a GET request to the API each second

## Usage

Use init.sh script to build and run the entire stack. Note this could take some time.

* Visit [http://localhost:3000](http://localhost:3000) to see Grafana (log in with username `admin` and password `admin`)
* Visit [http://localhost:9090](http://localhost:9090) to see the Prometheus backend
* Visit [http://localhost:8080/actuator/prometheus](http://localhost:8080/actuator/prometheus) to see the Prometheus formatted metrics.

Use stop.sh to down and clean all elements from the stack

## NOTES:

This project has been developed with the only purpose of providing an environment where to experiment with Grafana and Prometheus.

HTTP API was developed with spring-boot 2.0 including actuator dependency

Micrometer metrics has been configured to expose Histogram type metrics to prometheus measuring latency on /api/people endpoint.

/api/people endpoint does nothing but sleep a random amount of time between 100 and 1000 ms and return the number of ms the thread as slept.
