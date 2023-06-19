<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Formulaire d'inscription</title>
		<link
			href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
			rel="stylesheet"
		/>
		<link rel="stylesheet" href="css/form.css" />
	</head>
	<body>
		<div class="container">
			<span class="form__title">Inscription</span>
			<form class="form" method="post" action="${pageContext.request.contextPath}/inscription">
				<div class="form__group">
					<i class="ri-user-line form__icon"></i>
					<input type="text" name="nom" placeholder="Nom" required class="form__input" />
					<span class="form__bar"></span>
                    
				</div>
                <div class="form__group">
					<i class="ri-user-line form__icon"></i>
					<input type="text" name="prenom" placeholder="Prenom" required class="form__input" />
					<span class="form__bar"></span>
                    
				</div>
                <div class="form__group">
					<i class="ri-user-line form__icon"></i>
					<input type="text" name="pseudo" placeholder="Pseudo" required class="form__input" />
					<span class="form__bar"></span>
                    
				</div>
				<div class="form__group">
					<i class="ri-mail-line form__icon"></i>
					<input type="text" name="email" placeholder="Email" required class="form__input" />
					<span class="form__bar"></span>
				</div>
				<div class="form__group">
					<i class="ri-lock-line form__icon"></i>
					<input type="password"name="motdepasse" placeholder="Mot de Passe" required class="form__input"
					/>
					<span class="form__bar"></span>
				</div>
				<div class="form__group">
					<i class="ri-lock-line form__icon"></i>
					<input type="password" name="motdepasse2" placeholder="Confirmer Mot de Passe" required class="form__input"/>
					<span class="form__bar"></span>
				</div>
				<button type="submit" class="form__button">S'incrire</button>
				<p class="form__switch">
					Si vous avez dejà un compte? <a href="Login.jsp">Connexion</a>
				</p>
			</form>
		</div>
	</body>
</html>