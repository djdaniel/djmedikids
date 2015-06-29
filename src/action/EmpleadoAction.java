package action;


import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map; 

import org.apache.commons.io.IOUtils;

import negocio.CargoService;
import negocio.CargoServiceDAO;
import negocio.DistritoService;
import negocio.DistritoServiceDAO;
import negocio.EmpleadoService;
import negocio.EmpleadoServiceDAO;
import negocio.EstadoService;
import negocio.EstadoServiceDAO;
import util.Constantes; 
import model.Cargo;
import model.Distrito;
import model.Empleado;
import model.Estado;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class EmpleadoAction extends ActionSupport implements Preparable{
	
	private static final long serialVersionUID = 6079763663395985208L;
	
	//objetos I/O para uso en JSP 
	private Empleado empleado; 
	private List<Empleado> empleados; 
 
	private EmpleadoService empleadoService= new EmpleadoServiceDAO();
	private List<Distrito> distritos;
	private List<Cargo> cargos; 
	private Map<String, String> generos;
	private List<Estado> estados;
	private File cv;
	
	
	public Empleado getEmpleado() {
		return empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}
	
	public Map<String, String> getGeneros() {
		return generos;
	}
	
	public List<Empleado> getEmpleados() {
		return empleados;
	}

	public void setEmpleados(List<Empleado> empleados) {
		this.empleados = empleados;
	}
	
	public List<Distrito> getDistritos() {
		return distritos;
	}
	public List<Cargo> getCargos() {
		return cargos;
	}
		public List<Estado> getEstados() {
		return estados;
	}
		public File getCv() {
			return cv;
		}

		public void setCv(File cv) {
			this.cv = cv;
		}
 
	public String buscar() throws Exception{
		empleados=empleadoService.buscar(empleado);
		return SUCCESS;
	}
	
	public String editar() throws Exception{
		if(empleado.getCodigo()==null){
			
			 
			if(cv!=null){
				empleado.setCv(IOUtils.toByteArray(new FileInputStream(cv)));
			}
			empleadoService.registrar(empleado);

			String[] params=new String[]{getText(Constantes.MODULO_EMPLEADO)};
			
			addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
			
		}else{
			empleadoService.actualizar(empleado);
			String[] params=new String[]{
					getText(Constantes.MODULO_VENDEDOR),
					empleado.getCodigo().toString()};
			
			addActionMessage(getText(Constantes.MENSAJE_UPDATE_OK,params));
		}
		
		return SUCCESS;
	}
	
	public String eliminar() throws Exception{
		empleadoService.eliminar(empleado.getCodigo());
		
		String[] params=new String[]{
				getText(Constantes.MODULO_VENDEDOR),
				empleado.getCodigo().toString()};
		
		addActionMessage(getText(Constantes.MENSAJE_DELETE_OK,params));
		
		return SUCCESS;
	}

	//MÉTODO QUE SOLICITA EL REGISTRO DEL EMPLEADO
	/* public String registrar() throws Exception {
		
		//delega a servicio
		EmpleadoService empleadoService=new EmpleadoServiceDAO();
		empleadoService.registrar(empleado);
		
		//set de mensaje informativo
		String[] params=new String[]{getText(Constantes.MODULO_EMPLEADO)};		
		addActionMessage(getText(Constantes.MENSAJE_INSERT_OK,params));
		
		return SUCCESS;
	
	} */
	@Override
	public void prepare() throws Exception {
		DistritoService distritoService=new DistritoServiceDAO();
		distritos=distritoService.getTodos();
		
		CargoService cargoService=new CargoServiceDAO();
		cargos=cargoService.getTodos();
				
		EstadoService estadoService=new EstadoServiceDAO();
		estados=estadoService.getTodos();
		  
		generos= new HashMap<String, String>();
		generos.put(Constantes.GENERO_FEMENINO_COD, getText(Constantes.GENERO_FEMENINO_DES));
		generos.put(Constantes.GENERO_MASCULINO_COD, getText(Constantes.GENERO_MASCULINO_DES));
		/*if(empleado.getCodigo()!=null)
			empleado=empleadoService.obtener(empleado.getCodigo());*/
		
	}

	
	

}
