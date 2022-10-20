<%@page language='java' contentType="text/html" %>

<%@page import="com.carlosdiaz.taller.model.Vehiculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String matricula = request.getParameter("matricula");
    String nombre = request.getParameter("nombre");
    String apellidos = request.getParameter("apellidos");
    String direccion = request.getParameter("direccion");
    String email = request.getParameter("email");
    
    vehiculo vehiculo = new vehiculo();
    vehiculo.setMatricula(matricula);
    vehiculo.setMarca(marca);
    vehiculo.setModelo(modelo);
    vehiculo.setColor(color);
    vehiculo.setRevisado(revisado);

    List<vehiculo> vehiculos = (List) session.getAttribute("vehiculos");

    vehiculos.add(vehiculo);

    session.setAttribute("vehiculos", vehiculos);

    response.sendRedirect("vehiculos.jsp");

%>