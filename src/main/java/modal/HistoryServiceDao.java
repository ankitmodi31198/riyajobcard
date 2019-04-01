package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class HistoryServiceDao {

	public static int save(HistoryService hs) {
		int status=0;  
        try{  
            Connection con=ConnectionDb.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into history_service(history_id,service_id,service_name,service_details,service_price) values (?,?,?,?,?)");  
            ps.setString(1,hs.getHistoryId());	     
            ps.setInt(2, hs.getServiceId());
            ps.setString(3,hs.getServiceName()); 
            ps.setString(4,hs.getServiceDetails());
            ps.setInt(5,hs.getServicePrice());
            	        
            status=ps.executeUpdate();      
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
		
	}

}
