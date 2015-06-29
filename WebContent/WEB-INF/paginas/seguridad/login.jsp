<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medikids</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style-login.css"
	media="all" />
</head>
<body>

	<div class="login">
		<div class=login-screen>
			<div class="app-title">
				<h1><s:text name="parrafo.login"/></h1>
			</div>
			<div class="login-form">
			<s:form action="loginUsuario" namespace="/seguridad">

					<div class="control-group">
						<s:textfield key='label.usuario' name="usuario.cuenta"/>
					</div>
					<div class="control-group">
						<s:password key='label.contrasena' name="usuario.contrasena"/>
					</div>
					<s:submit ccClass="btn btn-primary btn-large btn-block" value="%{getText('accion.login')}" cssStyle="background-color: #A0D7F2"/>

			</s:form>
			</div>
		</div>
	</div>
</body>
</html>