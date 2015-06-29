<%@taglib prefix="s" uri="/struts-tags"%>


    <div class="container_12">
        <div class="grid_12 header-repeat">
            <div id="branding">
                <div class="floatleft">
                    <img src="${pageContext.request.contextPath}/images/logo.png"
	alt="logo" style="height: 40px; width: 150px" ></div>
                <div class="floatright">
                    <div class="floatleft">
                        <img src="${pageContext.request.contextPath}/images/img-profile.jpg" alt="Profile" /></div>
                    <div class="floatleft marginleft10">
                        <ul class="inline-ul floatleft">
                            <s:actionmessage escape="false"/>
                            <!-- <li><a href="#">Config</a></li> -->
                            <li><a href="<s:url action="logoutUsuario" namespace="/seguridad"/>"><s:text name="accion.logout"/></a></li>
                        </ul>
                        <br />
                        <%-- <span class="small grey">Last Login: 3 hours ago</span> --%>
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="grid_12">
            <ul class="nav main">
                <li class="ic-dashboard"><a href="#"><span>Inicio</span></a> </li>
                <li class="ic-form-style"><a href="javascript:"><span>Vmenu</span></a>
                    <ul>
                        <li><a href=#>Vmenu</a> </li>
                        <li><a href="buttons.html">Buttons</a> </li>
                        <li><a href="#"> Vmenu</a> </li>
                        <li><a href="#">Vmenu</a> </li>
                    </ul>
                </li>
				<li class="ic-typography"><a href="#"><span>Vmenu</span></a></li>
<%--                 <li class="ic-charts"><a href="#"><span>Vmenu</span></a></li>
                <li class="ic-grid-tables"><a href="#"><span>Vmenu</span></a></li> --%>
                <li class="ic-gallery dd"><a href="#"><span>Vmenu</span></a>
               		 <ul>
                        <li><a href="#">Vmenu</a> </li>
                        <li><a href="#">Vmenu</a> </li>
                    </ul>
                </li>
                <li class="ic-notifications"><a href="#"><span>Vmenu</span></a></li>

            </ul>
        </div>
        <div class="clear">
        </div>
    </div>
       

