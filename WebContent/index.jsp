<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema de Estudiantes</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container">
        <div class="bienvenida">
            <h1>Sistema de Mantenimiento de Estudiantes</h1>
            <p>Selecciona una opcion para comenzar:</p>
            
            <div class="info-campos">
                <h3>Funcionalidades:</h3>
                <ul>
                    <li>Agregar nuevos estudiantes</li>
                    <li>Modificar información de estudiantes</li>
                    <li>Eliminar estudiantes</li>
                    <li>Ver listado de estudiantes</li>
                </ul>
            </div>
            
            <div class="acciones-inicio">
                <a href="EstudianteServlet?accion=listar" class="btn btn-principal">Entrar al Sistema</a>
            </div>
        </div>
    </div>
</body>
</html>
