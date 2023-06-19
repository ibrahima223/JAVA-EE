<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Login</title>
		<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet"/>
		<link rel="stylesheet" href="css/form.css" />
	</head>
    <body>
		<div class="container">
			<span class="form__title">Connexion</span>
				<c:if test="${param.error eq 'true'}">
       			 	<p style="color: red;">Identifiants invalides. Veuillez réessayer.</p>
   			 	</c:if>
			<form class="form" action="login" method="post">

				<div class="form__group">
					<i class="ri-mail-line form__icon"></i>
					<input type="text" name="email" placeholder="Email" required class="form__input" />
					<span class="form__bar"></span>
				</div>
				<div class="form__group">
					<i class="ri-lock-line form__icon"></i>
					<input type="password" name="motdepasse" placeholder="Mot de Passe" required class="form__input"/>
					<span class="form__bar"></span>
				</div>
				<button type="submit" class="form__button">Se connecter</button>
				<p class="form__switch">
					Si vous n'avez pas de compte? <a href="Inscrire.jsp">Inscription</a>
					
			</form>
		</div>
	</body>
</html>
