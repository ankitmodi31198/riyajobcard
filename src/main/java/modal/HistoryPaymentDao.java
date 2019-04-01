package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class HistoryPaymentDao {

	public static int save(HistoryPayment hpy) {
		int status=0;  
        try{  
            Connection con= ConnectionDb.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                         "insert into history_payment(history_id,final_amount,payment_type,card_or_check_number,bank_name,payment_date) values (?,?,?,?,?,?)");  
            
           ps.setString(1,hpy.getHistoryId());	     
            ps.setInt(2, hpy.getFinalAmount());
            ps.setString(3,hpy.getPaymenttype()); 		           
            ps.setString(4,hpy.getCardOrCheckNumber());
            ps.setString(5,hpy.getBankName()); 	
            ps.setString(6,hpy.getPaymentDate());
            status=ps.executeUpdate();      
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status; 
		
	}

}
