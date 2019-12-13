//Comentario de linea

/*  Comentario
    de 
    bloque 
*/

/**
 * Comentario de bloque para documentar
 

 console.trace('Esto es una traza de log');
 console.info('para informar de cosas');
 var a = 2;
 console.debug('la variable a = ' + a);
 console.warn('houston tenemos un problema');
 console.error('Error en la conoxion al servidor rest');*/

function buscarVoluntario() {
    
    console.trace('click');

    var alumnos = [
        'Mikel', 
        'Joseba', 
        'Raul', 
        'Erlantz', 
        'Cristian', 
        'Ana', 
        'Alejandro', 
        'Maria', 
        'Juancarlos', 
        'Kiryl', 
        'Inigo', 
        'Endika', 
        'Iker', 
        'Aitor'
    ]
    
    for (var i = 0; i < 14; i++){
        var nombreEl2 = document.getElementById(alumnos[i]);
        nombreEl2.className = "p-2";
    }

    var rnd = Math.floor(Math.random() * 13);
    console.log('Random: ' + rnd);
    var nombreEl = document.getElementById(alumnos[rnd]);
    nombreEl.className = "p-2 glowbox";
}

function saludar(){
    var nombreEl = document.getElementById("label");
    nombreEl.innerHTML = "¡¡Hola Mundo!!";
}

function myFunction() {
	var nav = document.getElementById("nav");
	if (nav.style.display == "block") {
		nav.style.display = "none";
	}else{
		nav.style.display = "block"
	}
	event.preventDefault();
}