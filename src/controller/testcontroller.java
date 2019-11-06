package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class testcontroller
 */
@WebServlet("/testcontroller")
public class testcontroller extends HttpServlet {
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		//out.print("<html><body>xin chao chu servel</body></html>");
		//tao doi tuong session
		HttpSession session = request.getSession();
		//gan gia tri cho session
		session.setAttribute("un", "haha");
		//tao rar 3 bien request
		
		request.setAttribute("gt1", (long)4*5);
		request.setAttribute("gt2", "ngtn a");
		String[] ds= {"haha","hihi"};
		request.setAttribute("dsht", ds);
		//dieu huong
		RequestDispatcher rd= request.getRequestDispatcher("vd.jsp");
		rd.forward(request, response);
		//response.sendRedirect("vd.jsp");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
