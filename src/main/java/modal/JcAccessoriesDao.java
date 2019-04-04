package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JcAccessoriesDao {

	public static int save(JcAccessories jca){  
		  
        int status=0;  	
        try{  
            Connection con=ConnectionDb.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into jc_accessories(jobcard_number,toolkit,spare_wheel,jack_and_handle,mats,wheel_caps,mud_flaps,sterio,clock_or_photo,other) values (?,?,?,?,?,?,?,?,?,?)");  
            ps.setInt(1, jca.getJobcardNumber());
            ps.setBoolean(2, jca.isToolkit());
            ps.setBoolean(3, jca.isSpareWheel());
            ps.setBoolean(4, jca.isJackAndHandle());
            ps.setBoolean(5, jca.isMats());
            ps.setBoolean(6, jca.isWheelCaps());
            ps.setBoolean(7, jca.isMudFlaps());
            ps.setBoolean(8, jca.isSterio());
            ps.setBoolean(9, jca.isClockOrPhoto());
            ps.setString(10, jca.getOther());
              
            status=ps.executeUpdate();   
            System.out.println(status);
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }

	public static int delete(int jobcardNumber) {
		int status=0;
		try{
			Connection con=ConnectionDb.getConnection();  
	        PreparedStatement ps = con.prepareStatement("delete from jc_accessories where jobcard_number='"+jobcardNumber+"' ");
	         status = ps.executeUpdate();
	        con.close();
		}
		catch(Exception e){e.printStackTrace();}
		return status;
		
	}

	public static int updateImage(int jobcardNumber, String image) {
		int status=0;
		try{
			Connection con=ConnectionDb.getConnection();  
	        PreparedStatement ps = con.prepareStatement("update jc_accessories set image='"+image+"' where jobcard_number='"+jobcardNumber+"' ");
	         status = ps.executeUpdate();
	        con.close();
		}
		catch(Exception e){e.printStackTrace();}
		return status;
		
	}
	
	public static String getImage(int jobcardNumber) {
		String image=null;
		try{
			Connection con=ConnectionDb.getConnection();  
	        PreparedStatement ps = con.prepareStatement("select image from jc_accessories where jobcard_number='"+jobcardNumber+"' ");
	         ResultSet rs = ps.executeQuery();
	         if(rs.next())
	         {	
	        	image = rs.getString("image"); 
	         }
	        con.close();
		}
		catch(Exception e){e.printStackTrace();}
		return image;
		
	}
}
