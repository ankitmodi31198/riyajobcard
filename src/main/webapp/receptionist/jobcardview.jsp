<%@ include file="../header.html" %>
<body>
	<div class="row">
		<div class="col-md-4"><center><h6>Vehicle No.</h6></center></div>
		<div class="col-md-4"><center><h1>RiyaCars</h1></center></div>
		<div class="col-md-4"><center><h6>JCNo.</h6></center></div>
	</div>
	<hr color=black>
	<div class="row">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-3">
					<label for="cname">Customer Name:</label><br>
					<label for="mobileno">Mobile Number:</label><br>
					<label for="email">Email:</label><br>
					<label for="arriavld">Arrival Date:</label><br>
					<label for="arriavlt">Arrival Time:</label>
				</div>
				<div class="col-md-3">
					<label for="cname">Dharavi</label><br>
					<label for="mobileno">9924692256</label><br>
					<label for="email">dharupatel1999@gmail.com</label><br>
					<label for="arriavld">1/4/2019</label><br>
					<label for="arriavlt">10:00:00AM</label>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-3">
					<label for="vin">VIN:</label><br>
					<label for="fueltype">Fuel Type:</label><br>
					<label for="runningkm">Running Km:</label><br>
					<label for="car">Car:</label><br>
					<label for="availablefuel">Available Fuel:</label>
				</div>
				<div class="col-md-3">
					<label for="vin">123456</label><br>
					<label for="fueltype"></label><br>
					<label for="runningkm">10000</label><br>
					<label for="car">sfdsczs</label>
					<label for="availablefuel"></label>
				</div>
			</div>
		</div>

		<div class="col-md-12">
			<hr color=black>
			<div class="row">
				<div class="col-md-6">
					<h6><center>Request</center></h6>
					<table class="table table-striped table-bordered customer-verification-info-table">
                                    <tbody>
                                        <tr>
                                        	<th>SrNo.</th>
                                            <th>column</th> 
                                        </tr>
                                    </tbody>
                    </table>
                </div>
				<div class="col-md-6">
					<h6><center>Solution</center></h6>
					<table class="table table-striped table-bordered customer-verification-info-table">
                                    <tbody>
                                        <tr>
                                        	<th>SrNo.</th>
                                            <th>column</th> 
                                            <th>column1</th> 
                                        </tr>
                                    </tbody>
                    </table>
                </div>
			</div>
		</div>
		
		<div class="col-md-12">
			<hr color=black>
		<div class="row">
			<div class="col-md-4">
				<div class="row">
				<div class="col-md-6">
					<label for="eprice">Estimated Price</label><br>
					<label for="ddate">Delivery Date</label><br>
					<label for="dtime">Delivery Time</label><br>
					<label for="sdname">Service Advisor Name:</label><br>
					<label for="sacno">Service Advisor ContactNo:</label>
				</div>
				<div class="col-md-6">
					<label for="eprice">1000</label><br>
					<label for="ddate">2/4/2019</label><br>
					<label for="dtime">10:00:00AM</label><br>
					<label for="sdname">xfrdfedd</label><br>
					<label for="sacno">4212536975</label>
				</div>
				</div>
			</div>
			<div class="col-md-4"><center><img src="C:\Users\Dhruvik Sorathiya\Pictures\three.png" style="width:300px;height:300px;"/></center>
			</div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-4">
					<label for="Toolkits">Tool Kits</label></div>
					<div class="col-md-2">
					<label for="Toolkits">Yes</label></div>
					<div class="col-md-2">
					<label for="Toolkits">No</label><br></div>
					</div>
						<div class="row">
						<div class="col-md-4">
							<label for="fueltype">fecsca</label><br>
							<label for="runningkm">sefacwx</label><br>
							<label for="car">fecsvr</label><br>
							<label for="ava">fcsec</label>
						</div>
						<div class="col-md-2">
							<input type="radio" name="boa" id="bo-a" 
                                                class="my-checkbox" checked value="1">
                                                
						</div>
						<div class="col-md-2">
							<input type="radio" name="boa" id="bo-a" 
                                                class="my-checkbox" value="0">
						</div>
					</div>
				</div>
			</div>
			<hr color=black>
			<div class="row">
				<div class="col-md-6">
					<br>
					<hr style="width:30%;">
					<center><label for="sasign">Service Advisor Sign</label></center>
				</div>
				<div class="col-md-6">
					<br>
					<hr style="width:30%;">
					<center><label for="csign">Customer Sign</label></center>
				</div>
			</div>
		</div>	
	</div>
</body>
</html>
<%@ include file="../footer.html" %>