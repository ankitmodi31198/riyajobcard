<%@page import="modal.VehicleInfo"%>
<%@page import="java.util.Date"%>
<%@page import="modal.CustomerInfo"%>
<%@page import="modal.VehicleModelDao"%>
<%@page import="modal.VehicleInfoDao"%>
<%@page import="modal.CustomerInfoDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="modal.JobcardInfo"%>
<%@page import="modal.JobcardInfoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" type="text/css" media="screen" href="../materialize/css/materialize.css"> -->
    <!-- <link rel="stylesheet" href="../materialize/css/materialize.css"> -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/style.css">

    <!-- w3 links -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- fontawesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <!-- <script src="../materialize/js/materialize.js"></script> -->
    <!-- <script src="../materialize/js/materialize.min.js"></script> -->
     <script src="../public/js/jquery.dataTables.min.js"></script>
    <script src="../public/js/data-tables-script.js"></script>
    
    <!-- <script src="./main.js"></script> -->
    <!-- <link rel="stylesheet" href="./customize.css"> -->
    <link rel="stylesheet" href="../public/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../public/style.css">
    <!-- /links.html -->
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/style.css">

    <!-- w3 links -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- fontawesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <% String officer_username = (String)session.getAttribute("officer_username");
    	String officer_name = (String)session.getAttribute("officer_name");
    	String officer_role = (String)session.getAttribute("officer_role");
    %>
    <!-- Sidebar -->
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width:20%">
        <h3 class="w3-bar-item">Menu</h3>
        <a href="saDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
        <a href="#" class="w3-bar-item w3-button">Search Customer</a>
        <a href="#" class="w3-bar-item w3-button">Logout</a>
    </div>

    <!-- Page Content -->
    <div style="margin-left:20%">

        <div class="w3-container dashboard-header">
          <h3>JCMS</h3>
        </div>

        <!-- breadcrumbs at top of the page -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="saDashboard.jsp">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Completed Cars</li>
            </ol>
        </nav>    
        
        <!-- dashboard -->
        <div class="my-dashboard">
            <div class="my-dashboard-header">
                <center>
                    <h4>Completed Cars list</h4>
                </center>
            </div>
            <div class="container-95 mt-5">
	   		<table id="data-table-simple-1" class="table">
			   	<thead style="text-align: center;">
			   		<tr>
			   			<th>Vehicle No.</th>			   				
			   			<th>Date</th>
			   			<th>Name</th>
			   			<th>Car Name</th> 
			   			<th>VIN</th>
			   			<th>JobCard No.</th>
			   			<th>Delivery Date</th>
			   			<th>Amount</th>	
			   			<th>Action</th>
			   		</tr>
			   	</thead>
			   	<tbody style="font-size: 12px; text-align: center;">
			   		<% List<JobcardInfo> list = JobcardInfoDao.getList(officer_username,"completed");
						Iterator<JobcardInfo> itr = list.iterator();
						while (itr.hasNext())
						{
							JobcardInfo jci =  itr.next();
							String vehicle_number = jci.getVehicleNumber();
							String customer_name = CustomerInfoDao.getNameByNumber(vehicle_number);
							int vehicle_model_id = VehicleInfoDao.getModelByNumber(vehicle_number);
							String company_model = VehicleModelDao.getModelName(vehicle_model_id);
							VehicleInfo vi = VehicleInfoDao.getAllByNumber(vehicle_number);
							String vin_no = vi.getVinNumber();
							JobcardInfo ji = JobcardInfoDao.getAllByNumber(vehicle_number);
							String arrival_date = ji.getArrivalDate();
							String delivery_date = ji.getDeliveryDate();
							int jobcard_no = JobcardInfoDao.getJNByNumber(vehicle_number,"completed");			
							String link="completedview.jsp?id="+jobcard_no;
							%>
							<tr>
                            <td><%= vehicle_number %></td>
                            <td><%=arrival_date%></td>
                            <td><%=customer_name%></td>
                            <td><%=company_model%></td>
                            <td><%=vin_no%></td>
                            <td><%=jobcard_no%></td>
                            <td><%=delivery_date%></td>
                            <td>10000</td>
                            <td><a href=<%= link %>>View</a></td>
                            </tr>	 
							
							<!-- Final Amount ka code likhna baki hai..Also in data dictionary -->
							
						
						<%	 
						} 
					%>
			   	</tbody>
	   		</table>
		</div>
            
            <div class="my-dashboard-content mt-3">
                <div class="row">
                    <!-- Put the iterator over here, put this whole div in the loop and the cards will be set accordingly -->
                    <!-- LOOP Starts -->
                    
          
                </div>
            </div>
        </div>
    </div>
<footer class="my-footer">
        <div class="my-footer-copyright container-95">
            Copyright @ JCMS 2019
        </div>
    </footer>


    <!-- jslink.html -->
    <script>
        function w3_open() {
            // document.getElementById("main").style.marginLeft = "25%";
            document.getElementById("mySidebar").style.width = "25%";
            document.getElementById("mySidebar").style.display = "block";
            // document.getElementById("openNav").style.display = 'none';
        }
        function w3_close() {
            // document.getElementById("main").style.marginLeft = "0%";
            document.getElementById("mySidebar").style.display = "none";
            // document.getElementById("openNav").style.display = "inline-block";
        }
    </script>

    <script>
        var vsd = document.getElementById("verify-static-details");
        var ef = document.getElementById("edit-form");

        ef.style.display = "none";
        function editButtonClicked() {           

            vsd.style.display = "none";
            ef.style.display = "block";
        }
        function cancelButtonClicked() {
            vsd.style.display = "block";
            ef.style.display = "none";
        }
    </script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    
 </body>
</html>