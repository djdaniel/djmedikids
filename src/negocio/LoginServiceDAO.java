package negocio;

import org.apache.ibatis.session.SqlSession;

import persistencia.mybatis.mapper.UsuarioMapper;
import util.MyBatisUtil;
import model.Usuario;

//extendemos el mybatisgeneric y implementamos el loginservice y importamos el metodo creado 
public class LoginServiceDAO  implements LoginService{

	@Override
	public String ValidarUsuario(Usuario usuario) throws Exception {
		
		SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
		UsuarioMapper usuarioMapper=session.getMapper(UsuarioMapper.class);
		String nombre=usuarioMapper.getNombreUsuario(usuario);
		
		session.close();
	          
		return nombre;
	}
	

}
