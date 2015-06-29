package model;

import java.io.Serializable;

public class Empleado implements Serializable {

	private static final long serialVersionUID = -6422698927796273092L;
	
	private Integer codigo;
	private String nombre;
	private String apellido;
	private String apellidomat;
	private String telefono;
	private Distrito distrito; 
	private String direccion;
	private String email;
	private String genero;
	private Double sueldo; 
	private Cargo cargo;
	private byte[] cv;
	private Estado estado;
	
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getApellidomat() {
		return apellidomat;
	}
	public void setApellidomat(String apellidomat) {
		this.apellidomat = apellidomat;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public Distrito getDistrito() {
		return distrito;
	}
	public void setDistrito(Distrito distrito) {
		this.distrito = distrito;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public Double getSueldo() {
		return sueldo;
	}
	public void setSueldo(Double sueldo) {
		this.sueldo = sueldo;
	}
	public Cargo getCargo() {
		return cargo;
	}
	public void setCargo(Cargo cargo) {
		this.cargo = cargo;
	}
	public  byte[]  getCv() {
		return cv;
	}
	public void setCv(byte[] cv) {
		this.cv = cv;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	} 
 
	
	 

}