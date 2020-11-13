#APLICACIÓN CONSIGNACION:
#
#Entrega la información de cuentas con la cedula del cliente como entrada.
#
#
#
from flask import Flask
from datetime import datetime
import pymysql

app = Flask(__name__)

#consignacion es transaccion # 1
@app.route("/consignacion/<int:cuenta>/<int:monto>")
def consignacion(cuenta, monto):
    plata = 0
    miConexion = pymysql.connect( host='mysql', user= 'root', passwd='secret', port=3306, db='banco')
    cur = miConexion.cursor()
    cur.execute( "SELECT cuenta_monto FROM cuentas WHERE cuenta_id=" + str(cuenta))
    for montouno in cur.fetchall() :
        plata = montouno[0] + monto
        miConexion.close()   
             
    miConexion = pymysql.connect( host='mysql', user= 'root', passwd='secret', port=3306, db='banco')
    cur = miConexion.cursor()
    cur.execute( "UPDATE cuentas SET cuenta_monto = " + str(plata) + " WHERE cuenta_id = " + str(cuenta))
    miConexion.commit()
    miConexion.close()
    
    return str(plata)
        
if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)