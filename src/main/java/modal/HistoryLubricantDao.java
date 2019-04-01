package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class HistoryLubricantDao {

	public static int save(HistoryLubricant hl) {
		int status=0;  
        try{  
            Connection con= ConnectionDb.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                         "insert into history_lubricant(history_id,lubricant_id,lubricant_name,lubricant_price) values (?,?,?,?)");  
            
           ps.setString(1,hl.getHistoryId());	
            ps.setInt(2, hl.getLubricantId());
            ps.setString(3,hl.getLubricantName());
            VehicleLubricantDetails vld = VehicleLubricantDetailsDao.getLubricantsById(hl.getLubricantId());
    		int lubricant_labour = vld.getLubricantLabour();
    		double lubricant_price = hl.getLubricantPrice()*0.18 + lubricant_labour;
            ps.setInt(4,(int)lubricant_price);	        
            status=ps.executeUpdate();      
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status; 
	}

}
  