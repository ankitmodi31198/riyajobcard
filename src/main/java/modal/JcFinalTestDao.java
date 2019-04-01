package modal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JcFinalTestDao {
	public static int save(JcFinalTest jft) {

		int status = 0;
		try {
			Connection con = ConnectionDb.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into jc_final_test(jobcard_number,exterior,interior,underhood,underbody,boot,other) values (?,?,?,?,?,?,?)");
			ps.setInt(1, jft.getJobcardNumber());
			ps.setString(2, jft.getExterior());
			ps.setString(3, jft.getInterior());
			ps.setString(4, jft.getUnderhood());
			ps.setString(5, jft.getUnderbody());
			ps.setString(6, jft.getBoot());
			ps.setString(7, jft.getOther());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static boolean check(int jobcardNumber) {
		boolean flag = false;
		try {
			Connection con = ConnectionDb.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"select * jc_final_test where jobcard_number='"+jobcardNumber+"'");
			ResultSet rs = ps.executeQuery();
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		} 
		return false;
	}

	public static int delete(int jobcardNumber) {
		int status=0;
		try{
			Connection con=ConnectionDb.getConnection();  
	        PreparedStatement ps = con.prepareStatement("delete from jc_final_test where jobcard_number='"+jobcardNumber+"' ");
	         status = ps.executeUpdate();
	        con.close();
		}
		catch(Exception e){e.printStackTrace();}
		return status;
		
	}
}
