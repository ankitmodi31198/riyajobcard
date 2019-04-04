<%@ include file="../header.html" %>
<title>Search</title>
<%@include file="receptionistSidebar.html" %>

    <main id="main">
         <%@include file="../navbar.jsp" %>

		
        <div class="container-95">
        	<div class="row">
        		<div class="col-md-6">
        			<img src="../public/image/carnumberplate.jpg" width="100%" height="600px">
        		</div>
        		<div class="col-md-6">
        			<form action="../CheckVehicle" class="my-form" method="post" style="margin-top: 30%;">
			            <div class="my-form-heading">
			                <h5>Enter Vehicle Number</h5>
			            </div>
			            <div class="container-95">
								<div class="my-form-row">
								<h6>About Vehicle</h6>
								<div class="col-md"></div>
								<div class="col-md-6">
								
									<label for="">Vehicle Number :</label>
									<input type="text" name="vehicle_number" id="vehicle_number" class="" onkeyup="toUppercase()">
									
								</div>
								<div class="col-md"></div>
							</div>
							<div class="my-submit-div">
								<input type="submit" name="submit" id="submit" class="btn btn-secondary btn-sm" value="Search">
							</div>
						</div>            
			        </form>
        		</div>
        	</div>
        </div>
    </main>
    <script type="text/javascript">
    	function toUppercase() {
    		var str = document.getElementById('vehicle_number').value;
    		document.getElementById('vehicle_number').value = str.toUpperCase();
    	}
    </script>
<%@ include file="../footer.html" %>