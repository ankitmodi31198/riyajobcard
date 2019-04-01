package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class VehicleCompanyDao {
	
		public static List<VehicleCompany> getCompanies(){ 
			 List<VehicleCompany> list=new ArrayList<VehicleCompany>();  
	        try{  
	            Connection con=ConnectionDb.getConnection();
	            PreparedStatement ps = con.prepareStatement("select * from vehicle_company") ;
	            ResultSet rs = ps.executeQuery();
	            int i =0;
	            while(rs.next()){  
	            	VehicleCompany v = new VehicleCompany();
	            	v.setVehicleCompanyId(rs.getInt(1));
	            	v.setVehicleCompanyName(rs.getString(2));
	            	
	            	list.add(v);
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	        return list;  
		}
		public static VehicleCompany getById(int vehicle_company_id)
		 {
			  VehicleCompany vc = new VehicleCompany();
			 try{  
			        Connection con=ConnectionDb.getConnection(); 
			        PreparedStatement ps = con.prepareStatement("select * from vehicle_company where vehicle_company_id='"+vehicle_company_id+"'") ;
			        ResultSet rs = ps.executeQuery();
			        while(rs.next()){  
			        	vc.setVehicleCompanyId(rs.getInt(1));
		            	vc.setVehicleCompanyName(rs.getString(2));
			        }  
			        con.close();  
			    }catch(Exception e){e.printStackTrace();}  
			 return vc;
		 }
	
}