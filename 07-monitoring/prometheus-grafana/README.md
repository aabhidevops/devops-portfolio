# 07 - Monitoring with Prometheus & Grafana

## Project: Full Monitoring Stack

Real-time monitoring of Flask app using Prometheus and Grafana.

## Stack
- Prometheus — metrics collection
- Grafana — visualization dashboard
- Flask app — instrumented with prometheus-flask-exporter

## Access
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000 (admin/admin123)
- Flask app: http://localhost:5001

## Key Metrics
- flask_http_request_total
- flask_http_request_duration_seconds
- process_cpu_seconds_total

## Run
```bash
docker compose up -d
```

## Skills Demonstrated
- Prometheus metrics scraping
- Grafana dashboard creation
- Docker Compose multi-service setup
- Application instrumentation
