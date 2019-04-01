package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.JcAccessories;
import modal.JcAccessoriesDao;
import modal.JobcardInfo;
import modal.JobcardInfoDao;

@WebServlet("/SaveJobCard")
public class SaveJobCard extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SaveJobCard() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        String vehicleNumber=request.getParameter("vehicle_number");
        String workType=request.getParameter("work_type");  
        int runningKm= Integer.parseInt(request.getParameter("running_km"));
        int availableFuel= Integer.parseInt(request.getParameter("available_fuel"));
        String deliveryDate=request.getParameter("delivery_date");  
        String deliveryTime=request.getParameter("delivery_time"); 
        String status="pending";
        int jobcardNumber= Integer.parseInt(request.getParameter("jobcard_number"));
        
        boolean toolkit=request.getParameter("toolkit") != null;
        boolean spareWheel=request.getParameter("spare_wheel") != null;
        boolean jackAndHandle=request.getParameter("jack_and_handle") != null;
        boolean mats=request.getParameter("mats") != null;
        boolean wheelCaps=request.getParameter("wheel_caps") != null;
        boolean mudFlaps=request.getParameter("mud_flaps") != null;
        boolean sterio=request.getParameter("sterio") != null;
        boolean clockOrPhoto=request.getParameter("clock_or_photo") != null;
        String other=request.getParameter("other");
       
 
		JobcardInfo ji = new JobcardInfo();
		ji.setVehicleNumber(vehicleNumber);
		ji.setWorkType(workType);
		ji.setDeliveryDate(deliveryDate);
		ji.setDeliveryTime(deliveryTime);
		ji.setStatus(status);
		ji.setRunningKm(runningKm);
		ji.setAvailableFuel(availableFuel);
		
		JcAccessories jca=new JcAccessories();
		jca.setJobcardNumber(jobcardNumber);
		jca.setToolkit(toolkit);
		jca.setSpareWheel(spareWheel);
		jca.setJackAndHandle(jackAndHandle);
		jca.setMats(mats);
		jca.setWheelCaps(wheelCaps);
		jca.setMudFlaps(mudFlaps);
		jca.setSterio(sterio);
		jca.setClockOrPhoto(clockOrPhoto);
		jca.setOther(other);
		
		
		int status1=JobcardInfoDao.update(ji);
		int status2=JcAccessoriesDao.save(jca);
		
		
		 if(status1>0 & status2>0){  
		      //  HttpSession session = request.getSession();
		            out.print("<p>Record saved successfully!</p>");  
		            response.sendRedirect("serviceadvisor/saDashboard.jsp");  
		        }else{  
		            out.println("Allready Exist Vehicle Number & Status pending or Completed");  
		            
		        }  
		          
		        out.close();  
		
	}

}