from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <h1>🚀 Abhi's DevOps Portfolio</h1>
    <p>Dockerized Flask App — Built by aabhidevops</p>
    '''

@app.route('/health')
def health():
    return {"status": "healthy", "version": "1.0"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)