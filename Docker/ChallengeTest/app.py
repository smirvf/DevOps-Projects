from flask import Flask, render_template
import redis

app = Flask(__name__)

#     # Connect to the Redis database
# db = redis.Redis(host='localhost', port=6379, decode_responses=True)

# @app.route('/')
# def hello_world():
#     return render_template("index.html")


# @app.route('/count')
# def counter():


#     # Check if counter exists, create if it does not exist
#     if db.exists('counter') == False:
#         db.set ('counter', 1)
#     else:
#         db.incr('counter', 1)

    # count=db.get('counter')
#     return render_template("count.html", count=count)

# if __name__ == '__main__':
#     app.run(host='0.0.0.0', port=5002)


    # Connect to the Redis database
db = redis.Redis(host='mydb', port=6379)

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