package com.guindo.servletjsp;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.guindo.beans.Utilisateur;

/**
 * Servlet implementation class MonServlet3
 */
@WebServlet("/MonServlet3")
public class MonServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MonServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String motdepasse = request.getParameter("motdepasse");
		HttpSession session = request.getSession();
		Utilisateur user = new Utilisateur();
		List<Utilisateur> utilisateursInscrits = (List<Utilisateur>) session.getAttribute("listUtilisateur");
		
		for(Utilisateur value: utilisateursInscrits) {
			if(value.getEmail().equals(email) && value.getMotDePasse().equals(motdepasse)) {
				user.setPrenom(value.getPrenom());
				user.setNom(value.getNom());
				user.setPseudo(value.getPseudo());
				user.setEmail(value.getEmail());
				user.setMotDePasse(value.getMotDePasse());
				
				session.setAttribute("utilisateur", user);
				 // Redirection vers la page d'accueil
		        request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
			}
			else {
				 // Redirection vers la page login
		        request.getRequestDispatcher("/Login.jsp").forward(request, response);
			}
		}
		
		
	}

}
