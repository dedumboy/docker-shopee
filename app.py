from flask import Flask
from flask import request

app = Flask(__name__)

@app.route("/")
def index():
    ip_address = request.remote_addr
    return "Requester IP: " + ip_address
