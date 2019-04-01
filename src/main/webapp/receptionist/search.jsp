<%@ include file="../header.html" %>
<title>Search</title>
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

		
        <div class="container-95">
        	<form action="../CheckVehicle" class="my-form" method="post">
	            <div class="my-form-heading">
	                <h5>Enter Vehicle Number</h5>
	            </div>
	            <div class="container-95">
						<div class="my-form-row">
						<h6>About Vehicle</h6>
						<div class="col-md"></div>
						<div class="col-md-4">
						
							<label for="">Vehicle Number :</label>
							<input type="text" name="vehicle_number" id="" class="">
							
						</div>
						<div class="col-md"></div>
					</div>
					<div class="my-submit-div">
						<input type="submit" name="submit" id="submit" class="btn btn-secondary btn-sm" value="Search">
					</div>
				</div>            
	        </form>
        </div>
    </main>

<%@ include file="../footer.html" %>