package com.estudiantes.model;

import java.io.Serializable;

/**
 * JavaBean que representa un Estudiante
 */
public class Estudiante implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private String matricula;
    private String nombre;
    private String direccion;
    private String colegio;
    private String estado; // "Activo" o "Inactivo"
    
    // Constructor vacío
    public Estudiante() {
    }
    
    // Constructor con parámetros
    public Estudiante(String matricula, String nombre, String direccion, String colegio, String estado) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.direccion = direccion;
        this.colegio = colegio;
        this.estado = estado;
    }
    
    // Getters y Setters
    public String getMatricula() {
        return matricula;
    }
    
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getDireccion() {
        return direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    public String getColegio() {
        return colegio;
    }
    
    public void setColegio(String colegio) {
        this.colegio = colegio;
    }
    
    public String getEstado() {
        return estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    @Override
    public String toString() {
        return "Estudiante{" +
                "matricula='" + matricula + '\'' +
                ", nombre='" + nombre + '\'' +
                ", direccion='" + direccion + '\'' +
                ", colegio='" + colegio + '\'' +
                ", estado='" + estado + '\'' +
                '}';
    }
}
