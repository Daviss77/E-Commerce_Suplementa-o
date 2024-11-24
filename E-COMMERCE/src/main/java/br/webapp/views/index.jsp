<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ngs By Senazx</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">

</head>
<body>
 	<jsp:include page ="/includes/header.jsp" />

    <div class="hamburguer" id="hamburguer">
            <h1 class="t1">MENU</h1>
                <a href="${pageContext.request.contextPath}/views/vizualiza-cliente.jsp"><p class="pMenu">MINHA CONTA</p></a>
            	<a href="${pageContext.request.contextPath}/views/produtos/carrinho.jsp"><p class="pMenu">MEU CARRINHO</p> </a>
            	<button class="btVoltar">SAIR</button> <br>
            	<img src="${pageContext.request.contextPath}/imagens/Icons/menuRunning.png" alt="IlustraçãoMenu" class="imgRunning">
    </div>
    
            <div id="containerBody">
                <div class="item">
                    <h1>MAX TITANIUMA</h1>
                    <a href="${pageContext.request.contextPath}/views/maxTitanium.jsp"><img src="${pageContext.request.contextPath}/imagens/MaxTitanium/inicioMax.png" alt="Ilustração de erro" class="imgInicio"></a>
                    <p>
                        RESUMO
                    </p>
                </div>
                <div class="item item2">
                    <h1>GROWTH</h1>
                    <a href="${pageContext.request.contextPath}/views/growth.jsp"><img src="${pageContext.request.contextPath}/imagens/Growth/inicioGrowth.png" alt="Ilustração de erro" class="imgInicio"  ></a>
                    <p>
                        RESUMO
                    </p>
                </div>
                <div class="item item2">
                    <h1>BLACK SKULL</h1>
                    <a href="${pageContext.request.contextPath}/views/blackSkull.jsp"><img src="${pageContext.request.contextPath}/imagens/BlackSkull/inicioBlack.png" alt="Ilustração de erro" class="imgInicio"></a>
                    <p>
                        RESUMO
                    </p>
                </div>
                <div class="item item4">
                    <h1>INTEGRAL</h1>
                    <a href="${pageContext.request.contextPath}/views/integral.jsp"><img src="${pageContext.request.contextPath}/imagens/Icons/Error.png" alt="Ilustração de erro" class="imgInicio"></a>
                    <p>
                        RESUMO
                    </p>
                </div>
                <div class="item item5">
                    <h1>KITS</h1>
                    <a href="${pageContext.request.contextPath}/views/clientes/upgradeFile.jsp"><img src="${pageContext.request.contextPath}/imagens/Icons/Error.png" alt="Ilustração de erro" class="imgInicio"></a>
                    <p>
                        RESUMO
                    </p>
                </div>
            </div>


            <jsp:include page= "../includes/footer.jsp" />
            <script src="${pageContext.request.contextPath}/javaScript/index.js"></script>
</body>
</html>