package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.AdvisorSolution;
import modal.AdvisorSolutionDao;
import modal.CustomerComplain;
import modal.CustomerComplainDao;
import modal.History;
import modal.HistoryDao;
import modal.HistoryLubricant;
import modal.HistoryLubricantDao;
import modal.HistoryPart;
import modal.HistoryPartDao;
import modal.HistoryPayment;
import modal.HistoryPaymentDao;
import modal.HistoryService;
import modal.HistoryServiceDao;
import modal.JcAccessoriesDao;
import modal.JcLubricant;
import modal.JcLubricantDao;
import modal.JcPart;
import modal.JcPartDao;
import modal.JcService;
import modal.JcServiceDao;
import modal.JobcardInfo;
import modal.JobcardInfoDao;

@WebServlet("/SaveHistory")
public class SaveHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SaveHistory() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jobcardNumber = Integer.parseInt(request.getParameter("id"));
		JobcardInfo jci = JobcardInfoDao.getAllByJC(jobcardNumber);
		String historyId = "H_"+jci.getArrivalTime()+jci.getJobcardNumber();
		
		String vehicleNumber = jci.getVehicleNumber();
		String arrivalDate = jci.getArrivalDate();
		String workType = jci.getWorkType();
		String arrivalTime = jci.getArrivalTime();
		int runningKM = jci.getRunningKm();
		String officerUsername = jci.getOfficeUsername();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        String deliveryDate = dtf.format(now);
		
        DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("HH:mm:ss");
        String deliveryTime = dtf1.format(now);
		
		
		History h = new History(historyId, vehicleNumber, officerUsername, runningKM, workType, arrivalDate, arrivalTime, deliveryDate, deliveryTime);
		HistoryDao.save(h);//remaining
		
		List<JcPart> jcpList = JcPartDao.getByJobcardNumber(jobcardNumber);
		Iterator<JcPart> jcpitr = jcpList.iterator();
		while(jcpitr.hasNext())
		{
			JcPart jcp = jcpitr.next();
			int partId = jcp.getPartId();
			String partName = jcp.getPartName();
			int partPrice = jcp.getPartPrice();
			int partQuantity = jcp.getPartQuantity();
			boolean partRepairFlag = jcp.isPartRepairFlag();
			HistoryPart hp = new HistoryPart(historyId, partId, partName, partPrice, partQuantity, partRepairFlag);
			HistoryPartDao.save(hp);//remaining
		}
			
		List<JcService> jcsList = JcServiceDao.getByJobcardNumber(jobcardNumber);
		Iterator<JcService> jcsitr = jcsList.iterator();
		while(jcsitr.hasNext())
		{
			JcService jcs = jcsitr.next();
			int serviceId = jcs.getServiceId();
			String serviceDetails = jcs.getServiceDesc();
			int servicePrice = jcs.getServicePrice();
			String serviceName = jcs.getServiceName();
			HistoryService hs = new HistoryService(historyId, serviceId, serviceName, serviceDetails, servicePrice);
			HistoryServiceDao.save(hs);//remaining
		}	
		List<JcLubricant> jclList = JcLubricantDao.getByJobcardNumber(jobcardNumber);
		Iterator<JcLubricant> jclitr = jclList.iterator();
		while(jclitr.hasNext())	
		{
			JcLubricant jcl = jclitr.next();
			int lubricantId = jcl.getLubricantId();
			String lubricantName = jcl.getLubricantName();
			int lubricantPrice = jcl.getLubricantPrice();
			HistoryLubricant hl = new HistoryLubricant(historyId, lubricantId, lubricantName, lubricantPrice);
			HistoryLubricantDao.save(hl);//remaining
		}
		
	int finalAmount = Integer.parseInt(request.getParameter("finalamount"));
		String paymenttype = "cash";
		String cardOrCheckNumber = "-";
		String bankName = "-";
		String paymentDate = dtf.format(now);
		HistoryPayment hpy = new HistoryPayment(historyId, finalAmount, paymenttype, cardOrCheckNumber, bankName, paymentDate);
		HistoryPaymentDao.save(hpy);//remaining
	
		JcPartDao.delete(jobcardNumber);//remaining
		JcServiceDao.delete(jobcardNumber);//remaining
		JcLubricantDao.delete(jobcardNumber);//remaining
		JcAccessoriesDao.delete(jobcardNumber);//remaining
	//	JcFinalTestDao.delete(jobcardNumber);//remaining
		AdvisorSolutionDao.delete(jobcardNumber);
		CustomerComplainDao.delete(jobcardNumber);
		JobcardInfoDao.delete(jobcardNumber);//remaining
		
		
		response.sendRedirect("serviceadvisor/saDashboard.jsp");
		
	}

}
