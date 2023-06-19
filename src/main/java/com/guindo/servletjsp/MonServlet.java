package com.guindo.servletjsp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.guindo.beans.Utilisateur;

@WebServlet("/inscription")
public class MonServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Utilisateur> utilisateursInscrits;

    @Override
    public void init() throws ServletException {
        utilisateursInscrits = new ArrayList<>();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String pseudo = request.getParameter("pseudo");
        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motdepasse");
        String motDePasse2 = request.getParameter("motdepasse2");
        
        HttpSession session = request.getSession();
        session.setAttribute(nom, prenom);

        // Vérifier si le mot de passe est répété correctement
      
        if (!motDePasse.equals(motDePasse2)) {
            response.sendRedirect(request.getContextPath() + "/Inscrire.jsp");
            return;
        }

        Utilisateur utilisateur = new Utilisateur(nom, prenom, pseudo, email, motDePasse);
        utilisateursInscrits.add(utilisateur);

        // Ajouter l'utilisateur à la session
        request.getSession().setAttribute("utilisateur", utilisateur);
        // Ajouter la liste des utilisateurs inscrits à l'attribut de la requête
        request.setAttribute("utilisateurs", utilisateursInscrits);

        // Redirection vers la page d'accueil
        request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
    }
}
