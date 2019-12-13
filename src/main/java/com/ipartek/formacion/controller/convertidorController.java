package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class convertidor
 */
@WebServlet("/convertir")
public class convertidorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static double METROS_PIES = 3.28084;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public convertidorController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String metros = "";
		String pies = "";
		String mensaje = null;
		String unidad = " m";
	
		try {
			metros = request.getParameter("numeral");
			
			float metros1 = Float.parseFloat(metros);
			pies = Double.toString(metros1*METROS_PIES);
			unidad = " '";
		} catch (NumberFormatException e) {
			mensaje = "Datos Incorrectos. Por favor usa un numero correcto para los metros.";
			
		}
		
		request.setAttribute("numeral", pies);
		request.setAttribute("unidad", unidad);
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher("/ejemplos/jsp/conversor/conversor.jsp").forward(request, response);
	}

}
