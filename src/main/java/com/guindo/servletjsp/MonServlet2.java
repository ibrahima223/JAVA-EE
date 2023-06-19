package com.guindo.servletjsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/deconnexion")
public class MonServlet2 extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	HttpSession session = request.getSession();
        session.removeAttribute("utilisateur");
    	
    	// Supprimer l'utilisateur de la session
        request.getSession().removeAttribute("utilisateur");
        
        // Redirection vers la page de login
        response.sendRedirect(request.getContextPath() + "/Login.jsp");
    }
}







