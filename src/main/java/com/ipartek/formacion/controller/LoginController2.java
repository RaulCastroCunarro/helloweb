package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipartek.formacion.model.pojo.Usuario;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/login2")
public class LoginController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ADMIN = "admin";

	private Usuario usuario;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController2() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// listar perros

		request.setAttribute("usuario", usuario);
		request.getRequestDispatcher("/ejemplos/rr/login/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String vista = "";
		
		// recibir datos del form

		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		boolean correcto = false;

		if (ADMIN.equalsIgnoreCase(usuario)) {

			if (ADMIN.equalsIgnoreCase(password)) {

				// crear usuario
				Usuario usu = new Usuario();
				usu.setNombre(usuario);
				usu.setPassword(password);
				usu.setGithub("https://github.com/RaulCastroCunarro");
				usu.setImagen("https://storage.needpix.com/rsynced_images/user-310807_1280.png");
				
				// recuperar la sesion del browser
				HttpSession session = request.getSession();
				session.setAttribute("usuario", usu);
				session.setAttribute("usuarioLogeado", usu.getNombre());
				session.setMaxInactiveInterval(-1);
				correcto = true;
				
				//request.setAttribute("mensaje", mensaje);
				//vista = "private/home";
				String base = request.getContextPath();
				response.sendRedirect( base + "/private/home");
			}
		}
		if (correcto == false) {
			request.setAttribute("mensaje", "Credenciales Incorrectas, por favor prueba de nuevo");
			vista = "ejemplos/rr/login/login.jsp";
			request.getRequestDispatcher(vista).forward(request, response);
		}
	}

}