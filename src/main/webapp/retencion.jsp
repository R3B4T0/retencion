<%-- 
    Document   : retencion
    Created on : 15-ene-2021, 21:24:30
    Author     : David Rebato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <% String nombre = request.getParameter("nombre"); %>
        <h1>Cálculo de la Retención de <%= nombre %></h1>
        <%
            int salariobruto = Integer.parseInt(request.getParameter("salariobruto"));
            int salarioneto;
            int retencion1 = 10;
            int retencion2 = 20;
            if (salariobruto<=1000){
                salarioneto = salariobruto;
        %>
        <h2>Salario bruto: <%= salariobruto %>€</h2>
        <h2>Retención: No se le aplica retención</h2>
        <h2>Salario neto: <%= salarioneto %>€</h2>
        <% } else if((salariobruto>1000) && (salariobruto<=3000)){
                salarioneto = salariobruto - (salariobruto*retencion1/100);
        %>
        <h2>Salario bruto: <%= salariobruto %>€</h2>
        <h2>Retención: <%= retencion1 %>%</h2>
        <h2>Salario neto: <%= salarioneto %>€</h2>
        <% } else if((salariobruto>3000)) { 
            salarioneto = salariobruto - (salariobruto*retencion2/100);
        %>
        <h2>Salario bruto: <%= salariobruto %>€</h2>
        <h2>Retención: <%= retencion2 %>%</h2>
        <h2>Salario neto: <%= salarioneto %>€</h2>
        <% } %>
    
</html>
