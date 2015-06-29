<%@ taglib prefix="s" uri="/struts-tags"%>

	<h1>
		<s:text name="titulo.empleado.edicion"/>
	</h1>

	<s:form action="editarEmpleado" method="post"  namespace="/empleado"
	enctype="multipart/form-data">

		<s:hidden name="empleado.codigo" />

		<s:textfield name="empleado.nombre" key="label.nombre"/>
		<s:textfield name="empleado.apellido" key="label.apellido" /> 
		<s:textfield name="empleado.apellidomat" key="label.apellidomat" /> 
		<s:textfield name="empleado.telefono" key="label.telefono" /> 
		  <s:select list="distritos" name="empleado.distrito.codigo"
			key="label.distrito" listKey="codigo" listValue="descripcion" /> 
			
			<s:textfield name="empleado.direccion" key="label.direccion" /> 
		<s:textfield name="empleado.email" key="label.email" />	 
			<s:radio list="generos" key="label.genero" name="empleado.genero"/>	
	<s:textfield name="empleado.sueldo" key="label.sueldo" />
	 <s:select list="cargos" name="empleado.cargo.codigo"
			key="label.cargo" listKey="codigo" listValue="descripcion" /> 
	
	<s:file key="label.cv" name="cv" />
		 <s:select list="estados" name="empleado.estado.codigo"
			key="label.estado" listKey="codigo" listValue="descripcion" /> 
			
		<s:submit value="%{getText('accion.grabar')}" />

	</s:form>

