<%@page import="modal.AdvisorSolutionDao"%>
<%@page import="modal.AdvisorSolution"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modal.CustomerComplain"%>
<%@page import="modal.CustomerComplainDao"%>
<%@page import="modal.ConnectionDb"%>

<%
	String saSolution = request.getParameter("solution");
	int price=Integer.parseInt(request.getParameter("price"));
	int jobcardNumber; 
	if(saSolution!=null)
	{
	jobcardNumber=Integer.parseInt(request.getParameter("jobcard_number"));
	AdvisorSolution as = new AdvisorSolution();
	
	as.setJobcardNumber(jobcardNumber);
	as.setDescription(saSolution);
	as.setPrice(price);
	AdvisorSolutionDao.save(as);
	}
	else{
		jobcardNumber =Integer.parseInt((String)session.getAttribute("jobcard_number"));
	}
	List<AdvisorSolution> list = AdvisorSolutionDao.getAll(jobcardNumber);
	Iterator<AdvisorSolution> itr = list.iterator();
	%>
	<table class="table table-hover">
                                    <tr>
                                        <th>Solutions</th>
                                        <th>price</th>
                                        <th>Remove</th>
                                    </tr>
	<% 
	while(itr.hasNext())
	{
		AdvisorSolution as = itr.next();
		%>
		<form action="/for-remove-complain-using-id" id="complain_id">
                                        <tr>
                                            <td><%= as.getDescription() %></td>
                                            <td><%= as.getPrice() %></td>
                                           <td><button type="button" class="btn btn-danger btn-sm" form="complain_id" onclick="removeSolution('<%=as.getSolutionId()%>','<%=jobcardNumber%>')">Remove</button></td>
                                        </tr>
                                    </form>
		
<%
	}
%>
</table>

 