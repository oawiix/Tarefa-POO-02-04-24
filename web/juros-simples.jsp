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
        <div style="text-align: center;">
        <h2>Juros Simples</h2>
        <form action="calculo-simples.jsp">
            <label for="valor">Valor:</label>
            <input type="number" id="valor" name="valor" required>
            <br>
            <label for="taxa">Taxa de juros:</label>
            <input type="number" id="taxa" name="taxa" required>
            <br>
            <label for="periodo">Período em meses:</label>
            <input type="number" id="meses" name="meses" required>
            <br>
            <button type="submit">Calcular</button>
        </div>
    </body>
</html>
