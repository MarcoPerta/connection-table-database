<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectorDB.ConnectionTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pagina index</title>
</head>
<body>
	<h1>Tabella del database</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Cognome</th>
		</tr>
		<%  
        try {
        		
        	ResultSet resultSet = ConnectionTable.getTableData();

            // Itera sui risultati della query e genera le righe della tabella
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nome = resultSet.getString("nome");
                String cognome = resultSet.getString("cognome");
          %>

		<tr>
			<td><%= id %></td>
			<td><%= nome%></td>
			<td><%= cognome%></td>
		</tr>
		<%}
            
         // Chiudi il ResultSet
            resultSet.close();
        } catch (Exception e) {
            e.printStackTrace();
        }%>
        
	</table>
</body>
</html>