<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="container_12">
        <div class="grid_2">
            <div class="box sidemenu">
                <div class="block" id="section-menu">
                    <ul class="section menu">
                        <li><a class="menuitem">Menu 1 </a>
                            <ul class="submenu">
                                <li><a	href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"><s:text name="accion.mantenimiento" /></a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a class="active">Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                            </ul>
                        </li>
                        <li><a class="menuitem">Menu 2</a>
                            <ul class="submenu">
                                <li><a>Submenu 1</a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a>Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                            </ul>
                        </li>
                        <li><a class="menuitem">Menu 3</a>
                            <ul class="submenu">
                                <li><a>Submenu 1</a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a>Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                            </ul>
                        </li>
                        <li><a class="menuitem">Menu 4</a>
                            <ul class="submenu">
                                <li><a>Submenu 1</a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a>Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </div>

	
		<%-- <div class="container">
		  
		  <ul>
		    <li class="dropdown">
		      <input type="checkbox" />
		      <a href="#" data-toggle="dropdown"><s:text name="titulo.menu.empleado" /></a>
		      <ul class="dropdown-menu">
			<li><a	href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"><s:text name="accion.mantenimiento" /></a></li>
			<li><a	href="<s:url action="" namespace=""/>"><s:text name="accion.mantenimiento" /></a></li>
		    <li><a	href="<s:url action="" namespace=""/>"><s:text name="accion.mantenimiento" /></a></li>
		      </ul>
		    </li>
		    <li class="dropdown">
		      <input type="checkbox" />
		      <a href="#" data-toggle="dropdown"><s:text name="agregar mas" /></a>
		      <ul class="dropdown-menu">
			<s:a action="" namespace=""/>
			<li><a	href="<s:url action="inicializarEmpleado" namespace="/empleado"/>"><s:text name="accion.mantenimiento" /></a></li>
			<li><a	href="<s:url action="" namespace=""/>"><s:text name="accion.mantenimiento" /></a></li>
			<li><a	href="<s:url action="" namespace=""/>"><s:text name="accion.mantenimiento" /></a></li>
		      </ul>
		    </li>
		  </ul>
		</div> --%>
