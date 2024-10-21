<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/clientes/styleLogin.css">
</head>
<body>

    <div class="container-login">
        <div class="img-box">
            <img src="${pageContext.request.contextPath}/imagens/Icons/imgLogin.jpeg">
        </div>
        <div class="login-box">
            <div class="form-box">
                <h2 class="t1">LOGIN</h2>
                <form action=${pageContext.request.contextPath}/loginCliente method="post">
                    <div class="input-box">
                        <span class="t2">USUÁRIO</span>
                        <input type="email" name ="email"placeholder="Digite seu e-mail">
                    </div>
                    <div class="input-box">
                        <span class="t2">SENHA</span>
                        <input type="password" name="senha" placeholder="Digite sua senha">
                    </div>
                <div class="footer">
                    <div class="button-form">
                        <button type="submit">Entrar</button>
                   </div>
                </form>
                   <br>
                    <div class="remember"></div>
                        <a href="#">Esqueceu a senha?</a>
                    </div>
                    <br>
                    <div class="input-box">
                        <p>Não tem uma conta? <a href="${pageContext.request.contextPath}/views/clientes/cadastro.jsp">Cadastra-se</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>

