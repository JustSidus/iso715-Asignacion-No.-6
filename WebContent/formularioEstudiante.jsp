<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.estudiantes.model.Estudiante" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= (request.getAttribute("estudiante") != null) ? "Modificar Estudiante" : "Agregar Estudiante" %></title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container">
        <%
            Estudiante estudiante = (Estudiante) request.getAttribute("estudiante");
            boolean esEdicion = (estudiante != null);
        %>
        
        <h1><%= esEdicion ? "Modificar Estudiante" : "Agregar Estudiante" %></h1>
        
        <form action="EstudianteServlet" method="post" class="formulario">
            <input type="hidden" name="accion" value="<%= esEdicion ? "modificar" : "agregar" %>">
            
            <div class="campo">
                <label for="matricula">Matricula:</label>
                <input type="text" id="matricula" name="matricula" value="<%= esEdicion ? estudiante.getMatricula() : "" %>" <%= esEdicion ? "readonly" : "" %> required>
            </div>
            
            <div class="campo">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" value="<%= esEdicion ? estudiante.getNombre() : "" %>" required>
            </div>
            
            <div class="campo">
                <label for="direccion">Direccion:</label>
                <input type="text" id="direccion" name="direccion" value="<%= esEdicion ? estudiante.getDireccion() : "" %>" required>
            </div>
            
            <div class="campo">
                <label for="colegio">Colegio:</label>
                <input type="text" id="colegio" name="colegio" value="<%= esEdicion ? estudiante.getColegio() : "" %>" required>
            </div>
            
            <div class="campo">
                <label for="estado">Estado:</label>
                <select id="estado" name="estado" required>
                    <option value="">Seleccionar</option>
                    <option value="Activo" <%= esEdicion && estudiante.getEstado().equals("Activo") ? "selected" : "" %>>Activo</option>
                    <option value="Inactivo" <%= esEdicion && estudiante.getEstado().equals("Inactivo") ? "selected" : "" %>>Inactivo</option>
                </select>
            </div>
            
            <div class="botones">
                <button type="submit" class="btn btn-guardar"><%= esEdicion ? "Guardar Cambios" : "Agregar" %></button>
                <a href="EstudianteServlet?accion=listar" class="btn btn-cancelar">Cancelar</a>
            </div>
        </form>
    </div>
</body>
</html>
