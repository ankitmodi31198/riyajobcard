package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pdfcrowd.Pdfcrowd;
import com.pdfcrowd.PdfcrowdError;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DownloadServlet() {
        // TODO Auto-generated constructor stub
    }
  /*  public String getText(String url) throws IOException {
        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        //add headers to the connection, or check the status if desired..
        	
        // handle error response code it occurs
        int responseCode = connection.getResponseCode();
        InputStream inputStream;
        if (200 <= responseCode && responseCode <= 299) {
            inputStream = connection.getInputStream();
        } else {
            inputStream = connection.getErrorStream();
        }

        BufferedReader in = new BufferedReader(
            new InputStreamReader(
                inputStream));

        StringBuilder response = new StringBuilder();
        String currentLine;

        while ((currentLine = in.readLine()) != null) 
            response.append(currentLine);

        in.close();

        return response.toString();
    }*/
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		  int jobcardNumber = Integer.parseInt(request.getParameter("id"));
		  PrintWriter out = response.getWriter();
	        
		
		 URL oracle = new URL("http://riyajobcard.herokuapp.com/serviceadvisor/jobcardview.jsp?id="+jobcardNumber);
	        BufferedReader in = new BufferedReader(
	        new InputStreamReader(oracle.openStream()));
	        String inputLine,jobCard="";
	        while ((inputLine = in.readLine()) != null)
	            jobCard=jobCard + inputLine;
	        in.close();
	        
	        try {
	            // create the API client instance
	            Pdfcrowd.HtmlToPdfClient client = new Pdfcrowd.HtmlToPdfClient("tryconvo", "15e747d6b32fc0016076f14122c25516");
	            client.setPageDimensions("20in", "12in");
	            // run the conversion and write the result to a file
	            client.convertStringToFile(jobCard, "F://Hackathon/"+jobcardNumber+".pdf");
	        }
	        catch(Pdfcrowd.Error why) {
	            // report the error
	            System.err.println("Pdfcrowd Error: " + why);

	            // handle the exception here or rethrow and handle it at a higher level
	            throw why;
	        }
	        catch(IOException why) {
	            // report the error
	            System.err.println("IO Error: " + why.getMessage());

	            // handle the exception here or rethrow and handle it at a higher level
	            throw why;
	        }
	        
	        
			 String filename = jobcardNumber+".pdf"; 
			  String filepath = "F://Hackathon/"; 
			  response.setContentType("APPLICATION/OCTET-STREAM"); 
			  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

			  java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
			  int i; 
			  while ((i=fileInputStream.read()) != -1) {
			    out.write(i); 
			  } 
			  fileInputStream.close(); 
			  out.close(); 
	
	}

}
