from flask import Flask
from datetime import datetime
import pymysql

app = Flask(__name__)

#escribir en el log transaccional
@app.route("/log/<int:tipo>/<int:monto>/<int:cliente>/<int:cuenta>")
def log(tipo, monto, cliente, cuenta):
    plata = 0
    #ESCRIBIR EN EL LOG
    miConexion = pymysql.connect( host='mysql', user= 'root', passwd='secret', port=3306, db='banco')
    cur = miConexion.cursor()
    if tipo == 1:
        #escribir tipo 1 = Consignacion
        cur.execute( "INSERT INTO transacciones (tx_tipo, tx_monto, cuenta_id) VALUES (1," + str(monto) + ", " + str(cuenta) + ")")
    elif tipo == 2:
        #escribir tipo 2 = Consulta
        cur.execute( "INSERT INTO transacciones (tx_tipo, cliente_cc) VALUES (2," + str(cliente) + ")")
    miConexion.commit()
    miConexion.close()
    
    return ("registro operacion tipo " + str(tipo))
        
if __name__ == "__main__":
    app.run(host='0.0.0.0',debug=True)