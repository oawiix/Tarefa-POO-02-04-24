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
                <% try {
                        double valor = Double.parseDouble(request.getParameter("valor"));
                        double taxa = Double.parseDouble(request.getParameter("taxa"));
                        int meses = Integer.parseInt(request.getParameter("meses"));
                        for (int i = 0; i < meses; i++) {
                            double juros = valor / 100 * taxa;
                            valor += juros;%>
            <table style="border: 1px solid black;
                   border-collapse: collapse;
                   margin-left: 600px;
                   margin-right: 600px;">
                <th>Mês <%= i + 1%>&nbsp&nbsp&nbsp</th>
                
                <td>Juros no mês: <%= juros %>&nbsp&nbsp&nbsp</td>
                <th>Montante no mês: <%= valor %></th>
            </table>

            <%
                    if (i == meses - 1) {%>
            <h1>Montante total: <%= valor%></h1>
            <% } %>
            <% }
                } catch (Exception e) {
                    out.println("Erro: " + e.getMessage());
                }
            %>
        </div>
    </body>
</html>
