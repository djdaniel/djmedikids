package negocio;

import java.util.List;

import model.Estado;

public interface EstadoService {
	public List<Estado> getTodos() throws Exception;
}
