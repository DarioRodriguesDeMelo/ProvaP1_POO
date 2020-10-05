<%-- 
    Document   : index
    Created on : 5 de out de 2020, 08:22:42
    Author     : Dario
--%>

<%@page import="br.com.fatecpg.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabalho Prova P1 Pupo</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h3>Dario Rodrigues de Melo</h3>
        <h3>Ra:1290481923022</h3>
        <h3>Quantidade de discplinas matriculadas : <%= Disciplina.getList().size() %></h3>
                
    </body>
</html>
