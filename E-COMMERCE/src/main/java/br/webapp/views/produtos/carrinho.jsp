<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho de Compras</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/produtos/carrinho.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>
	<jsp:include page ="${contextPage.request.contextPath}/includes/header.jsp" />
	
    <div class="container">
        <h1>Carrinho de Compras</h1>
        <table>
            <thead>
                <tr>
                    <th>Produto</th>
                    <th>Quantidade</th>
                    <th>Preço</th>
                    <th>Total</th>
                    <th>Limpar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img src="${pageContext.request.contextPath}/imagens/BlackSkull/imgCreatinas/Creapure-creatina150g.webp" 
                    alt="Creatina"></td>

                    <td>
                        <button class="diminuir">-</button>0<button class="aumentar">+</button>
                    </td>

                    <td>R$ 00,00</td>

                    <td>R$ 00,00</td>

                    <td>
                    <button class="limpar">
                        <img src="${pageContext.request.contextPath}/imagens/Icons/lixeira.png" alt="Lixeira">
                    </button>
                    </td>

                </tr>
            </tbody>
        </table>
        <div class="total">
            <h2>Total: R$ 00,00</h2>
        </div>
        <button class="finalize">Finalizar Compra</button>
    </div>

			<jsp:include page= "${contextPage.request.contextPath}/includes/footer.jsp"/>
          	<script src="${pageContext.request.contextPath}/javaScript/index.js"></script>
</body>
</html>
    