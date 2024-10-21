<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("nome");
%>
<header>
	<div id="container">
		<img src="${pageContext.request.contextPath}/imagens/Icons/Menu.png" 
			alt="Imagem de 3 listras, que representa o menu" class="menu imgNav">
		
		<h2>
			<a href=${pageContext.request.contextPath}/views/index.jsp class="titulo">NGS BY SENACX</a> -|-
		</h2>
		<img src="${pageContext.request.contextPath}/imagens/Icons/login.png" 
			alt="Ilustração de uma pessoa para login" class="imgNav login" >
		<% if (username == null) { %>			
			<p class="cadastro">
				<a href="${pageContext.request.contextPath}/views/clientes/login.jsp" class="aCabecalho">Faça seu <strong>login</strong>
				</a>
           </p>
		<% } else { %>
				<p class = "nomeLogin"> 
					<Strong> Seja bem vindo! <%= username %> </strong> 
					
				</p> <% } %>
		
		</div>
           
</header>
