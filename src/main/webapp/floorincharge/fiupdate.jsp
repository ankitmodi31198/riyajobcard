<%@page import="modal.JcLubricantDao"%>
<%@page import="modal.JcLubricant"%>
<%@page import="modal.JcService"%>
<%@page import="modal.JcServiceDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="modal.JcPartDao"%>
<%@page import="modal.JcPart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file="../header.html" %>
    <title>Hello, world!</title>
      <%
    int jobcardNumber = Integer.parseInt(request.getParameter("id"));
    %>
</head>
<body>	  
    <header>
        <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large"
            onclick="w3_close()">Close &times;</button>
            <a href="fincDashboard.jsp" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>
    </header>
    <main id="main">
        <div class="my-new-header">
            <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&#9776;</button>
            <span>JCMS</span>
        </div>

        <div class="my-form">
            <div class="my-form-heading">
                <h5>Jobs to be done</h5>
            </div>
        </div>
    
        <div class="container-95">
            <form action="../UpdateStatus" method="post">
                <div class="row">
                    <div class="col-md-4">
                        <h5>parts remaining</h5>
                        <input type="hidden" name="jobcardnumber" value='<%=jobcardNumber %>' />
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>Parts</th>
                            </tr>
                            <%
                            	List<JcPart> partList = JcPartDao.getByNumber(jobcardNumber, "pending"); 
                            	Iterator<JcPart> itr = partList.iterator();
                            	while(itr.hasNext())
                            	{
                            		JcPart jcp = itr.next();
                            %>
                            <tr>
                                <td>
                                    <input type="checkbox" id="part<%=jcp.getPartId()%>" name='parts' value='<%=jcp.getPartId()%>' >    
                                    <label for="part<%=jcp.getPartId()%>" class="checklist-label"><%=jcp.getPartName() %></label>
                                </td>
                            </tr>
                           <% } %>
                          
                        </table>
                    </div>
                    <div class="col-md-4">
                        <h5>Services remaining</h5>
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>Services</th>
                            </tr>
                            <%
                            	List<JcService> serviceList = JcServiceDao.getByNumber(jobcardNumber, "pending"); 
                            	Iterator<JcService> itr1 = serviceList.iterator();
                            	while(itr1.hasNext())
                            	{
                            		JcService jcs = itr1.next();
                            %>
                            <!-- Loop for services -->
                            <tr>
                                <td>
                                    <input type="checkbox" id="service<%=jcs.getServiceId()%>" name="services" value='<%=jcs.getServiceId()%>'>     
                                    <label for="service<%=jcs.getServiceId()%>" class="checklist-label"><%= jcs.getServiceName() %></label>
                                </td>
                            </tr>
                            <% }
                            %>
                        </table>
                    </div>
                    <div class="col-md-4">
                        <h5>Lubricants remaining</h5>
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>Lubricants</th>
                            </tr>
                             <%
                            	List<JcLubricant> lubricantList = JcLubricantDao.getByNumber(jobcardNumber, "pending"); 
                            	Iterator<JcLubricant> itr2 = lubricantList.iterator();
                            	while(itr2.hasNext())
                            	{
                            		JcLubricant jcl = itr2.next();
                            %>
                            <!-- Loop for Lubricants -->
                            <tr>
                                <td>
                                    <input type="checkbox" id="lubricant<%=jcl.getLubricantId()%>" name="lubricants" value='<%=jcl.getLubricantId()%>'>    
                                    <label for="lubricant<%=jcl.getLubricantId()%>" class="checklist-label"><%=jcl.getLubricantName() %></label>
                                </td>
                            </tr>
                               <% }
                            %>
                           </table>
                    </div>
                </div>
                <div class="my-submit-div">
                    <center>
                        <input type="submit" name="submit" id="submit" class="btn btn-secondary btn-md" value="Save Changes">
                    </center>                    
                </div>
            </form>
        </div>
    </main>
    
    <%@include file="../footer.html"%>