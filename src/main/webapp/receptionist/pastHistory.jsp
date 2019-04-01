<%@page import="modal.OfficerInfo"%>
<%@page import="modal.OfficerInfoDao"%>
<%@page import="modal.VehicleInfo"%>
<%@page import="modal.HistoryDao"%>
<%@page import="modal.History"%>
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

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
    <!-- Sidebar -->
    <div class="w3-sidebar w3-light-grey w3-bar-block" style="width:20%">
        <h3 class="w3-bar-item">Menu</h3>
        <a href="receptionistDashboard.jsp" class="w3-bar-item w3-button">Dashboard</a>
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
                <li class="breadcrumb-item"><a href="receptionistDashboard.jsp">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">PassHistoy Cars list</li>
            </ol>
        </nav>    
        
        <% String vehicleNumber = (String)session.getAttribute("vehicle_number"); %>
        <!-- dashboard -->
        <div class="my-dashboard">
            <div class="my-dashboard-header">
                <center>
                    <h4> <%= vehicleNumber %></h4>
                </center>
            </div>
        </div>
		<div class="container mt-5">
	   		<table id="data-table-simple-1" class="table">
			   	<thead style="text-align: center; font-size: 14px;">
			   		<tr>
			   			<th>Customer Name</th>
			   			<th>Date</th>
			   			<th>Service Advisor Name</th>
			   			<th>Running KM</th>
			   			<th>Service Type </th>	
			   			<th>Action</th>
			   		</tr>
			   	</thead>
			   	<tbody style="font-size: 12px; text-align: center;">
			   		 <% List<History> list = HistoryDao.getByNumber(vehicleNumber);
						Iterator<History> itr = list.iterator();
						while (itr.hasNext())
						{
							History h =  itr.next();
							VehicleInfo vi = VehicleInfoDao.getAllByNumber(vehicleNumber);
							JobcardInfo ji = JobcardInfoDao.getAllByNumber(vehicleNumber);
							String Customername= CustomerInfoDao.getNameByNumber(vehicleNumber);
							String username = h.getOfficerUsername();
							OfficerInfo oi = OfficerInfoDao.getByUsername(username);
							int jobcard_no = JobcardInfoDao.getJNByNumber(vehicleNumber);		
							String link="passHistoryview.jsp?id="+jobcard_no;
							%>
							<tr>
                            <td><%= Customername %></td>
                            <td><%=h.getDeliveryDate()%></td>
                            <td><%=oi.getOfficerName()%></td>
                            <td><%=h.getRunningKM()%></td>
                            
                            <td><%=h.getWorkType()%></td>
                           
                          
                            <td><a href=<%= link %>>View</a></td>
                            </tr>	 

						<%	 
						} 
					%>
			   	</tbody>
	   		</table>
		</div>

		<div class="w3-container" style="margin-left: 400px; margin-top: 100px;">
		  <a href='customerverification.jsp' class="w3-button w3-xlarge w3-circle w3-black" style="text-decoration: none;">+</a>Add New JobCard
		</div>
    </div>
    <main>
        <!-- <form class="form-inline">
            <label class="" for="inlineFormInputName2">Name</label>
            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">                                                            
            
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </form> -->
        
    </main>

 


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