from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__)
metrics = PrometheusMetrics(app)

@app.route('/')
def home():
    return '''
    <h1>🚀 Abhi's DevOps Portfolio</h1>
    <p>Monitored with Prometheus + Grafana!</p>
    '''

@app.route('/health')
def health():
    return {"status": "healthy", "monitoring": "prometheus"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
