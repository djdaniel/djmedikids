package action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class CvAction extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7876207223376022877L;
	private InputStream cv;
	private SessionMap<String, Object> sessionMap;
		
	
	public String execute(){
		byte[] cv=(byte[])sessionMap.get("cv");
		InputStream is=new ByteArrayInputStream(cv);
		setCv(is);
		sessionMap.remove("cv");
		return SUCCESS;
	}
	
	public InputStream getCv() {
		return cv;
	}
	
	private void setCv(InputStream cv) {
		this.cv = cv;
		
	}


	@Override
	public void setSession(Map<String, Object> arg0) {
		sessionMap=(SessionMap<String, Object>)arg0;
		
	}

}
