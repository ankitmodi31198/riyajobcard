package modal;

import java.util.ArrayList;
import java.util.List;
import modal.OfficerInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OfficerInfoDao {

	public static boolean authenticate(String username, String password) throws SQLException {
		Connection con = ConnectionDb.getConnection();
		PreparedStatement ps = con.prepareStatement("select officer_role from officer_info where  officer_username= ? and officer_password =?");
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	public static OfficerInfo getByUsername(String username) throws SQLException {
		Connection con = ConnectionDb.getConnection();
		OfficerInfo oi = new OfficerInfo();
		PreparedStatement ps = con.prepareStatement("select * from officer_info where officer_username= ?");
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			oi.setOfficerUsername(rs.getString("officer_username"));
			oi.setOfficerContact(rs.getString("officer_contact"));
			oi.setOfficerEmail(rs.getString("officer_email"));
			oi.setOfficerName(rs.getString("officer_name"));
			oi.setOfficerRole(rs.getString("officer_role"));
		}
		return oi;
	}
	
	
	public static OfficerInfo getAllByRole(String officer_role) throws SQLException {
		Connection con = ConnectionDb.getConnection();
		OfficerInfo oi = new OfficerInfo();
		PreparedStatement ps = con.prepareStatement("select * from officer_info where officer_role = ?");
		ps.setString(1, officer_role);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			oi.setOfficerUsername(rs.getString("officer_username"));
			oi.setOfficerContact(rs.getString("officer_contact"));
			oi.setOfficerEmail(rs.getString("officer_email"));
			oi.setOfficerName(rs.getString("officer_name"));
			oi.setOfficerRole(rs.getString("officer_role"));
		}
		return oi;
	} 
	public static List<OfficerInfo> getByOfficerRole(String officer_role)
	{
		List<OfficerInfo> list=new ArrayList<OfficerInfo>();
		
		try{
			Connection con=ConnectionDb.getConnection();  
            PreparedStatement ps = con.prepareStatement("select * from officer_info where officer_role = ?");
            ps.setString(1, officer_role);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
            	OfficerInfo oi=new OfficerInfo();
            	oi.setOfficerUsername(rs.getString("officer_username"));
            	oi.setOfficerRole(rs.getString("officer_role"));
            	oi.setOfficerName(rs.getString("officer_name"));
            	oi.setOfficerContact(rs.getString("officer_contact"));
            	
            	list.add(oi);
            }
            con.close();
		}
		catch(Exception e){e.printStackTrace();}
		return list;
	}
}
