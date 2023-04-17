<%-- 
    Document   : Ejercicio1
    Created on : 16 abr 2023, 21:51:04
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 1</title>
        <link rel="stylesheet" href="./Miestilo.css">
    </head>
    <body>
        <h2>Ejercicio 1</h2>
        <p>Suponga que un individuo desea invertir su capital en un banco y desea saber cuanto dinero ganara despues de un mes si el banco paga a razón de 2% menual</p>
        <form action="SvEjercicio1" method="POST">
            <label>Ingrese el capital</label>
            <input type="number" name="cap"/><br>    
                <%
                // Obtener el valor ingresado por el usuario
                String numeroString = request.getParameter("cap");
                double cap = 0;
                double resultado;
                
                while(numeroString != null && !numeroString.isEmpty()) {
                    try {
                        cap = Double.parseDouble(numeroString);
                    } catch (NumberFormatException e) {
                        resultado=0;
                    }
                }

                resultado = cap * 0.02;
                %>
            <input type="text" name="resul" disabled value="<%=resultado%>"/>
            <input type="submit" value="Calcular"/><br>
        </form>
        
    </body>
</html>
