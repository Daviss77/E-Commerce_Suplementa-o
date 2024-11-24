<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.JavaBeans" %>
    <%@ page import="java.util.ArrayList" %>
    
    <%
    ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
    
    %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>agenda fornecedores</title>
<link rel="stylesheet" href="css/lista.css">
<body>



<div>
<a href="novo.html" class="novocontato">Novo Cliente </a>
</div>
<table>
<thead>
<tr>
<th>Id</th>
<th>Nome Completo</th>
<th>Telefone</th>
<th>E-mail</th>
<th>CPF</th>
<th>Senha</th>
<th>Data De Criação</th>
<th>Estado</th>
<th>Bairro</th>
<th>CEP</th>
<th>Editar</th>
</tr>
</thead>
<tbody>
<%for (int i = 0; i < lista.size();i++) {%>
<tr>
<td><%=lista.get(i).getIdcon() %></td>
<td><%=lista.get(i).getNome() %></td>
<td><%=lista.get(i).getFone() %></td>
<td><%=lista.get(i).getEmail() %></td>
<td><%=lista.get(i).getIdcpf() %></td>
<td><%=lista.get(i).getsenha() %></td>
<td><%=lista.get(i).getidendereco() %></td>
<td><%=lista.get(i).getestado() %></td>
<td><%=lista.get(i).getbairro() %></td>
<td><%=lista.get(i).getdatacriacao() %></td>

<td><a class="editar" href="select?idcon=<%=lista.get(i).getIdcon()  %>">Editar</a>
<a  class="excluir" href="javascript: confirmar(<%=lista.get(i).getIdcon()  %>)">Excluir</a>
</td>
</tr>
<%} %>
</tbody>
</table>
</head>

<script src="scripts/confirmador.js"></script>
</body>
</html>