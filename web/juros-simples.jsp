<%-- 
    Document   : juros-compostos
    Created on : 2 de abr. de 2024, 13:56:22
    Author     : dange
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%@ include file="WEB-INF/jspf/menu.jspf" %></h1>
        <div style="text-align: center; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             padding: 10px; border: 2px;
             margin-left: 850px;
             margin-right: 850px;
             background-color: rgb(239, 239, 239);
             border-radius: 10px;">
            <h2>Juros Simples</h2>
            <form action="calculo-simples.jsp">
                <label for="valor">Valor:</label>
                <br>
                <input type="number" id="valor" name="valor" required>
                <br><br>
                <label for="taxa">Taxa de juros:</label>
                <br>
                <input type="number" step="0.01" id="taxa" name="taxa" required>
                <br><br>
                <label for="periodo">Período em meses:</label>
                <br>
                <input type="number" id="meses" name="meses" required>
                <br>
                <div style="padding: 20px;">
                    <button type="submit">Calcular</button>
                </div>
        </div>
    </body>
</html>
