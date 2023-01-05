package tourism_package;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class addPackage
 */
@WebServlet("/addPackage")
public class addPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addPackage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String pname = request.getParameter("pname");
		String hname = request.getParameter("hname");
		String location = request.getParameter("location");
		String description = request.getParameter("description");
		String phone = request.getParameter("phone");
		String price = request.getParameter("price");
		
		
		int res = 3;
		res = Package.InsertPackage(pname,hname,location, description, phone, price);

		if (res == 1) {

			RequestDispatcher dis = request.getRequestDispatcher("viewPackage.jsp");
			dis.forward(request, response);
			System.out.println("Successful");
			
		} else if (res == 0) {

			// response.sendRedirect("unsuccess.jsp");
			RequestDispatcher dis2 = request.getRequestDispatcher("addPackage.jsp");
			dis2.forward(request, response);
			System.out.println("UnSuccessful");
		}
	}

}
