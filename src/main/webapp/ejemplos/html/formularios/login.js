function mostrarTexto() {
	console.trace('click boton ver');
	let iContrasenya = document.getElementById('contrasenya');
	if (iContrasenya.type != "text") {
		iContrasenya.type = "text";
		event.target.innerHTML = 'Ocultar';
	} else {
		iContrasenya.type = "password";
		event.target.innerHTML = 'Ver';
	}
	event.preventDefault();
}