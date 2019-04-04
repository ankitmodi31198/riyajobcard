package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.JcAccessoriesDao;

/**
 * Servlet implementation class SaveCarImage
 */
@WebServlet("/SaveCarImage")
public class SaveCarImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveCarImage() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int jobcardNumber = Integer.parseInt(request.getParameter("jobcardnumber"));
		String image = request.getParameter("carimage");
		JcAccessoriesDao.updateImage(jobcardNumber,image);
		System.out.println(image);
		response.sendRedirect("serviceadvisor/saDashboard.jsp");
	}

}
