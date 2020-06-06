from flask import Flask, request
import time, os
app = Flask(__name__)
@app.route("/")
def hello():
    time.sleep(.05)
    return "Hello CSCI 5980!\n"
if __name__ == "__main__":
    app.run(port=5000, threaded=False)
# host= '0.0.0.0'
