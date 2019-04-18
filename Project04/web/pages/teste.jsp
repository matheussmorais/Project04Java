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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04 - Quiz</title>
        <style>
            #featured-content {
                background-color: #add8e6;
                padding: 20px 0px;
            }

            .container {
                max-width: 960px;
                margin:0 auto;
            }

            .col-sm-9{
                width:100%;   
                float:left;
                background: #ffffff;
            }

            #border-radius {
                border: 2px solid white;
                border-radius: 25px;

            }

            #radio {
                display: inline;
                margin-left: 1em;

            }

        </style>
    </head>
    <body>
        <h1>Quiz</h1>

        <div id="featured-content">

            <div class="container">
                <div class="row">
                    <div class="col-sm-9" id="border-radius"> 

                        <div class="custom-control custom-radio" id="radio">

                            <form action="home.jsp">

                                <hr/>

                                <% for (Question q : Quiz.getMathTest()) {%>

                                <h3 style="background-color:#e5e5e5 "><%= q.getPergunta()%> ?</h3>
                                <%for (String alternativas : q.getAlternativas()) {%>


                                <input
                                    type="radio"
                                    id="radio"
                                    name="<%= q.getPergunta()%>"
                                    value ="<%=alternativas%>" /> <%=alternativas%> <br>
                                <%}%>
                                <%}%>

                                <hr/>

                                <br> <input class="btn btn-primary" type="submit" name="RealizaTeste" value="Enviar"/>
                                <br>
                                <br>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
