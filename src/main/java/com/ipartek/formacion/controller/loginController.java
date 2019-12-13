package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/login")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nombre = request.getParameter("usuario");
		String contrasena = request.getParameter("contrasena");
		String idioma = request.getParameter("idioma");
		String recordar = request.getParameter("recordar");

		String bienvenida = "¡Hola!";
		String mensajeSaludo = "Encantados de volver a verte " + nombre + ".";
		String recordarte = "No te recordaremos en tu siguiente visita.";
		boolean correcto = false;

		if ("admin".equalsIgnoreCase(nombre)) {

			if ("admin".equalsIgnoreCase(contrasena)) {
				
				//recuperar la sesion del browser
				HttpSession session = request.getSession();
				session.setAttribute("usuarioLogeado", "Administrador");
				session.setAttribute("idioma", idioma);
				session.setMaxInactiveInterval(25);
				
				switch (idioma) {
				case "Castellano":
					if (recordar != null) {
						recordarte = "Te recordaremos en tus futuras visitas.";
					}
					break;

				case "Euskera":
					bienvenida = "Kaixo!";
					mensajeSaludo = "Atsegina berriro ikustea " + nombre + ".";
					recordarte = "Zure hurrengo bisitan ez zaituzte gogoratuko.";
					if (recordar != null) {
						recordarte = "Zure etorkizuneko bisitetan gogoratuko gara.";
					}
					break;

				case "English":
					bienvenida = "Hello!";
					mensajeSaludo = "We're glad to see you again " + nombre + ".";
					recordarte = "We won't remember you at your next visit.";
					if (recordar != null) {
						recordarte = "We'll remember you en your next visits.";
					}
					break;
				}
				request.setAttribute("bienvenida", bienvenida);
				request.setAttribute("mensajeSaludo", mensajeSaludo);
				request.setAttribute("recordarte", recordarte);
				request.getRequestDispatcher("/ejemplos/jsp/login/login-exito.jsp").forward(request, response);
				correcto = true;
			}
		}
		if (correcto == false) {
			request.setAttribute("mensaje", "Usuario o Contraseña incorrectos.");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}


