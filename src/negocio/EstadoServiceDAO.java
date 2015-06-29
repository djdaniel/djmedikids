package negocio;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
 
import persistencia.mybatis.mapper.EstadoMapper;
import util.MyBatisUtil; 
import model.Estado;

public class EstadoServiceDAO  implements EstadoService{

	@Override
	public List<Estado> getTodos() throws Exception {
SqlSession session=MyBatisUtil.getSqlSessionFactory().openSession();
		
	EstadoMapper estadoMapper=session.getMapper(EstadoMapper.class);
		List<Estado> estados=estadoMapper.getEstados();
		
		session.close();
		
		return estados; 
	}

}
