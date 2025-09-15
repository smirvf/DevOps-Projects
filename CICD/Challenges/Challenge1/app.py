from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return f'Hello, World! This is a placeholder text to test my CICD Code'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)

# Placeholder text to allow challenge-ci.yaml to run