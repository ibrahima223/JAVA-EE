<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/menu1.css">
  <title>Accueil - Kalanso Space</title>
</head>

<body>
  <!-- Barre de navigation -->
  <div class="navbar">
    <ul>
      <li><a href="#">Accueil</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </div>

  <!-- En-tête -->
  <div class="header">
    <img src="img/Rectangle 1.png" alt="Logo Kalanso Space" width="200">
    <h1>Bienvenue sur le site officiel Kalanso Space</h1>
  </div>
<h1>Salut, ${utilisateur.prenom} ${utilisateur.nom} !</h1>
  <!-- Liste des apprenants inscrits -->
  <h2>Liste des apprenants inscrits</h2>
   <table>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Pseudo</th>
            <th>Email</th>
        </tr>
        <c:forEach var="utilisateur" items="${utilisateurs}">
            <tr>
                <td>${utilisateur.nom}</td>
                <td>${utilisateur.prenom}</td>
                <td>${utilisateur.pseudo}</td>
                <td>${utilisateur.email}</td>
            </tr>
        </c:forEach>
    </table>

  <!-- Footer -->
  <div class="footer">
    <form method="post" action="${pageContext.request.contextPath}/deconnexion">
        <input type="submit" value="Déconnecter">
    </form>
  </div>
</body>
</html>
