<%@ page session="true" %>
<%
    String isAdmin = (String) session.getAttribute("email");
	String passwordAdmin = (String) session.getAttribute("senha");
%>


<div class="hamburguer" id="hamburguer">
                <h1 class="t1">MENU</h1>
                    <a href=""><p class="pMenu">MINHA CONTA</p></a>
                    <p class="pMenu" id="marcas">MARCAS</p>
    
                    <ul class="produtos" id="produtos">
                        <li><a href="${pageContext.request.contextPath}/views/growth.jsp">GROWTH</a></li>
                        <li><a href="${pageContext.request.contextPath}/views/maxTitanium.jsp">MAX TITANIUM</a></li>
                        <li><a href="${pageContext.request.contextPath}/views/blackSkull.jsp">BLACK SKULL</a></li>
                        <li><a href="${pageContext.request.contextPath}/views/integral.jsp">INTEGRAL</a></li>
                        <li><a href="${pageContext.request.contextPath}/views/clientes/upgradeFile.jsp">KITS DE SUPLEMENTAÇÃO</a></li>
                    </ul>
    
               		<a href="${pageContext.request.contextPath}/views/produtos/carrinho.jsp">
               			<p class="pMenu">MEU CARRINHO</p>
               		</a>
                <button class="btVoltar">SAIR</button><br>
            
	
                
                <img src="${pageContext.request.contextPath}/imagens/Icons/upgradePag.png" alt="IlustraçãoMenu">
        </div>