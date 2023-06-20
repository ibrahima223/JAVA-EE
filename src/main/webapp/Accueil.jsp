<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Accueil - Kalanso Space</title>
  <link rel="stylesheet" href="css/menu1.css">
  <link rel="stylesheet" href="css/navbar.css">
  <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
</head>

<body>
  <!-- Barre de navigation -->
        <nav>
            <div class="logo">
                <img src="img/Rectangle.png" alt="">
                <h3>Kalanso Space</h3>
            </div>

            <ul>
                <li><a href="#">Accueil</a></li>
                <li><a href="#">A propos</a></li>
                <li><a href="#">Service</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            
            
		  <!-- Footer -->
		  <%-- <div class="footer_btn">
		    <form class="divbtn" method="post" action="${pageContext.request.contextPath}/deconnexion">
		        <button class="btn" type="submit" >Déconnecter</button>
		    </form>
		  </div> --%>
		  
		  <div class="divbtn">
		  	<a href="${pageContext.request.contextPath}/Login.jsp"><button class="btn" type="submit" >Déconnecter</button></a>
		  </div>

            <div class="toggle">
                <i class="ri-menu-line"></i>
            </div>
        </nav>

  <!-- En-tête -->
  <div class="header">
    <img src="img/Rectangle 1.png" alt="Logo Kalanso Space" width="200">
    <h1>Bienvenue sur le site officiel Kalanso Space</h1>
  </div>
<h1 style="text-align: center">Salut, ${utilisateur.getPrenom()} ${utilisateur.getNom()} !</h1>
  <!-- Liste des apprenants inscrits -->
  <h2>Liste des apprenants inscrits</h2>
  <section class="table_container">
   <table>
        <thead>
	        <tr>
	            <th>Nom</th>
	            <th>Prénom</th>
	            <th>Pseudo</th>
	            <th>Email</th>
	        </tr>
        </thead>
        <c:forEach var="utilisateur" items="${listUtilisateur}">
        
        <tbody>
            <tr>
                <td>${utilisateur.nom}</td>
                <td>${utilisateur.prenom}</td>
                <td>${utilisateur.pseudo}</td>
                <td>${utilisateur.email}</td>
            </tr>
        </tbody>
        </c:forEach>
    </table>

  </section>
</body>
</html>
