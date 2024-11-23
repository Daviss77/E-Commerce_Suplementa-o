<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho de Compras</title>
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>

    <header>
        <div id="container">
            <h2><a href="../views/index.jsp" class="titulo">NGS BY SENACX</a> -|-</h2>
    </header>

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
                <tr></tr>
            </tbody>
        </table>
        <div class="total">
            <h2 id ="payTotal"></h2>
        </div>
        <button class="finalize">Finalizar Compra</button>
    </div>
    <footer>$copy 2024 NGS BY SENACX. Todos os direito reservados.</footer>
    <script type="module" src="../../javaScript/carrinho.js"></script>
</body>
</html>
