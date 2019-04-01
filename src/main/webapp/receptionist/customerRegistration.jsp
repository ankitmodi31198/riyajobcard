<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="modal.VehicleCompany"%>
<%@page import="java.util.List"%>
<%@page import="modal.VehicleCompanyDao"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../public/style.css">
  <!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
 
   <title>Hello, world!</title>
  </head>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">JCMS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Job Card List</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Reports
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Report 1</a>
                            <a class="dropdown-item" href="#">Report 2</a>                        
                            <a class="dropdown-item" href="#">Report 3</a>
                        </div>
                    </li>                   
                </ul>                
                <!-- <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form> -->
            </div>
        </nav>
    </header>

    <main>
        <form action="../SaveCustomer" method="post" class="my-form">
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
                            <div class="col-md-5">
                                <label for="customer_license">Driving License Number</label>
                            </div>
                            <div class="col-md-7">
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
                                <textarea name="customer_address" id="customer_address" cols="25" rows="2"></textarea>
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
                            <div class="col-md">
                                <label for="vehicle_company">Company</label>                                
                            </div>
                            <div class="col-md">
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
                    <input type="submit" name="submit" id="submit" class="btn btn-secondary btn-sm">
                </div>
            </div>                                   
        </form>
    </main>

    <footer class="my-footer">
        <div class="my-footer-copyright container-95">
            Copyright @ JCMS 2019
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="../public/js/jquery-3.2.1.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>