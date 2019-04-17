<%-- 
    Document   : teste
    Created on : 16/04/2019, 22:04:47
    Author     : Casa
--%>

<%@page import="br.com.fatecpg.project04.Quiz"%>
<%@page import="br.com.fatecpg.project04.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04 -- Quiz</title>
    </head>
    <body>
        <h1>Quiz</h1>
        <div class="custom-control custom-radio">
        <form action="home.jsp">
            <% for (Question q: Quiz.getMathTest()) {%>
            <h3><%= q.getPergunta()%>?</h3>
            <%for(String alternativas: q.getAlternativas()){%>
            <input type="radio"
                   name="<%= q.getPergunta()%>"
                   value ="<%=alternativas%>"
                   /> <%=alternativas%> <br>
             <hr/>
                   <%}%>
            <%}%>
            
            <br> <input class="btn btn-dark" type="submit" name="RealizaTeste" value="Enviar"/>
        </form>
        </div>
    </body>
</html>
