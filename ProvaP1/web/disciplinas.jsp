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
            int cod = Integer.parseInt(request.getParameter("cod"));
            Disciplina  MudarNota = Disciplina.getList().get(cod);
         mudarNota.setNota(nota);
        }%>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Minhas disciplinas</h1>
        
        <table border="1">
            <tr>
                <Th>Disciplina</th>
                <Th>Ementa</th>
                <Th>Ciclo</th>
                <Th>Nota</th>
                
            </tr> 
            
            <% for( int i =0 ; i < Disciplina.getList().size();i++){
                Disciplina disciplina = Disciplina.getList().get(i);%>
                <tr>
                    <td><%=disciplina.getNome()%></td>
                    <td><%=disciplina.getEmenta()%></td>
                    <td><%=disciplina.getCiclo()%></td>
                    <td><%=disciplina.getNota()%></td>
                    <td>
                       <form method ="get" >
                       <input type="number" name="nota" value"<%=disciplina.getNota()%>"/>
                       <input type="submit" name="salvar" value="salvar"/>
                       <input type="hidden" name="cod" value="<%= i %>"/>
                       </form>
                    </td> 
                </tr>
                
                
              <%}%> 
                
        </table>
    </body>
</html>
