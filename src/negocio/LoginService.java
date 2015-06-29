package negocio;

import model.Usuario;

public interface LoginService {
	//Creamos primero las interfaces
	public String ValidarUsuario(Usuario usuario) throws Exception;

}
