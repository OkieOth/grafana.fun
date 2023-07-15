A really basic docker-compose based stack. It only contains a job to monitor Prometheus itself.

# Usage
The started stack expose Grafana UI to localhost:3000

* init user: `admin`
* init password: `admin`

The prometheus UI is listening on localhost:9090


```bash
# starting the stack
./bin/docker-compose.sh start

```

# Reload Prometheus configuration

Prometheus can reload its configuration at runtime. If the new configuration is not well-formed, the changes will not be applied. A configuration reload is triggered by sending a SIGHUP to the Prometheus process or sending a HTTP POST request to the /-/reload endpoint (when the --web.enable-lifecycle flag is enabled). This will also reload any configured rule files.

[Source](https://prometheus.io/docs/prometheus/latest/configuration/configuration)

