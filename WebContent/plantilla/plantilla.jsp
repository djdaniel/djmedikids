<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Medikids</title>

	 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/text.css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/grid.css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layout.css" media="all" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css" media="all" />
    
    
    <link href="${pageContext.request.contextPath}/css/demo_page.css" rel="stylesheet" type="text/css" media="all" />
    <!-- BEGIN: load jquery -->
    <script src="${pageContext.request.contextPath}/js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui/jquery.ui.core.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui/jquery.effects.core.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui/jquery.effects.slide.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui/jquery.ui.mouse.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui/jquery.ui.sortable.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/table/jquery.dataTables.min.js" type="text/javascript"></script>
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.jqplot.min.css" />
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="js/jqPlot/excanvas.min.js"></script><![endif]-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/jquery.jqplot.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.canvasTextRenderer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.barRenderer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.pieRenderer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.highlighter.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.pointLabels.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.donutRenderer.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPlot/plugins/jqplot.bubbleRenderer.min.js"></script>
    
    <!-- END: load jquery -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/table/table.js"></script>
    <script src="${pageContext.request.contextPath}/js/setup.js" type="text/javascript"></script>
    
<script type="text/javascript">

        $(document).ready(function () {
            setupLeftMenu();

            $('.datatable').dataTable();
			setSidebarHeight();


        });
    </script>
    

</head>
<body>
	
			<tiles:insertAttribute name="cabecera" />
			<tiles:insertAttribute name="menu" />
			<tiles:insertAttribute name="contenido" />
			<tiles:insertAttribute name="pie" />


</body>
</html>