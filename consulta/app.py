#APLICACIÓN CONSULTA:
#
#Entrega la información de cuentas con la cedula del cliente como entrada.
#
#El ID de operación es 2
#
from flask import Flask, render_template, request, redirect, url_for, flash
from datetime import datetime
from flask.wrappers import Request
import pymysql
import json

app = Flask(__name__)

@app.route('/consulta/<int:cliente>', methods = ['POST', 'GET'])
def consulta(cliente):
    miConexion = pymysql.connect( host='mysql', user= 'root', passwd='secret', port=3306, db='banco')
    cur = miConexion.cursor()
    cur.execute( "SELECT cuenta_id, cuenta_tip, cuenta_monto FROM cuentas WHERE cliente_cc=" + str(cliente))
    monto = cur.fetchall()
    miConexion.close()

    Y = json.dumps(monto)
    return(Y)
    #return str(monto)
    #return render_template('output.html', contact = monto[0])
    
if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)