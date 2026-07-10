from flask import Flask, jsonify
from prometheus_flask_exporter import PrometheusMetrics
import os

app = Flask(__name__)
metrics = PrometheusMetrics(app)

APP_VERSION = os.getenv('APP_VERSION', '1.0')
ENVIRONMENT = os.getenv('ENVIRONMENT', 'production')

@app.route('/')
def home():
    return f'''
    <h1>🚀 Abhi's DevOps Pipeline</h1>
    <p>Version: {APP_VERSION}</p>
    <p>Environment: {ENVIRONMENT}</p>
    <p>Built with: Docker + K8s + Terraform + CI/CD + Monitoring</p>
    '''

@app.route('/health')
def health():
    return jsonify({
        "status": "healthy",
        "version": APP_VERSION,
        "environment": ENVIRONMENT
    })

@app.route('/info')
def info():
    return jsonify({
        "app": "DevOps Pipeline Demo",
        "author": "aabhidevops",
        "stack": ["Docker", "Kubernetes", "Terraform", "GitHub Actions", "Prometheus", "Grafana"]
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)