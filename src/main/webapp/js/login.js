/*function mostrarTexto() {
	console.trace('click oton ver');
	let iContrasenya = document.getElementById('contrasenya');
	if (iContrasenya.type != "text") {
		iContrasenya.type = "text";
		event.target.innerHTML = 'Ocultar';
	} else {
		iContrasenya.type = "password";
		event.target.innerHTML = 'Ver';
	}
	event.preventDefault();
}*/

function mostrarTexto() {
	let iContrasenya = document.getElementById('contrasena');
	let ocultar = document.getElementById('ocultar');
	iContrasenya.type = "text";
	ocultar.display = "inline-block";
	event.target.display = "none";
	event.preventDefault();
}

function ocultarTexto() {
	let iContrasenya = document.getElementById('contrasena');
	let mostrar = document.getElementById('mostrar');
	iContrasenya.type = "password";
	mostrar.display = "inline-block";
	event.target.display = "none";
	event.preventDefault();
}