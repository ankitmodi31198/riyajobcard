<%@page import="modal.ConnectionDb"%>
<%@page import="java.sql.*" %>

<%
if(request.getParameter("vehicle_model_id")!=null) 
{
    String id=request.getParameter("vehicle_model_id"); //get state_id from index.jsp page with function state_change() through ajax and store in id variable.
        
    try
    {
       Connection con = ConnectionDb.getConnection();
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select * from vehicle_model_varient where vehicle_model_id=? "); //sql select query
        pstmt.setString(1,id);
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
        %>        
            <option selected="selected">--</option>
        <%    
        while(rs.next())
        {
        %> 
            <option value="<%=rs.getString("model_varient_id")%>">
                <%=rs.getString("model_varient_name")%>
            </option>
        <%
        }
  
  con.close(); //close connection 
    }
    catch(Exception e)
    {
        out.println(e);
    }
}
%>
