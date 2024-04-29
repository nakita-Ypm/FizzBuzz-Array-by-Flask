from flask import Flask
from handler import ping_handler
from handler import fizzbuzz_handler

def init():
    app = Flask(__name__)
    apply_handlers(app)
    return app

def apply_handlers(app):
    ping_handler.apply(app)
    fizzbuzz_handler.apply(app)
    return app