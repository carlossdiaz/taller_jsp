<%@page language='java' contentType="text/html" %>

<%@page import="com.carlosdiaz.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vehiculos</title>
</head>
<body>
<table>
<tr>
            <th>matricula</th>
            <th>marca</th>
            <th>modelo</th>
            <th>color</th>
            <th>revisado</th>
</tr>
<tr>
    <%
        List<Vehiculo> vehiculos = (List) session.getAttribute("vehiculos");
        for(Vehiculo vehiculo: vehiculos){
            out.print("<tr>");
            out.print("<td>" + vehiculo.getMatricula() + "</td>");
            out.print("<td>" + vehiculo.getMarca() + "</td>");
            out.print("<td>" + vehiculo.getModelo() + "</td>");
            out.print("<td>" + vehiculo.getColor() + "</td>");
            out.print("<td>" + vehiculo.getRevisado() + "</td>");

        }
    %>    
</tr>
</table>
<p><a href="nuevovehiculo.jsp">Nuevo</p>

</body>
</html>