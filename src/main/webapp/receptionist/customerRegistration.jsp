<%@ include file="../header.html" %>
<title>Customer Registration</title>
<%@page import="java.util.Iterator"%>
<%@page import="modal.VehicleCompany"%>
<%@page import="java.util.List"%>
<%@page import="modal.VehicleCompanyDao"%>

<script type="text/javascript">
function company_change()
{
    var company_id = $("#vehicle_company").val();
 
    $.ajax({
        type: "POST",
        url: "model.jsp",
        data: "company_id="+company_id,
        cache: false,
        success: function(response)
        {
            $("#company_model").html(response);
        }
    });
}
function model_change()
{
    var model_id = $("#company_model").val();
 
    $.ajax({
        type: "POST",
        url: "varient.jsp",
        data: "vehicle_model_id="+model_id,
        cache: false,
        success: function(response)
        {
            $("#model_varient").html(response);
        }
    });
}
</script>
  <body>
  
    <header>
        <!-- <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large"
            onclick="w3_close()">Close &times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div> -->
    </header>

    <main>
    	<div class="my-new-header">
            <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&#9776;</button>
            <span>JCMS</span>
        </div>
        
        <form action="../SaveCustomer" method="post" class="my-form container-95">
            <div class="my-form-heading">
                <h5>Customer Registration</h5>
            </div>
            <div class="container-95">                
                <div class="row my-form-row">
                    <h6>Customer Details</h6>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_name">Name</label>                                    
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_name" id="customer_name">
                            </div>
                        </div>
                    </div>                    
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_email">Email</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_email" id="customer_email">
                            </div>
                        </div>                        
                    </div>                    
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_contact">Contact No.</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_contact" id="customer_contact">
                            </div>
                        </div>                                            
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_type">Customer Type</label>
                            </div>
                            <div class="col-md-8">
                                <select name="customer_type" id="customer_type">
                                    <option value="individual">Individual</option>
                                    <option value="corporate">Corporate</option>
                                </select>
                            </div>
                        </div>                                                
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_aadhaar">Aadhaar Number</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_aadhaar" id="customer_aadhaar">
                            </div>
                        </div>                                                
                    </div>                    
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_license">License Number</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_license" id="customer_license">
                            </div>
                        </div>                                                
                    </div>                                                                    
                </div>
                <div class="row my-form-row">
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="Address">Address</label>
                            </div>
                            <div class="col-md-8">
                                <textarea name="customer_address" id="customer_address" cols="18" rows="2"></textarea>
                            </div>
                        </div>                                                
                    </div> 
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_city">City</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_city" id="customer_city">
                            </div>
                        </div>                                                
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_state">State</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_state" id="customer_state">
                            </div>
                        </div>                                                
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="pincode">Pincode</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="pincode" id="pincode">
                            </div>
                        </div>                                                
                    </div>                                                     
                </div>
                <div class="row my-form-row">
                    <h6>Customer's Vehicle Details</h6>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="vehicle_number">Vehicle No.</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="vehicle_number" id="vehicle_number" readonly value=<%=session.getAttribute("vehicle_number") %>>
                            </div>
                        </div>                                                
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="vin_no">VIN</label>                                
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="vin_number" id="vin_number">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="engine_no">Engine No.</label>                                
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="engine_number" id="engine_number">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="fuel_type">Fuel Type</label>                                
                            </div>
                            <div class="col-md-8">
                                <select name="fuel_type" id="fuel_type">
                                    <option value="petrol">Petrol</option>
                                    <option value="diesel">Diesel</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="interior_color">Interior color</label>                                
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="interior_color" id="interior_color">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="exterior_color">Exterior Color</label>                                
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="exterior_color" id="exterior_color">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="customer_rc">RC Number</label>                                
                            </div>
                            <div class="col-md-8">
                                <input type="text" name="customer_rc" id="customer_rc">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="vehicle_type">Vehicle Type</label>                                
                            </div>
                            <div class="col-md-8">
                                <select name="vehicle_type" id="vehicle_type">
                                    <option value="passenger">Passenger</option>
                                    <option value="taxi">Taxi</option>
                                </select>
                            </div>
                        </div>
                    </div>                    
                </div>
                <div class="row my-form-row">
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="vehicle_company">Company</label>                                
                            </div>
                            <div class="col-md-8">
                                <select name="vehicle_company" id="vehicle_company" onchange="company_change()">
                                <option selected>--</option>
                                 <%List<VehicleCompany> list= VehicleCompanyDao.getCompanies();
					                                    Iterator itr=list.iterator();  
					                                    while(itr.hasNext()){ 
					                                    	VehicleCompany v = (VehicleCompany)itr.next();
					                                     out.println("<option value='"+v.getVehicleCompanyId()+"'>"+v.getVehicleCompanyName()+"</option>");  
					                                    }
					                                    	%>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md">
                                <label for="vehicle_model">Model</label>                                
                            </div>
                            <div class="col-md">
                                <select name="company_model" id="company_model" onchange="model_change()">
                                 <option selected>--</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md">
                                <label for="model_varient">Varient</label>                                
                            </div>
                            <div class="col-md">
                                <select name="model_varient" id="model_varient">
                                 <option selected>--</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="my-submit-div">
                    <center>
                    	<input type="submit" name="submit" id="submit" class="btn btn-secondary btn-sm">
                    </center>
                </div>
            </div>                                   
        </form>
    </main>

<%@ include file="../footer.html" %>