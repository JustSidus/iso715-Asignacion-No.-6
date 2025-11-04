<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Estudiantes</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="container">
        <div class="bienvenida">
            <h1>Bienvenido al Sistema de Mantenimiento de Estudiantes</h1>
            <p>Este sistema permite gestionar la información de estudiantes con las siguientes funcionalidades:</p>
            
            <ul class="caracteristicas">
                <li>✓ Agregar nuevos estudiantes</li>
                <li>✓ Modificar información de estudiantes existentes</li>
                <li>✓ Eliminar estudiantes</li>
                <li>✓ Consultar listado completo de estudiantes</li>
            </ul>
            
            <div class="info-campos">
                <h3>Datos que se capturan:</h3>
                <ul>
                    <li><strong>Matrícula:</strong> Identificador único del estudiante</li>
                    <li><strong>Nombre:</strong> Nombre completo del estudiante</li>
                    <li><strong>Dirección:</strong> Dirección de residencia</li>
                    <li><strong>Colegio:</strong> Institución educativa</li>
                    <li><strong>Estado:</strong> Activo o Inactivo</li>
                </ul>
            </div>
            
            <div class="acciones-inicio">
                <a href="EstudianteServlet?accion=listar" class="btn btn-principal">Ir al Sistema</a>
            </div>
        </div>
    </div>
</body>
</html>
