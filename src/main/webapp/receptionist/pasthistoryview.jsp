 <%@page import="modal.VehicleCompanyDao"%>
<%@page import="modal.VehicleModelDao"%>
<%@page import="modal.JcLubricantDao"%>
<%@page import="modal.JcLubricant"%>
<%@page import="modal.JcServiceDao"%>
<%@page import="modal.JcService"%>
<%@page import="modal.VehiclePartDetailsDao"%>
<%@page import="modal.VehiclePartDetails"%>
<%@page import="java.util.Iterator"%>
<%@page import="modal.JcPart"%>
<%@page import="java.util.List"%>
<%@page import="modal.JcPartDao"%>
<%@page import="modal.OfficerInfoDao"%>
<%@page import="modal.OfficerInfo"%>
<%@page import="modal.JobcardInfo"%>
<%@page import="modal.VehicleInfoDao"%>
<%@page import="modal.VehicleInfo"%>
<%@page import="modal.JobcardInfoDao"%>
<%@page import="modal.CustomerInfoDao"%>
<%@page import="modal.CustomerInfo"%>
 
 <%@include file="../header.html" %>
<%
 /*  OfficerInfo oi = OfficerInfoDao.getAllByRole("floor_incharge");
  
	History 
  String vehicle_number = JobcardInfoDao.getVNByNumber(jobcard_number);
  CustomerInfo ci = CustomerInfoDao.getAllByNumber(vehicle_number);
  VehicleInfo vi=VehicleInfoDao.getAllByNumber(vehicle_number);
  JobcardInfo ji=JobcardInfoDao.getAllByNumber(vehicle_number);
  int vehicle_company_id=	vi.getVehicleCompany();	
  int vehicle_model_id = VehicleInfoDao.getModelByNumber(vehicle_number);
  String company_model = VehicleModelDao.getModelName(vehicle_model_id);
  String company_name = VehicleCompanyDao.getCompanyName(vehicle_company_id); */
  %>  




<body>	
        
    <!-- openable navbar -->
      
 <%@include file="receptionistSidebar.html" %>

  <main id="main">
   <%@include file="../navbar.jsp" %>

	<%-- <div class="row my-form-row">
            <div class="col-md-6">
                <table class="table table-striped table-bordered customer-verification-info-table">
                    <tbody>
                        <tr>
                            <th>Vehicle Number:</th>
                            <td><%=vehicle_number %></td>
                        </tr>
                        <tr>
                            <th>Customer Name:</th>
                            <td><%= ci.getCustomerName() %></td>
                        </tr>
                        <tr>
                            <th>Contact No.:</th>
                            <td><%= ci.getCustomerContact() %></td>
                        </tr>                                        
                        <tr>
                            <th>Car Name:</th>
                            <td> <%=  company_model %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-6">
                <table class="table table-striped table-bordered customer-verification-info-table">
                    <tbody>
                        <tr>
                            <th>Arrival Date:</th>
                            <td><%= ji.getArrivalDate() %></td>
                        </tr>
                        <tr>
                            <th>Arrival Time:</th>
                            <td><%= ji.getArrivalTime() %></td>
                        </tr>
                        <tr>
                            <th>Service Adviser:</th>
                            <td><%= oi.getOfficerName() %> </td>
                        </tr>
                        <tr>
                            <th>Service Adviser Contact:</th>
                            <td><%= jobcard_number %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
             --%>
            



        <!-- <div class="container-95">
            <div class="my-form" id="verify-static-details">
                <div class="my-form-heading">
                    <h5>View Details</h5>
                </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="cname">Vehicle No:</label><br>
                                    <label for="arriavld">Arrival Date:</label>
                                    <label for="arriavlt">Arrival Time:</label>
                                    <label for="s_aname">Service Adviser:</label>
                                </div>
                                <div class="col-md-3">
                                    <label for="cname">GJ01AB1234</label><br>
                                    <label for="arriavld">22/03/2019</label>
                                    <label for="arriavlt">01:25:21</label>
                                    <label for="s_aname">Gunajan</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="cname">JobCard No:</label><br>
                                    <label for="arriavld">Delivery Date:</label>
                                    <label for="arriavlt">Delivery Time:</label>
                                    <label for="s_aname">Service Adviser Contact:</label>
                                </div>
                                <div class="col-md-3">
                                    <label for="cname">12345</label><br>
                                    <label for="arriavld">23/03/2019</label>
                                    <label for="arriavlt">01:25:23</label>
                                    <label for="s_aname">123456789</label>
                                </div>
                            </div>
                        </div>
                     </div><hr> -->
                     <div class="row">
                        <div class="col-md-6">
                            <div align="center">
                                <h4>Customer Complain</h4>
                                    <div class="complain-box">
                                        <h5>helloo</h5>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div align="center">
                                <h4>Advisor Solution</h4>
                                    <div class="complain-box">
                                        <h5>helloo</h5>
                                    </div>
                            </div>
                        </div>
                     </div><hr>
                    <div class="container-95">
                                <table id="data-table-simple-1" class="table table-striped mt-3">
                                <thead>
                                    <tr>
                                        <th>Services</th>
                                        <th>Parts</th>
                                        <th>Lubricants</th>                       
                                     </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Service1</td>
                                        <td>Bumper</td>
                                        <td>Oil</td>                       
                                    </tr>
                                    <tr>
                                        <td>Service1</td>
                                        <td>Bumper</td>
                                        <td>Oil</td>                       
                                    </tr>
                                    <tr>
                                        <td>Service1</td>
                                        <td>Bumper</td>
                                        <td>Oil</td>                       
                                    </tr>
                                </tbody>
                            </table>
                    </div> <hr>
                    <div class="row">
                        <div align="right" class="col-md-12">
                            <h2>Total Amount:2000</h2>
                        </div>
                    </div>
                    <hr>
                     <div class="row">
                        <div class="col-md"></div>
                        <div class="col-md-1">
                            <button class="btn btn-secondary my-btn btn-lg">Close</button>
                        </div>
                        <div class="col-md"></div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
 
<%@include file="../footer.html"%>