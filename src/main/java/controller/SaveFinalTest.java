package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.StyledEditorKit.UnderlineAction;

import modal.JcFinalTest;
import modal.JcFinalTestDao;
import modal.JobcardInfo;
import modal.JobcardInfoDao;

@WebServlet("/SaveFinalTest")
public class SaveFinalTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveFinalTest() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int jobcardNumber = Integer.parseInt(request.getParameter("jobcardnumber"));
		
		String exterior = request.getParameter("ea") + "," + request.getParameter("eb") + ","
				+ request.getParameter("ec") + "," + request.getParameter("ed") + "," + request.getParameter("ee") + ","
				+ request.getParameter("ef") + "," + request.getParameter("eg");

		String interior = request.getParameter("ia") + "," + request.getParameter("ib") + ","
				+ request.getParameter("ic") + "," + request.getParameter("id") + "," + request.getParameter("ie") + ","
				+ request.getParameter("if") + "," + request.getParameter("ig") + "," + request.getParameter("ih") + ","
				+ request.getParameter("ii") + "," + request.getParameter("ij") + "," + request.getParameter("ik") + ","
				+ request.getParameter("il") + "," + request.getParameter("im") + "," + request.getParameter("in") + ","
				+ request.getParameter("io");

		String underhood = request.getParameter("ua") + "," + request.getParameter("ub") + ","
				+ request.getParameter("uc") + "," + request.getParameter("ud") + "," + request.getParameter("ue") + ","
				+ request.getParameter("uf") + "," + request.getParameter("ug") + "," + request.getParameter("uh") + ","
				+ request.getParameter("ui") + "," + request.getParameter("uj");
		
		String underbody = request.getParameter("unba") + "," + request.getParameter("unbb") + ","
				+ request.getParameter("unbc") + "," + request.getParameter("unbd") + "," + request.getParameter("unbe") + ","
				+ request.getParameter("unbf");
		
		String boot = request.getParameter("boa") + "," + request.getParameter("bob");
		
		String other = request.getParameter("othera") + "," + request.getParameter("otherb") + ","
				+ request.getParameter("otherc") + "," + request.getParameter("otherd") + "," + request.getParameter("othere");
		
		JcFinalTest jft = new JcFinalTest(jobcardNumber, exterior, interior, underhood, underbody, boot, other); 
		boolean flag = false ;
		if(exterior.equals("1,1,1,1,1,1,1") && interior.equals("1,1,1,1,1,1,1,1,1,1,1,1,1,1,1") && underhood.equals("1,1,1,1,1,1,1,1,1,1") && underbody.equals("1,1,1,1,1,1") && boot.equals("1,1") && other.equals("1,1,1,1,1") )
		{
			 flag = true;
		}
		int status = JcFinalTestDao.save(jft);
		if(status>0)
		{
			if(flag)
				JobcardInfoDao.updateStatus(jobcardNumber, "completed");
			else
			    JobcardInfoDao.updateStatus(jobcardNumber, "rejected");	//set status to rejected when you finally discuss it
			response.sendRedirect("finalinspector/finsDashboard.jsp");
		}
	}

}
