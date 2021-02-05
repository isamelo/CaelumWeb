<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*,
				 br.com.caelum.agenda.dao.*,
				 br.com.caelum.agenda.modelo.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td>Nome</td>
			<td>E-mail</td>
			<td>Endereco</td>
		</tr>
	
		<% 
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for(Contato contato : contatos) {
		%>
		
		<tr>
			<td><%= contato.getNome() %></td>
			<td><%= contato.getEmail() %></td>
			<td><%= contato.getEndereco() %></td>
		</tr>
	
		<% } %>

	</table>

</body>
</html>