<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./styllers/login.css">
<title>Curso JSP</title>
</head>
<body>
	
	<h1 class="saudacao">Tela de Login</h1>
	
	<div class="input-login">
	
		<form action="ServletLogin" method="post" class="login-container ">
			<div >
				<label>E-mail</label>
				<input type="text" name="email">		
			</div>
			<div>
			<label>Senha</label>
			<input type="password" name="senha">		
			</div>
			
			<button >Entrar</button>
			
		</form>		
	</div>
	<h4>${msg}</h4>
</body>
</html>
