package resumebuilder;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class GenerateResume
 */
@WebServlet("/build")
public class GenerateResume extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	/* Here the details like name,role,skils etc are received and sent to the action.jsp to display the resume */
		String name=request.getParameter("name");
		String role=request.getParameter("role");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String linkedIn=request.getParameter("linkedIn");
		String location=request.getParameter("location");
		String about=request.getParameter("about");
		String[] skills=request.getParameter("skills").split(",");
		String[] education=request.getParameter("education").split(",");
		String[] we_i=request.getParameter("we_i").split(",");
		String[] softskills=request.getParameter("softskills").split(",");
		String[] certificates=request.getParameter("certificates").split(",");
		request.setAttribute("name", name);
		request.setAttribute("role", role);
		request.setAttribute("phone", phone);
		request.setAttribute("email", email);
		request.setAttribute("linkedIn", linkedIn);
		request.setAttribute("location", location);
		request.setAttribute("about", about);
		request.setAttribute("skills", skills);
		request.setAttribute("education", education);
		request.setAttribute("we_i", we_i);
		request.setAttribute("softskills", softskills);
		request.setAttribute("certificates", certificates);
		RequestDispatcher dispatcher = null;
		dispatcher = request.getRequestDispatcher("action.jsp");
		dispatcher.forward(request, response);
		
	}

}
