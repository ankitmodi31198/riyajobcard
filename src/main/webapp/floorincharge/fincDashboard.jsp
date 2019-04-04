<%@ include file="../header.html" %>
    <title>Hello, world!</title>
  </head>
 <script type = "text/javascript" >
        function preventBack() { window.history.forward(1); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
        function check(){
        	<%
        	if(session.getAttribute("officer_username")==null)
        	{
        		
        		response.sendRedirect("../index.jsp");
        	}
        	%>
        }
</script> 
  <body onload="check()">
    
    <!-- Sidebar -->
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width:20%">
        <h3 class="w3-bar-item">Menu</h3>
        <a href="fincDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
       	<a href="pendinglist.jsp" class="w3-bar-item w3-button">Pending Cars</a>
       	<a href="repairedlist.jsp" class="w3-bar-item w3-button">Repaired Cars</a> 
    </div>

    <!-- Page Content -->
    <div style="margin-left:20%">

        <div class="w3-container dashboard-header">
          <h3>JCMS</h3>
        </div>
        
        <!-- breadcrumbs at top of the page -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" aria-current="page"><a href="fincDashboard.jsp">Dashboard</a> / </li>
            </ol>
        </nav>    

        <!-- dashboard -->
        <div class="my-dashboard">
            <div class="my-dashboard-header">
                <center>
                    <h4>Superviser Dashboard</h4>
                </center>
            </div>
            
                    <div class="row">
                    	<div class="col-md-4">
                        <a href="pendinglist.jsp" class="my-dashboard-box-link">
                            <div class="my-dashboard-box">
                                <div class="my-dashboard-box-header">
                                    <h6>Pending Car<i class="fa fa-car-side"></i></h6>
                                </div>
                                <div class="my-dashboard-box-content">
                                    <div class="row">
                                        <div class="col-md-10">Your Pending cars</div>
                                        <div class="col-md-2">
                                        	<span class='numscroller' data-min='0' data-max=2 data-delay='0.5' data-increment='1'>2</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="repairedlist.jsp" class="my-dashboard-box-link">
                            <div class="my-dashboard-box">
                                <div class="my-dashboard-box-header">
                                    <h6>repaired Cars <i class="fa fa-check-circle"></i></h6>
                                </div>
                                <div class="my-dashboard-box-content">
                                    <div class="row">
                                        <div class="col-md-10">Your repaired cars</div>
                                        <div class="col-md-2">
                                        	<span class='numscroller' data-min='0' data-max=2 data-delay='0.5' data-increment='1'>2</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    </div>
                    
                </div>
            </div>
        </div>

    </div>
<%@include file="../footer.html"%>