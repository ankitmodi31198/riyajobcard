<%@page import="java.util.Iterator"%>
<%@page import="modal.OfficerInfoDao"%>
<%@page import="modal.OfficerInfo"%>
<%@page import="java.util.List"%>
<%@ include file="../header.html" %>
<title>Receptionist Dashboard</title>
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
        <a href="receptionistDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
        <a href="search.jsp" class="w3-bar-item w3-button">Search Customer</a>
        <a href="serviceadvisorlist.jsp" class="w3-bar-item w3-button">Service Advisor List</a>
        <a href="servicedetails.jsp" class="w3-bar-item w3-button">Service Details</a>
        <a href="reports.jsp" class="w3-bar-item w3-button">Reports</a>
        <!-- <a href="#" class="w3-bar-item w3-button">Logout</a> -->
        <form action="../Logout" method="POST">
		<input type="submit" value="Log Out"/></form>
    </div>

    <!-- Page Content -->
    <div style="margin-left:20%">

        <div class="w3-container dashboard-header">
          <h3>JCMS</h3>
        </div>
        
        <!-- breadcrumbs at top of the page -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" aria-current="page"><a href="receptionistDashboard.jsp">Dashboard</a> / </li>
            </ol>
        </nav>    

        <!-- dashboard -->
        <div class="my-dashboard">
            <div class="my-dashboard-header">
                <center>
                    <h4>Receptionist Dashboard</h4>
                </center>
            </div>
            <div class="my-dashboard-content mt-3">
                <div class="row">
                    <div class="col-md-4">
                        <!-- whole card is given as a link, so give href in the below anchor tag -->
                        <a href="search.jsp" class="my-dashboard-box-link">
                            <div class="my-dashboard-box">
                                <div class="my-dashboard-box-header">
                                    <h6>Search <i class="fa fa-tools"></i></h6>
                                </div>
                                <div class="my-dashboard-box-content">
                                    <div class="row">
                                        <div class="col-md-10">Click</div>
                                        
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="serviceadvisorlist.jsp" class="my-dashboard-box-link">
                            <div class="my-dashboard-box">
                                <div class="my-dashboard-box-header">
                                    <h6>Service Advisor List <i class="fa fa-car-side"></i></h6>
                                </div>
                                <div class="my-dashboard-box-content">
                                    <div class="row">
                                        <div class="col-md-10">Service Advisor</div>
                                        <div class="col-md-2">
                                        <% List<OfficerInfo> list = OfficerInfoDao.getByOfficerRole("service_advisor");
											Iterator<OfficerInfo> itr = list.iterator();
											int sa_count = 0;
											while (itr.hasNext())
											{
												OfficerInfo oi =  itr.next();
												sa_count++;
											}
											%>
											<span class='numscroller' data-min='0' data-max=<%= sa_count %> data-delay='0.5' data-increment='1'><%= sa_count %></span>
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
    <main>
        <!-- <form class="form-inline">
            <label class="" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">                                                            
            
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </form> -->
        
    </main>

<%@ include file="../footer.html" %>