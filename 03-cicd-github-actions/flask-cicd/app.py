from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <h1>🚀 CI/CD Pipeline — aabhidevops</h1>
    <p>Auto deployed via GitHub Actions!</p>
    '''

@app.route('/health')
def health():
    return {"status": "healthy", "pipeline": "github-actions"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)