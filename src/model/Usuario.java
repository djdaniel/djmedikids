package model;

public class Usuario {
	
	private Integer idusuario;
	private Integer idemp;
	private String nomUsu;
	
	private String cuenta;
	private String contrasena;
	private Integer idestado;
	private Integer idrol;
	
	public String getCuenta() {
		return cuenta;
	}


	public String getContrasena() {
		return contrasena;
	}


	public void setCuenta(String cuenta) {
		this.cuenta = cuenta;
	}


	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	
	
/*	public Usuario(Integer idusuario, Integer idemp, String nomUsu,
			String usuario, String password, Integer idestado, Integer idrol) {
		this.idusuario = idusuario;
		this.idemp = idemp;
		this.nomUsu = nomUsu;
		this.usuario = usuario;
		this.password = password;
		this.idestado = idestado;
		this.idrol = idrol;
	}*/


	public Integer getIdusuario() {
		return idusuario;
	}


	public Integer getIdemp() {
		return idemp;
	}


	public String getNomUsu() {
		return nomUsu;
	}


	public Integer getIdestado() {
		return idestado;
	}


	public Integer getIdrol() {
		return idrol;
	}


	public void setIdusuario(Integer idusuario) {
		this.idusuario = idusuario;
	}


	public void setIdemp(Integer idemp) {
		this.idemp = idemp;
	}


	public void setNomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}


	public void setIdestado(Integer idestado) {
		this.idestado = idestado;
	}


	public void setIdrol(Integer idrol) {
		this.idrol = idrol;
	}
	
	
	
	
	
	
	

}
