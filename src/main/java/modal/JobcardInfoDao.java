package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class JobcardInfoDao {
	public static int save(JobcardInfo ji){  
		  
        int status=0;  	
        try{  
            Connection con=ConnectionDb.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into jobcard_info(vehicle_number,officer_username,status,arrival_date,arrival_time) values (?,?,?,?,?)");  
            
            ps.setString(1, ji.getVehicleNumber());
            ps.setString(2, ji.getOfficeUsername());
            // set date and time arrival and delivery
            ps.setString(3, ji.getStatus());
            ps.setString(4, ji.getArrivalDate());
            ps.setString(5, ji.getArrivalTime());
            status=ps.executeUpdate();   
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
	}
	public static int update(JobcardInfo ji){  
		  
        int status=0;  	
        try{  
            Connection con=ConnectionDb.getConnection();  
            PreparedStatement ps=con.prepareStatement("update jobcard_info set work_type='"+ji.getWorkType()+"' , delivery_date = '"+ji.getDeliveryDate()+"',running_km = '"+ji.getRunningKm()+"', available_fuel = '"+ji.getAvailableFuel()+"',delivery_time = '"+ji.getDeliveryTime()+"',status ='pending' where vehicle_number = '"+ji.getVehicleNumber()+"' ");  
            
            status=ps.executeUpdate();   
            System.out.println(status);
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }
	
	public static JobcardInfo getTempByNumber(int jobcard_number)
	 {
		 JobcardInfo ji=new JobcardInfo();  
	        try{  
	            Connection con=ConnectionDb.getConnection();  
	            PreparedStatement ps = con.prepareStatement("select arrival_date,arrival_time from jobcard_info where jobcard_number = ? ") ;
	            ps.setInt(1, jobcard_number);
	    
	            ResultSet rs = ps.executeQuery();
	            while(rs.next()){  
	            	ji.setArrivalDate(rs.getString("arrival_date"));
	            	ji.setArrivalTime(rs.getString("arrival_time"));
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}   
		 return ji;
	 }
	 public static List<JobcardInfo> getList(String officer_username,String status)
	 {
		 List<JobcardInfo> list=new ArrayList<JobcardInfo>();  
	        try{  
	            Connection con=ConnectionDb.getConnection();  
	            PreparedStatement ps = con.prepareStatement("select * from jobcard_info where officer_username = ? and status = ?") ;
	            ps.setString(1, officer_username);
	            ps.setString(2, status);   
	            ResultSet rs = ps.executeQuery();
	            while(rs.next()){  
	            	JobcardInfo jci = new JobcardInfo();
	            	jci.setVehicleNumber(rs.getString("vehicle_number"));
	            	list.add(jci);
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}   
		 return list;
	 }
	 public static int getTotal(String officer_username,String status)
	 {
		    int i=0;
	        try{  
	            Connection con=ConnectionDb.getConnection();  
	            PreparedStatement ps = con.prepareStatement("select vehicle_number from jobcard_info where status = ? and officer_username = ?") ;
	            ps.setString(1, status);
	            ps.setString(2, officer_username);   
	            ResultSet rs = ps.executeQuery();
	            while(rs.next()){  
	            	i++;
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}   
		 return i;
	 }
	 public static int getJNByNumber(String vehicle_number)
	 {
		    int i=0;
	        try{  
	            Connection con=ConnectionDb.getConnection();  
	            PreparedStatement ps = con.prepareStatement("select jobcard_number from jobcard_info where vehicle_number = ?") ;
	            ps.setString(1, vehicle_number);
	            ResultSet rs = ps.executeQuery();
	            while(rs.next()){  
	              i = rs.getInt("jobcard_number");
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}   
		 return i;
	 }
	 public static String getVNByNumber(int jobcard_number)
	 {
		    String i=null;
	        try{  
	            Connection con=ConnectionDb.getConnection();  
	            PreparedStatement ps = con.prepareStatement("select vehicle_number from jobcard_info where jobcard_number = ?") ;
	            ps.setInt(1, jobcard_number);
	            ResultSet rs = ps.executeQuery();
	            while(rs.next()){  
	              i = rs.getString("vehicle_number");
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}   
		 return i;
	 }
}
