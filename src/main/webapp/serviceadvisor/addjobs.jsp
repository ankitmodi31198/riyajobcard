<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function partAdd1()
{
	var partid = $("#partSel").val();
 $.ajax({
  type: "POST",
  url: "cart/partadd.jsp",
  data: {
   part_id : partid,
   reload_flag: 0
 },
 cache: false,
 success: function(response)
 {
  $("#addedParts").html(response);
}
});
}

  function partAdd(partid)
  {

   $.ajax({
    type: "POST",
    url: "cart/partadd.jsp",
    data: {
     part_id : partid,
     reload_flag: 0
   },
   cache: false,
   success: function(response)
   {
    $("#addedParts").html(response);
  }
});
 }

 function serviceAdd()
 {
   // alert(serviceid);
	var serviceid = $("#serviceSel").val();
   $.ajax({
    type: "POST",
    url: "cart/serviceadd.jsp",
    data: {
     service_id : serviceid,
     reload_flag: 0
   },
   cache: false,
   success: function(response)
   {
    $("#addedServices").html(response);
  }
}); 
 }

 function serviceReload()
 {
   // alert(serviceid);

   $.ajax({
    type: "POST",
    url: "cart/serviceadd.jsp",
    data: {
     reload_flag : 1
   },
   cache: false,
   success: function(response)
   {
    $("#addedServices").html(response);
  }
}); 
   $.ajax({
     type: "POST",
     url: "cart/lubricantadd.jsp",
     data: {
      reload_flag : 1
    },
    cache: false,
    success: function(response)
    {
     $("#addedLubricants").html(response);
   }
 });
   $.ajax({
     type: "POST",
     url: "cart/partadd.jsp",
     data: {
      reload_flag : 1
    },
    cache: false,
    success: function(response)
    {
     $("#addedParts").html(response);
   }
 });
 }

 /* lubricant ajax */
 function lubricantAdd()
 {
   // alert(lubricantid);
	var lubricantid = $("#lubricantSel").val();
   $.ajax({
    type: "POST",
    url: "cart/lubricantadd.jsp",
    data: {
     lubricant_id : lubricantid,
     reload_flag: 0
   },
   cache: false,
   success: function(response)
   {
    $("#addedLubricants").html(response);
  }
}); 
 }

 window.onload= serviceReload;
</script>
	<div class="container">

<div class="row">
</div>
<div class="row">
</div>
<div class="row">
</div>	

					<div class="row">
						<div class="col m4 input-field">
							<select onchange="partAdd1()" id="partSel">
								<option value="" disabled="" selected>Choose your
									option</option>
								<%-- 	<%
      String model_varient_id = (String) session.getAttribute("model_varient_id");
      List<Vehicle_part_details> list = Vehicle_part_detailsDao.getParts(model_varient_id);
      Iterator itr = list.iterator();
      while (itr.hasNext()) {
      Vehicle_part_details vpd = (Vehicle_part_details) itr.next();
      %>
				<option value='<%=vpd.getPart_id()%>'>
					<%= vpd.getPart_name() %>
				</option>
				<%              
    }
    %> --%>
							</select> <label>Parts</label>
						</div>
						<div class="input-field col m4">
							<select onchange="serviceAdd()" id="serviceSel">
								<option value="" disabled selected>Choose your option</option>
	<%-- 							<% 
      List<Vehicle_service_details> list1 = Vehicle_service_detailsDao.getServices(model_varient_id);
      Iterator<Vehicle_service_details> itr1=list1.iterator();  
      while(itr1.hasNext()){ 
      Vehicle_service_details vsd = itr1.next();
      %>
            <option value='<%=vsd.getService_id()%>'><%=vsd.getService_name()%></option>                                  
 <%
 }
   %>
		 --%>					</select> <label>Service</label>
						</div>
						<div class="input-field col m4">
							<select onchange="lubricantAdd()" id="lubricantSel">
								<option value="" disabled selected>Choose your option</option>
							<%-- 	<% 
      List<Vehicle_lubricant_details> list2 = Vehicle_lubricant_detailsDao.getLubricants(model_varient_id);
      Iterator<Vehicle_lubricant_details> itr2=list2.iterator();  
      while(itr2.hasNext()){ 
      Vehicle_lubricant_details vld = itr2.next();
      %>
      <option value='<%=vld.getLubricant_id()%>'><%=vld.getLubricant_name()%></option> 
       <%  }
    %> --%>
							</select> <label>Lubricants</label>
						</div>
					</div>

					<div class="row">
						<div class="col m12">
							<div class="col m4" id="addedParts">
								<table class="highlight responsive-table z-depth-3">
									<thead>
										<tr>
											<th>Part Name</th>
											<th>Item Price</th>
											<th>Quantity</th>
											<th>Repair</th>
											<th>Add</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>abc</td>
											<td>123</td>
											<td>1</td>
											<th>Repair</th>
											<th>Add</th>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="col m4" id="addedServices">
								<!-- <table class="highlight responsive-table z-depth-3">
									<thead>
										<tr>
											<th>Service Name</th>
											<th>Service Price</th>
											<th>Add</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>abc</td>
											<td>123</td>
											<th>Add</th>
										</tr>
									</tbody> 
								</table>   
							</div>
							<div class="col m4" id="addedLubricants">
								 <table class="highlight responsive-table z-depth-3">
									<thead>
										<tr>
											<th>Lubricant Name</th>
											<th>Lubricant Price</th>
											<th>Add</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>abc</td>
											<td>123</td>
											<th>Add</th>
										</tr>
									</tbody>
								</table> 
							</div>
						</div>
					</div>
					</div>
					</main>
	<!-- body ends -->


</body>
</html>