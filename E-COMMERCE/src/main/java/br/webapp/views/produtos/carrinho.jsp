<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho de Compras</title>
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/produtos/carrinho.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
     <link rel ="stylesheet" href = "${pageContext.request.contextPath}/css/growth/growth.css">
</head>
<body>

   <%@ include file ="../../includes/header.jsp" %>
    
                        <!--MENU HAMBURGUER PADRÃƒO -->
           <%@ include file ="../../includes/menuHamburguer.jsp"%>

    <div class="container-table">
        <h1>Carrinho de Compras</h1>
        <table>
            <thead>
                <tr>
                    <th></th>
                    <th>Produto</th>
                    <th>Quantidade</th>
                    <th>Preço</th>
                    <th>Limpar</th>
                </tr>
            </thead>
            <tbody class="produto">
                
            </tbody>
        </table>
        <div class="total">
            <h2 id ="payTotal"></h2>
        </div>
        <button class="finalize">Finalizar Compra</button>
    </div>
    <footer>$copy 2024 NGS BY SENACX. Todos os direito reservados.</footer>
    <script src="../../javaScript/index.js"></script>
    <script src="../../javaScript/growth.js"></script>
    <script type="module" src="../../javaScript/carrinho.js"></script>
</body>
</html>
