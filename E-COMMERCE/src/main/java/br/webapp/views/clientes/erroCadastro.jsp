<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/clientes/erroCadastro.css">
</head>
<body>

	<div class="container">
		<h1>ERRO ENCONTRADO :(</h1>
		<p><%=request.getAttribute("mensagemErro")%></p>
		<button onclick="window.history.back()">Voltar</button>
	</div>
</body>
</html>