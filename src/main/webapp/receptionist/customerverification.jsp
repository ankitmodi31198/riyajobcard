<%@page import="modal.JobcardInfoDao"%>
<%@page import="modal.VehicleModelDao"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.awt.*"%>
<%@page import="modal.OfficerInfo" %>
<%@page import="modal.OfficerInfoDao"%>
<%@page import="modal.VehicleInfo"%>
<%@page import="modal.VehicleInfoDao"%>
<%@page import="modal.CustomerInfoDao"%>
<%@page import="modal.CustomerInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <header>
        <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large"
            onclick="w3_close()">Close &times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>
    </header>

    <main id="main">
        <div class="my-new-header">
            <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&#9776;</button>
            <span>JCMS</span>
        </div>
        
        <div class="my-form-heading">
            <h5>Verify Details</h5>
        </div>               
        <div class="container-95">
            <div class="customer-verification-info">
                <div class="row">
                    <div class="col-md-1">
                        <i class="fa fa-car" style="font-size: 50px;"></i>
                    </div>
                    
                    <%
			String vehicle_number = (String) session.getAttribute("vehicle_number");
			CustomerInfo ci = CustomerInfoDao.getAllByNumber(vehicle_number);
			VehicleInfo vi = VehicleInfoDao.getAllByNumber(vehicle_number);
			String vehicle_model_id = VehicleInfoDao.getModelByNumber(vehicle_number);
			String company_model = VehicleModelDao.getModelName(vehicle_model_id);
			
		%>
                    <div class="col-md-11 customer-verification-info-vehicle-number">
                        <%=session.getAttribute("vehicle_number") %>
                    </div>
                </div>

                <div class="row my-form-row">
                    <div class="col-md-6">
                        <h6>Customer's Details</h6>
                        <table class="table table-striped table-bordered customer-verification-info-table">
                            <tbody>
                                <tr>
                                    <th>Name</th>
                                        <td><%= ci.getCustomerName() %></td>
                                </tr>
                                <tr>
                                    <th>Contact</th>
                                        <td><%= ci.getCustomerContact() %></td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                        <td><%= ci.getCustomerEmail() %></td>
                                </tr>
                                <tr>
                                    <th>RC Number</th>
                                        <td><%= ci.getCustomerRc() %></td>
                                </tr>
                                <tr>
                                    <th>Aadhaar Number</th>
                                        <td><%=ci.getCustomerAadhaar() %></td>
                                </tr>
                                <tr>
                                    <th>Lisence Number</th>
                                        <td><%=ci.getCustomerLicense() %></td>
                                </tr>                                
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6">
                        <h6>Vehicle's Details</h6>
                        <table class="table table-striped table-bordered customer-verification-info-table">
                            <tbody>
                                <tr>
                                    <th>Vehicle Number</th>
                                        <td><%= vehicle_number %></td>
                                </tr>
                                <tr>
                                    <th>VIN</th>
                                        <td><%= vi.getVinNumber() %></td>
                                </tr>
                                <tr>
                                    <th>Engine Number</th>
                                        <td><%=vi.getEngineNumber() %></td>
                                </tr>
                                <tr>
                                    <th>Car</th>
                                        <td><%= company_model %></td>
                                </tr>
                                <tr>
                                    <th>Fuel Type</th>
                                        <td><%=vi.getFuelType() %></td>
                                </tr>
                                <tr>
                                    <th>Vehicle Type</th>
                                        <td><%=vi.getVehicleType() %></td>
                                </tr>                                
                            </tbody>
                        </table>
                    </div>                    
                </div>

                <form action="../AllocateServiceAdvisor" method="post">
                    <div class="row officer-select">
                        <div class="col-md"></div>
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="officer_id">Service Advisor</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <select name="officer_username" id="officer_username">
                                    <%
                                    	List<OfficerInfo> list = OfficerInfoDao.getByOfficerRole("service_advisor");
                                    	Iterator<OfficerInfo> itr = list.iterator();
                                    	while(itr.hasNext()) {
                                    		OfficerInfo oi = itr.next();
                                    		int count = JobcardInfoDao.getTotal(oi.getOfficerUsername(),"pending");
											out.print("<option value="+ oi.getOfficerUsername() +"> "+ oi.getOfficerName() +" "+count+ " </option>");
                                    	}
                                    %>                                                                           
                                    </select>
                                </div>
                                
                            </div>
                            <input type="hidden" name="vehicle_number" value="<%= vehicle_number %>">
                           <%--  <input type="date" value="<%= LocalDate.now() %>" name="arrival_date">
                            <input type="time" value="<%= LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm")) %>" name="arrival_time"> --%>
                            <div class="row">
                                <div class="col-md-12">
                                    <input type="submit" name="submit" id="submit" value="Allocate" class="btn btn-secondary btn-sm">
                                </div>
                            </div>
                        </div>
                        <div class="col-md"></div>
                    </div>
                </form>

                <!-- <div class="row my-form-row customer-verification-info">
                    <div class="col-md-6">
                        <h6>Customer's Details</h6>
                        <div class="row mt-4">
                            <div class="col-md-3">
                                Name : 
                            </div>
                            <div class="col-md-3">
                                Jash Patel
                            </div>
                            <div class="col-md-3">
                                RC Number : 
                            </div>
                            <div class="col-md-3">
                                XYZ12345
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md-3">
                                Contact : 
                            </div>
                            <div class="col-md-3">
                                8734804914
                            </div>
                            <div class="col-md-3">
                                Aadhaar Number : 
                            </div>
                            <div class="col-md-3">
                                123456789123
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md-2">
                                Email : 
                            </div>
                            <div class="col-md-4">
                                jashdetroj@gmail.com
                            </div>                                                        
                            <div class="col-md-3">
                                License Number : 
                            </div>
                            <div class="col-md-3">
                                LSC123456
                            </div>   
                        </div>                                                    
                    </div>
                    <div class="col-md-6">
                        <h6>Vehicle's Details</h6>
                        <div class="row mt-4">
                            <div class="col-md-3">
                                Name : 
                            </div>
                            <div class="col-md-3">
                                Jash Patel
                            </div>
                            <div class="col-md-3">
                                RC Number : 
                            </div>
                            <div class="col-md-3">
                                XYZ12345
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md-3">
                                Contact : 
                            </div>
                            <div class="col-md-3">
                                8734804914
                            </div>
                            <div class="col-md-3">
                                Aadhaar Number : 
                            </div>
                            <div class="col-md-3">
                                123456789123
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md-2">
                                Email : 
                            </div>
                            <div class="col-md-4">
                                jashdetroj@gmail.com
                            </div>                                                        
                            <div class="col-md-3">
                                License Number : 
                            </div>
                            <div class="col-md-3">
                                LSC123456
                            </div>   
                        </div>     -->
                    </div>
                </div>
            </div>            
        </div>
    </main>

    <footer class="my-footer">
        <div class="my-footer-copyright container-95">
            Copyright @ JCMS 2019
        </div>
    </footer>

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
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>