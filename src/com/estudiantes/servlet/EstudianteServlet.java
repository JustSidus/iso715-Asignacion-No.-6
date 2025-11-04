package com.estudiantes.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.estudiantes.model.Estudiante;

/**
 * Servlet que maneja las operaciones CRUD de estudiantes
 */
@WebServlet("/EstudianteServlet")
public class EstudianteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    /**
     * Obtiene o crea la lista de estudiantes en la sesión
     */
    @SuppressWarnings("unchecked")
    private List<Estudiante> getEstudiantes(HttpSession session) {
        List<Estudiante> estudiantes = (List<Estudiante>) session.getAttribute("estudiantes");
        if (estudiantes == null) {
            estudiantes = new ArrayList<>();
            session.setAttribute("estudiantes", estudiantes);
        }
        return estudiantes;
    }
    
    /**
     * Maneja peticiones GET (listar, cargar formulario para editar)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        HttpSession session = request.getSession();
        
        if (accion == null || accion.equals("listar")) {
            // Listar estudiantes
            request.getRequestDispatcher("listarEstudiantes.jsp").forward(request, response);
        } else if (accion.equals("nuevo")) {
            // Mostrar formulario para nuevo estudiante
            request.getRequestDispatcher("formularioEstudiante.jsp").forward(request, response);
        } else if (accion.equals("editar")) {
            // Cargar estudiante para editar
            String matricula = request.getParameter("matricula");
            List<Estudiante> estudiantes = getEstudiantes(session);
            
            for (Estudiante est : estudiantes) {
                if (est.getMatricula().equals(matricula)) {
                    request.setAttribute("estudiante", est);
                    break;
                }
            }
            request.getRequestDispatcher("formularioEstudiante.jsp").forward(request, response);
        } else if (accion.equals("eliminar")) {
            // Eliminar estudiante
            String matricula = request.getParameter("matricula");
            List<Estudiante> estudiantes = getEstudiantes(session);
            
            estudiantes.removeIf(est -> est.getMatricula().equals(matricula));
            
            response.sendRedirect("EstudianteServlet?accion=listar");
        }
    }
    
    /**
     * Maneja peticiones POST (agregar, modificar)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String accion = request.getParameter("accion");
        HttpSession session = request.getSession();
        List<Estudiante> estudiantes = getEstudiantes(session);
        
        String matricula = request.getParameter("matricula");
        String nombre = request.getParameter("nombre");
        String direccion = request.getParameter("direccion");
        String colegio = request.getParameter("colegio");
        String estado = request.getParameter("estado");
        
        if (accion.equals("agregar")) {
            // Agregar nuevo estudiante
            Estudiante nuevo = new Estudiante(matricula, nombre, direccion, colegio, estado);
            estudiantes.add(nuevo);
            
        } else if (accion.equals("modificar")) {
            // Modificar estudiante existente
            for (Estudiante est : estudiantes) {
                if (est.getMatricula().equals(matricula)) {
                    est.setNombre(nombre);
                    est.setDireccion(direccion);
                    est.setColegio(colegio);
                    est.setEstado(estado);
                    break;
                }
            }
        }
        
        response.sendRedirect("EstudianteServlet?accion=listar");
    }
}
