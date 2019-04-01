package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

public class HistoryPartDao {

		 public static int save(HistoryPart hp){  
		        int status=0;  
		        try{  
		            Connection con=ConnectionDb.getConnection();  
		            PreparedStatement ps=con.prepareStatement(  
		                         "insert into history_part(history_id,part_id,part_name,part_price,part_quantity,part_repair_flag) values (?,?,?,?,?,?)");  
		            ps.setString(1,hp.getHistoryId());	        
		            ps.setInt(2, hp.getPartId());
		            ps.setString(3,hp.getPartName());
		            VehiclePartDetails vpd = VehiclePartDetailsDao.getPartsById(hp.getPartId());
		            int labour = vpd.getPartLabour();
		            double price = hp.getPartPrice()*hp.getPartQuantity()*0.18 + labour;
		            ps.setInt(4,(int)price);
		            ps.setInt(5,hp.getPartQuantity()); 	 	        
		            ps.setBoolean(6,hp.isPartRepairFlag());  
		            status=ps.executeUpdate();      
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return status;  
		    }	
	
		
}
