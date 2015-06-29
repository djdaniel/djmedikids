
<%@ taglib prefix="s"  uri="/struts-tags" %>  

    
<div class="container_12">
	<div class="grid_10">
            <div class="box round first">
            
		<h2><s:text name="titulo.empleado.busqueda"/></h2>
		<div class="block">
		 
		<!-- FORMULARIO DE BUSQUEDA -->
		<s:form action="buscarEmpleado" namespace="/empleado"  >
		<table class="form">
                        <tr>
                            <td class="col1">
                                <s:textfield name="empleado.nombre"  key="label.nombre"/>
                            </td>
                        </tr>
                        </table>
                        <s:submit value="%{getText('accion.buscar')}" cssClass="btn btn-navy"/>
		
		
        <div class="clear">
        </div>
		</s:form>
		 
		<!-- enlace a nuevo-->
		<br>
		<h4>
		<s:a action="nuevoEmpleado" namespace="/empleado">
			<s:text name="titulo.empleado.nuevo" />
		</s:a></h4>
		
		<hr/>
		<s:actionmessage escape="false"/>
		<hr/>
		
		<!-- listado de Empleados-->
		<s:if test="!empleados.isEmpty">
		
			<table class="data display datatable" id="example">
				<thead>
					<tr class="titulos">
						<th><s:text name="label.codigo"/></th>
						<th><s:text name="label.nombre"/></th>
						<th><s:text name="label.apellido"/></th>
						<th><s:text name="label.actualizar"/></th>
						<th><s:text name="label.eliminar"/></th> 
					</tr>
				</thead>
				<s:iterator value="empleados" status="status">	
					<tr class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
					 <td><s:property value="codigo"/>	</td>
					 <td><s:property value="nombre"/>	</td>
					 <td><s:property value="apellido"/>	</td>
					 <td>
					 		<s:url action="cargarEmpleado"
					 			   id="actualizar"
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{actualizar}"><s:text name="accion.actualizar.inicial"/></s:a>
					 </td>
					  <td>	
					 		<s:url action="eliminarEmpleado"
					 			   id="eliminar" 
					 			   namespace="/empleado">
					 			<s:param name="empleado.codigo">
					 				<s:property value="codigo"/>
					 			</s:param>
					 		</s:url>
					 		<s:a href="%{eliminar}"><s:text name="accion.eliminar.inicial"/></s:a>
					 </td>  
					</tr>
				</s:iterator>
			</table>
			
		</s:if> 
		
		</div>
	</div>
</div>
</div>
<div class="clear">
        </div>
