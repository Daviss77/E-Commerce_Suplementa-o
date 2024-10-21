<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RELÁTORIO</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/growth/growth.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adm/relatorio.css">
</head>
<body>
<%@ include file ="/includes/header.jsp" %>
<%@ include file ="/includes/menuHamburguer.jsp"%>

	<div class="container">
    	<%@ include file ="/includes/menuADM/Menu.jsp"%>
        <div class="content">
            <div class="filters">
                <button>Data Início</button>
                <input type="date">
                <button>Data Fim</button>
                <input type="date">
            </div>
            <table>
                <tr>
                    <th>13/10/2024</th>
                    <th>CPF: 123.332.444-21</th>
                    <th>1000,00 R$</th>
                    <th><button><img src="${pageContext.request.contextPath}/imagens/Icons/lupa.png"
                    height="20px"
                    width="23px"
                    alt="erro">
                    </button></th>
                </tr>
            </table>
        </div>
    </div>
    <%@ include file = "/includes/footer.jsp" %>
    <script src="${pageContext.request.contextPath}/javaScript/index.js"></script>
</body>
</html>