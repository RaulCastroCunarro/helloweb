package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.ipartek.formacion.controller.filter.SeguridadFilter;
import com.ipartek.formacion.model.pojo.Usuario;

/**
 * Servlet implementation class DeportesController
 */
@WebServlet("/deportes")
public class DeportesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static Logger LOG = Logger.getLogger(DeportesController.class);
	
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
		
		String mensaje = "";

		// recibir datos del form
		String nombre = request.getParameter("nombre");
		String sexo = request.getHeader("sexo");
		String email = request.getParameter("email");
		String deportes[] = request.getParameterValues("deportes");
		
		try {
			if (nombre != null && email != null && deportes != null) {
				
				if(deportes.length >= 3) {
					//Pasar los datos
					request.setAttribute("nombre", nombre);
					request.setAttribute("email", email);
					request.setAttribute("deportes", deportes);
					request.setAttribute("sexo", sexo);

				}else {
					mensaje = "Selecciona 3 o más deportes";
				}
				
			}else {
				mensaje = "Debes rellerar todos los campos y elegir al menos 3 deportes.";
			}
			
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("/ejemplos/rr/formularios/deportes-result.jsp").forward(request, response);
		}catch (Exception e) {
			LOG.error(e);
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
