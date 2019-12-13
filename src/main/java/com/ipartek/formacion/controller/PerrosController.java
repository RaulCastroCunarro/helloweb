package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.ipartek.formacion.model.pojo.Perro;

/**
 * Servlet implementation class PerrosController
 */
@WebServlet("/perros")
public class PerrosController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private final static Logger LOG = Logger.getLogger(PerrosController.class);
	private int indice = 0;

	private String mensaje = "";

	private ArrayList<Perro> perros = new ArrayList<Perro>();

	/*
	 * public PerrosController() { super();
	 * 
	 * }
	 */

	@Override
	public void init(ServletConfig config) throws ServletException {
		LOG.trace("Se ejecuta la 1ª vez que se llama a este servlet y nunca mas");
		super.init(config);
		perros.add(new Perro(1, "Bubba"));
		perros.add(new Perro(2, "Rataplan"));
		perros.add(new Perro(3, "Mosca"));
		perros.add(new Perro(4, "Txakur"));
		perros.add(new Perro(5, "Lagun"));
		indice = 6;
	}

	public void destroy() {

		LOG.trace("Se ejecuta solo una vez cuando se para el servidor de Aplicaciones");
		super.destroy();
		perros = null;
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LOG.trace("Se ejecuta antes del doGet o doPost");

		mensaje = "";

		super.service(request, response); // ejecuta doGet o doPost

		LOG.trace("Se ejecuta despues del doGet o doPost");

		request.setAttribute("mensaje", mensaje);
		request.setAttribute("perros", perros);
		request.getRequestDispatcher("/ejemplos/rr/perros/perros.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LOG.trace("doGet");
		int id = (request.getParameter("id") == null) ? 0 : Integer.parseInt(request.getParameter("id"));
		String accion = request.getParameter("accion");

		LOG.debug("id=" + id + " accion=" + accion);

		if (id > 0) {
			// buscar perro en array
			Perro perro = null;
			for (Perro p : perros) {
				if (p.getId() == id) {
					perro = p;
					break;
				}
			}

			switch (accion) {
				case "adoptar":
					perros.remove(perro);
					mensaje = "Y has adoptado al perro";
					break;

				case "editar":
					request.setAttribute("perroEditar", perro);
					break;
			}
		} else {
			LOG.info("Solo listar Perros");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		LOG.trace("doPost");
		
		// recibir datos del form

		int id = Integer.parseInt(request.getParameter("id"));
		String nombre = request.getParameter("nombre");
		String imagen = request.getParameter("imagen");

		// TODO validar parametros

		if (id > 0) {
			LOG.trace("Modificar el perro");
			Perro perro = null;
			for (Perro p : perros) {
				if (p.getId() == id) {
					perro = p;
					break;
				}
			}
			
			perro.setId(id);
			perro.setNombre(nombre);
			perro.setFoto(imagen);
			
			mensaje = "Perro modificado con exito";
			
		} else {
			LOG.trace("Crear nuevo perro");
			Perro p = new Perro();
			p.setNombre(nombre);
			p.setFoto(imagen);
			p.setId(indice);
			indice++;

			mensaje = "Nuevo Perro inscrito";

			// guardar en lista
			perros.add(p);
		}
	}

}