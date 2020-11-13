// SCRIPT PARA HACER CONSULTAS
//
//MCIC
//
//Mauricio Gonzalez Buitrago

function doFunction() {
	var cliente_cc = document.getElementById("cliente").value;
	var url1 = "http://localhost:8080/consulta/" + cliente_cc;
	var url2 = "https://jsonplaceholder.typicode.com/todos";
	var url3 = 'https://swapi.co/api/people/1/';

	fetch(url1)
	.then((response) => response.json())
	.then(data => {
		document.write("<A2>RESULTADO DE LA CONSULTA</A2>" + "<br>");
		document.write("<br>");
		document.write("Se encontraron los siguientes productos ");
		document.write("para el Cliente  " + cliente_cc + ":<br>");
		document.write("Cuenta tipo " + data[0][1] + "<br>");
		document.write("Cuenta número " + data[0][0] + "<br>");
		document.write("Saldo disponible:  $" + data[0][2] + "<br>");
	})
	

}
