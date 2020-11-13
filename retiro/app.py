from flask import Flask

app = Flask(__name__)

@app.route("/retiro/<int:cuenta>/<int:monto>")
def retiro(cuenta, monto):
    return str(cuenta * monto)

if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)