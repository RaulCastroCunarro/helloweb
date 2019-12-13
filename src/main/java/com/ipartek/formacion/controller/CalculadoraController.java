package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/operar")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		if (nombre == null) {
			nombre = "Eres un soso, dime tu nombre";
		}
		PrintWriter out = response.getWriter();
		out.print("<h1>Saludo Controller</h1>");
		out.print("Kaixo " + nombre);
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String numS1 = "";
		String numS2 = "";
		String resultado = "";
		String mensaje = null;
		String op = "";

		try {
			op = request.getParameter("op");
			numS1 = request.getParameter("op1");
			numS2 = request.getParameter("op2");
			
			float num1 = Float.parseFloat(numS1);
			float num2 = Float.parseFloat(numS2);

			switch (op) {
			case "1":
				resultado = Float.toString(num1 + num2);
				break;

			case "2":
				resultado = Float.toString(num1 - num2);
				break;

			case "3":
				resultado = Float.toString(num1 * num2);
				break;

			case "4":
				if (num2 != 0) {
					resultado = Float.toString(num1 / num2);
				}else {
					resultado = "Infinito";
				}
				break;
			}
		} catch (NumberFormatException e) {
			mensaje = "Datos Incorrectos. Por favor usa 2 numeros correctos.";
		}
		request.setAttribute("op", op);
		request.setAttribute("resultado", resultado);
		request.setAttribute("op1", numS1);
		request.setAttribute("op2", numS2);
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher("/ejemplos/jsp/calculadora/resultado.jsp").forward(request, response);
	}

}
