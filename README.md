# Sistema de Mantenimiento de Estudiantes

Este proyecto es una aplicación web sencilla desarrollada en Java usando Servlets, JSP y JavaBeans. Permite realizar el mantenimiento de estudiantes con opciones para agregar, modificar, eliminar y consultar estudiantes. Los datos que se capturan son: matrícula, nombre, dirección, colegio y estado (Activo/Inactivo).

## Estructura del proyecto

- `src/com/estudiantes/model/Estudiante.java`: Clase JavaBean para el estudiante.
- `src/com/estudiantes/servlet/EstudianteServlet.java`: Servlet principal para las operaciones CRUD.
- `WebContent/index.jsp`: Página de inicio.
- `WebContent/formularioEstudiante.jsp`: Formulario para agregar/modificar estudiantes.
- `WebContent/listarEstudiantes.jsp`: Listado de estudiantes.
- `WebContent/css/estilos.css`: Estilos de la aplicación.
- `WebContent/WEB-INF/web.xml`: Configuración de la aplicación web.

## Requisitos

- Eclipse IDE for Enterprise Java and Web Developers
- Apache Tomcat 9.0
- JDK 11

## Cómo ejecutar el proyecto en Eclipse

1. Abre Eclipse y selecciona tu workspace.
2. Importa el proyecto:
   - Ve a `File > Import... > General > Existing Projects into Workspace`.
   - Selecciona la carpeta del proyecto y haz clic en `Finish`.
3. Configura Apache Tomcat:
   - Ve a `Window > Preferences > Server > Runtime Environments`.
   - Agrega Apache Tomcat v9.0 y selecciona la carpeta donde lo instalaste.
4. Asocia el proyecto al servidor:
   - Ve a la pestaña `Servers`.
   - Click derecho en el servidor Tomcat y selecciona `Add and Remove...`.
   - Agrega el proyecto y haz clic en `Finish`.
5. Ejecuta el proyecto:
   - Click derecho en el servidor Tomcat y selecciona `Start`.
   - Abre el navegador y entra a `http://localhost:8080/SistemaEstudiantes/`.

## Notas

- Los datos de los estudiantes se almacenan en la sesión, por lo que se perderán al reiniciar el servidor.