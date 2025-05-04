<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Curso JSP</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">

 <link rel="stylesheet" href="${pageContext.request.contextPath}/Styllers/login.css">

</head>
<body>

  <div class="container" id="container">
    <div class="form-container sign-up-container">
      <form action="#">
        <h1>Criar Conta</h1>
        <input type="text" placeholder="Nome" />
        <input type="email" placeholder="Email" />
        <input type="password" placeholder="Senha" />
        <button>Cadastrar</button>
      </form>
    </div>

    <div class="form-container sign-in-container">
      <form action="ServletLogin" method="post" class="needs-validation" novalidate>
      <input type="hidden" value="${param.url}" name="url">
        <h1>Login</h1>
        <input type="email" placeholder="Email" name="email"/>
        <div class="invalid-feedback">Por favor, insira um e-mail válido.</div>
        
        <input type="password" placeholder="Senha" name="senha"/>
        <div class="invalid-feedback">A senha é obrigatória.</div>
        <button>Entrar</button>
      </form>
      <h4 class="msg">${msg}</h4>
    </div>

    <div class="overlay-container">
      <div class="overlay">
        <div class="overlay-panel overlay-left">
          <h1>Bem-vindo de volta!</h1>
          <p>Para se manter conectado, faça login com suas credenciais</p>
          <button class="ghost" id="signIn">Entra</button>
        </div>
        <div class="overlay-panel overlay-right">
          <h1>Olá, novo por aqui?</h1>
          <p>Insira seus dados e comece sua jornada conosco</p>
          <button class="ghost" id="signUp">Cadastra</button>
        </div>
      </div>
    </div>
  </div>
  
  

  <script>
    const container = document.getElementById('container');
    document.getElementById('signUp').addEventListener('click', () => {
      container.classList.add("right-panel-active");
    });

    document.getElementById('signIn').addEventListener('click', () => {
      container.classList.remove("right-panel-active");
    });
  </script>
</body>
</html>
