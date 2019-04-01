<%@page import="modal.OfficerInfo"%>
<%@page import="modal.OfficerInfoDao"%>
<%@page import="modal.VehicleModelDao"%>
<%@page import="modal.VehicleInfoDao"%>
<%@page import="modal.CustomerInfoDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="modal.JobcardInfo"%>
<%@page import="modal.JobcardInfoDao"%>

<%@include file="../header.html" %>

    <title>Hello, world!</title>
  </head>
  <body>
    <!-- openable navbar -->
    <header>
        <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large"
            onclick="w3_close()">Close &times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>
    </header>
    <!-- Page Content -->
    <main id="main">

        <div class="my-new-header">
            <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&#9776;</button>
            <span>JCMS</span>
        </div>
        <!-- breadcrumbs at top of the page -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="receptionistDashboard.jsp">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Service Advisor list</li>
            </ol>
        </nav>    
        
        <!-- dashboard -->
        <div class="my-dashboard">
            <div class="my-dashboard-header">
                <center>
                    <h4>Service Advisor list</h4>
                </center>
            </div>
        </div>
		<div class="container mt-5">
	   		<table id="data-table-simple-1" class="table">
			   	<thead style="text-align: center;">
			   		<tr>
			   			<th>Name</th>
			   			<th>Contact</th>
			   			<th>Arrived Cars</th> 
			   			<th>Pending Cars</th>
			   			<th>Repaired Cars</th>
			   			
			   			<th>Action</th>	
			   		</tr>
			   	</thead>
			   	<tbody style="font-size: 12px; text-align: center;">
			   	
			   	<% List<OfficerInfo> list = OfficerInfoDao.getByOfficerRole("service_advisor");
			Iterator<OfficerInfo> itr = list.iterator();
			while (itr.hasNext())
			{
				OfficerInfo oi =  itr.next();
				int count = JobcardInfoDao.getTotal(oi.getOfficerUsername(),"arrived");
				int count1 = JobcardInfoDao.getTotal(oi.getOfficerUsername(),"pending");
				int count2 = JobcardInfoDao.getTotal(oi.getOfficerUsername(),"Repaired");
				
				String link = "advisorview.jsp?id="+oi.getOfficerUsername();
				String newarrivallistlink = "newarrivallist.jsp?id="+oi.getOfficerUsername();
				String pendinglistlink = "pendinglist.jsp?id="+oi.getOfficerUsername();
				String repaiedlistlink = "repaiedlist.jsp?id="+oi.getOfficerUsername();
				
			%>
			   		<tr>
			   			<td><%= oi.getOfficerName() %></td>
			   			<td><%= oi.getOfficerContact() %></td>
			   			<td><a href=<%=newarrivallistlink %> ><%= count %></a></td>
			   			<td><a href=<%=pendinglistlink %> ><%= count1 %></a></td>
			   			<td><a href=<%=repaiedlistlink %> ><%= count2 %></a></td>
			   			
			   			<td><a href=<%=link %>>View</a></td>
			   		</tr>
			   	<% 
			   	}
			%>	
			   	</tbody>
			   	
	   		</table>
		</div>

    </div>
        <!-- <form class="form-inline">
            <label class="" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">                                                            
            
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </form> -->
        
    </main>
 <%@include file="../footer.html"%>