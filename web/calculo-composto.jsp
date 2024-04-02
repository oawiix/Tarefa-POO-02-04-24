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
        <div style="text-align: center; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
        <h1><%@ include file="WEB-INF/jspf/menu.jspf" %></h1>
        <h1>Resultado do caluclo de Juros Compostos<br></h1>
        <% 
            double valor = Double.parseDouble(request.getParameter("valor"));
            double taxa = Double.parseDouble(request.getParameter("taxa"));
            int meses = Integer.parseInt(request.getParameter("meses"));
            for (int i = 0; i < meses; i++) {
                double juros = valor/100 * taxa;
                valor += juros;
            }
        %>
        <h1>Resultado: <%= valor %></h1>
        </div>
    </body>
</html>
