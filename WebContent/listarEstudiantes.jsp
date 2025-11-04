<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.estudiantes.model.Estudiante" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Estudiantes</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container">
        <h1>Listado de Estudiantes</h1>
        
        <div class="acciones">
            <a href="EstudianteServlet?accion=nuevo" class="btn btn-agregar">Agregar Estudiante</a>
        </div>
        
        <%
            @SuppressWarnings("unchecked")
            List<Estudiante> estudiantes = (List<Estudiante>) session.getAttribute("estudiantes");
            
            if (estudiantes == null || estudiantes.isEmpty()) {
        %>
            <div class="mensaje-vacio">
                <p>No hay estudiantes registrados.</p>
            </div>
        <%
            } else {
        %>
            <table class="tabla-estudiantes">
                <thead>
                    <tr>
                        <th>Matricula</th>
                        <th>Nombre</th>
                        <th>Direccion</th>
                        <th>Colegio</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Estudiante est : estudiantes) {
                    %>
                    <tr>
                        <td><%= est.getMatricula() %></td>
                        <td><%= est.getNombre() %></td>
                        <td><%= est.getDireccion() %></td>
                        <td><%= est.getColegio() %></td>
                        <td>
                            <span class="estado <%= est.getEstado().equals("Activo") ? "activo" : "inactivo" %>">
                                <%= est.getEstado() %>
                            </span>
                        </td>
                        <td class="acciones-tabla">
                            <a href="EstudianteServlet?accion=editar&matricula=<%= est.getMatricula() %>" class="btn btn-editar">Modificar</a>
                            <a href="EstudianteServlet?accion=eliminar&matricula=<%= est.getMatricula() %>" class="btn btn-eliminar" onclick="return confirm('Confirmar eliminacion?');">Eliminar</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        <%
            }
        %>
        
        <div class="footer">
            <p>Total de estudiantes: <%= (estudiantes == null) ? 0 : estudiantes.size() %></p>
        </div>
    </div>
</body>
</html>
