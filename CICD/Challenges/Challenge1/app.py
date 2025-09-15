from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return f'Hello, World!'

@app.route('/count')
def counter():
    # Check if counter exists, create if it does not exist
    if db.exists('counter') == False:
        db.set ('counter', 1)
    else:
        db.incr('counter', 1)

    count=db.get('counter')

    return f'Hello, World! This site has had {count} visits.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)