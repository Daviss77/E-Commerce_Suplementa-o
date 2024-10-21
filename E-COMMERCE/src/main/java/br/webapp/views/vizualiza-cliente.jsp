<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix ="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
<title>Dados dos clientes</title>
    <!--    ..................................            -->
     <link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/index.css"> 
     <link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/clientes/vizuDados.css"> 
    
</head>
<body>
	
	<%@ include file="../../includes/header.jsp"%>
	<%@ include file="../../includes/menuHamburguer.jsp" %>
	

		 <h2 class="tituloVizu">CADASTRO COM SUCESSO! Seja bem vindo ${cliente.nome}</h2>

    <div id="containerVizu">
        <div class="itemVizu">
            <img src="${pageContext.request.contextPath}/imagens/Icons/imgVizu1.png" alt="ilustração">
        </div>
        <div class="itemVizu">
            <h1>SEUS DADOS</h1>
            <p><strong>Nome:</strong> ${cliente.nome}</p> <br>
            <p><strong>CPF:</strong> ${cliente.cpf}</p> <br>
            <p><strong>Telefone:</strong> ${cliente.telefone}</p> <br>
            <p><strong>Bairro:</strong> ${cliente.bairro}</p> <br>
            <p><strong>Email:</strong> ${cliente.email}</p> <br>
            <p><strong>Estado:</strong> ${cliente.estado} </p><br>
            <p><strong>CEP:</strong> ${cliente.cep} </p><br>
            <p><strong>Complemento:</strong> ${cliente.complemento} </p><br>
            <p><strong>Senha:</strong> ${cliente.senha} </p><br>
        </div>
    </div>
    
		
		
	<%@ include file="../../includes/footer.jsp"%>
</body>
</html>