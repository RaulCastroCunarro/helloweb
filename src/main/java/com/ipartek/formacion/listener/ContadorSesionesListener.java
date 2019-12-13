package com.ipartek.formacion.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import org.apache.log4j.Logger;

/**
 * Application Lifecycle Listener implementation class ContadorSesionesListener
 *
 */
@WebListener
public class ContadorSesionesListener implements HttpSessionAttributeListener {

	private final static Logger LOG = Logger.getLogger(AppListener.class);

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent event) {
		LOG.debug("attributeAdded " + event.getName() + ": " + event.getValue());

		// recuperardel ambito session los usuarios y añadir el nuevo usuario
		// ServletContext == applicationScope en la JSP
		ServletContext sc = event.getSession().getServletContext();
		if (event.getName() == "usuario") {
			int numeroUsuarios = (int) sc.getAttribute("numeroUsuariosConectados");
			numeroUsuarios++;
			sc.setAttribute("numeroUsuariosConectados", numeroUsuarios);
		}

	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent event) {
		LOG.debug("attributeRemoved" + event.getName() + ": " + event.getValue());

		// recuperardel ambito session los usuarios y añadir el nuevo usuario
		// ServletContext == applicationScope en la JSP
		ServletContext sc = event.getSession().getServletContext();
		if (event.getName() == "usuario") {
			int numeroUsuarios = (int) sc.getAttribute("numeroUsuariosConectados");
			numeroUsuarios--;
			sc.setAttribute("numeroUsuariosConectados", numeroUsuarios);
		}
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent event) {
		LOG.debug("attributeReplaced" + event.getName() + ": " + event.getValue());

	}

}
