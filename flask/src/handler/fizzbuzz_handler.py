from flask import request
from domain import fizzbuzz_domain

def apply(app):
    @app.route("/fizzbuzz", methods=["GET"])
    def fizzbuzz():
        num = request.args.get("num")
        if num is None:
            num = 100
        res = fizzbuzz_domain.fizzbuzz(int(num))
        return res