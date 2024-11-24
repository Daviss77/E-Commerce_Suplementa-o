<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WHEY's</title>
    <!--CSS PADRÃO-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <!--    ..................................            -->
    <link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/growth/growth.css">
    
</head>
<body>
                        <!-- CABEÃALHO   -->
   <%@ include file ="../includes/header.jsp" %>
    
                        <!--MENU HAMBURGUER PADRÃO -->
           <%@ include file ="../includes/menuHamburguer.jsp"%>
            
            <!--                CORPO MEIO                          -->
 				<%@ include file= "../includes/Growth/proteinas.jsp" %>
 				<%@ include file = "../includes/Growth/creatina.jsp" %>

                        <!--        RODAPÉ   -->
    			<%@ include file = "../includes/footer.jsp" %>
                  
    <script src="../javaScript/index.js"></script>
    <script type= "module" src="../javaScript/addCard.js"></script>
    <script type= "module" src="../javaScript/telaCompraCart.js"></script>
  
</body>
</html>