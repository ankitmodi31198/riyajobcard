package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.JcLubricantDao;
import modal.JcPartDao;
import modal.JcServiceDao;
import modal.JobcardInfoDao;

/**
 * Servlet implementation class UpdateStatus
 */
@WebServlet("/UpdateStatus")
public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] parts = request.getParameterValues("parts");
		String[] services = request.getParameterValues("services");
		String[] lubricants = request.getParameterValues("lubricants");
		int jobcardNumber = Integer.parseInt(request.getParameter("jobcardnumber"));
		if(parts!=null)
		{
			for(String part : parts)
			{
				JcPartDao.updateStatus(jobcardNumber,Integer.parseInt(part),"completed");
			}
		}
		if(services!=null)
		{
			for(String service : services)
			{
				JcServiceDao.updateStatus(jobcardNumber,Integer.parseInt(service),"completed");
			}
		}
		if(lubricants!=null)
		{
			for(String lubricant : lubricants)
			{
				JcLubricantDao.updateStatus(jobcardNumber,Integer.parseInt(lubricant),"completed");
			}
		}
		try {
			if(JobcardInfoDao.checkIfAllCompleted(jobcardNumber))
			{				
				//status changes to repaired means your service is completed in this portion....
				
				JobcardInfoDao.updateStatus(jobcardNumber,"repaired");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		response.sendRedirect("floorincharge/fincDashboard.jsp");
	}

}
