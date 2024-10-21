<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>PRODUTOS</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/growth/growth.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adm/produtos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adm/relatorio.css">
</head>
<body>

<%@ include file ="/includes/header.jsp" %>
<%@ include file ="/includes/menuHamburguer.jsp"%>

	<div class="container">
        <%@ include file ="/includes/menuADM/Menu.jsp"%>
        
        <div class="main-content">
            <div class="top-menu">
                <button class="top-btn">PROTEINAS</button>
                <button class="top-btn">CREATINA</button>
                <button class="top-btn">PRÉ-TREINO</button>
                <button class="top-btn">OUTROS</button>
                <button class="top-btn">ADD PRODUTOS</button>
            </div>
            <div class="category-title">
                <h1>PROTEINAS</h1>
            </div>
            <div class="product-list">
                <div class="product-card">
                    <div class="product-img"><img src="${pageContext.request.contextPath}/imagens/Integral/imgProteinas/wheyConcentrado.png"
                        width="100%"
                        height="160px"/>
                    </div>
                    <div class="product-price">R$ 00,00</div>
                    <div class="product-actions">
                        <button class="edit-btn"><img src="${pageContext.request.contextPath}/imagens/Icons/lapis.png" alt="edit"
                        width="100%"
                        height="20px"/></button>
                        <button class="delete-btn"><img src="${pageContext.request.contextPath}/imagens/Icons/lixeira.png" alt="delete"
                        width="100%"
                        height="20px"></button>
                    </div>
                </div>

                
                <div class="product-card">
                    <div class="product-img"><img src="${pageContext.request.contextPath}/imagens/Integral/imgProteinas/veganSport.png"
                        width="100%"
                        height="140px"/></div>
                    <div class="product-price">R$ 00,00</div>
                    <div class="product-actions">
                        <button class="edit-btn"><img src="${pageContext.request.contextPath}/imagens/Icons/lapis.png" alt="edit"
                        width="100%"
                        height="20px"/></button>
                        <button class="delete-btn"><img src="${pageContext.request.contextPath}/imagens/Icons/lixeira.png" alt="delete"
                        width="100%"
                        height="20px"></button>
                    </div>
                </div>
            </div>
            <div class="add-product">
                <button class="add-btn">ADD PRODUTO</button>
            </div>
        </div>
    </div>
    <%@ include file = "/includes/footer.jsp" %>
    <script src="../../javaScript/index.js"></script>
    
</body>
</html>