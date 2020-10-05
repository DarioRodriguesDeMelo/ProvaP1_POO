<%-- 
    Document   : disciplinas
    Created on : 5 de out de 2020, 08:35:59
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
        <%if (request.getParameter("salvar")!= null){
            int nota = Integer.parseInt(request.getParameter("nota"));
            int codigo = Integer.parseInt(request.getParameter("codigo"));
        }%>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Minhas disciplinas</h1>
        
        <table border="1">
            <tr>
                <Th>Disciplina</th>
                <Th>Ementa</th>
                <Th>Nota</th>
                <Th>alterar</th>
                
            </tr> 
            
            <% for( int i =0 ; i < Disciplina.getList().size();i++){
                Disciplina disciplina = Disciplina.getList().get(i);%>
                
                
                
                
              <%}%> 
                
        </table>
    </body>
</html>
