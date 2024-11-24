<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/growth/growth.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/produtos/telaCompra.css">
     
</head>
<body>
 	<%@ include file ="../../../../includes/header.jsp" %>
   
      <%@ include file ="../../../../includes/menuHamburguer.jsp"%>
      
      <%@ include file= "../../../../includes/TelaCompra/BuyGrowth/Creatinas/creatinaMonohidratada.jsp" %>
    
    <%@ include file = "../../../../includes/footer.jsp" %>
    
      <script src="${pageContext.request.contextPath}/javaScript/growth.js"></script>
      <script src="${pageContext.request.contextPath}/javaScript/telaCompra.js"></script>
      <script src="${pageContext.request.contextPath}/javaScript/index.js"></script>
      <script src="${pageContext.request.contextPath}/javaScript/telaCompraCart.js"></script>
      <script src="${pageContext.request.contextPath}/javaScript/carrinho.js"></script>
  
</body>
</html>