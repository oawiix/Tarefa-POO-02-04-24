<%-- 
    Document   : juros-compostos
    Created on : 2 de abr. de 2024, 13:56:22
    Author     : dange
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.text.DecimalFormat" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
            <h1><%@ include file="WEB-INF/jspf/menu.jspf" %></h1>
            <h1>Resultado do caluclo de Juros Compostos<br></h1>
                <% try {
                        double valor = Double.parseDouble(request.getParameter("valor"));
                        double taxa = Double.parseDouble(request.getParameter("taxa"));
                        int meses = Integer.parseInt(request.getParameter("meses"));
                        DecimalFormat df = new DecimalFormat("#.##"); // Limitar qtd decimal
                %>
            <table style="border: 1px solid black;
                   margin-left: 900px;
                   margin-right: 900px;">
                <tr>
                    <th>Mês &nbsp</th>
                    <th>Juros &nbsp</th>
                    <th>Montante &nbsp</th>
                </tr>
                <%
                    for (int i = 0; i < meses; i++) {
                        double juros = valor / 100 * taxa;
                        valor += juros;%>
                <tr>
                    <td><%= i + 1%></td>
                    <td><%= df.format(juros)%></td>
                    <td><%= df.format(valor)%></td>
                </tr>
                <%
                    if (i == meses - 1) {%>
                <h1>Montante total: <%= df.format(valor)%></h1>
                <% } %>
                <% } %>
            </table>
            <%
                } catch (Exception e) {
                    out.println("Erro: " + e.getMessage());
                }
            %>
        </div>
    </body>
</html>
