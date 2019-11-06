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
import javax.websocket.Session;

import Bo.GioHangBo;
import Bo.SachBo;

/**
 * Servlet implementation class ktdncontroller
 */
@WebServlet("/ktdncontroller")
public class ktdncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdncontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lay gia tri cu client
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		String kt = request.getParameter("kt");
		String ms = request.getParameter("ms");
		String ts = request.getParameter("ts");
		String tg = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		HttpSession session = request.getSession();
		if(un==null) {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}else if(un!=null){
			
			session.setAttribute("un", un);
			SachBo s = new SachBo();
			request.setAttribute("dsa",s.getSach());
			RequestDispatcher rdd=request.getRequestDispatcher("hienthi.jsp");
			rdd.forward(request, response);
		}
		
		if(giatam!=null) {
			long gia = Long.parseLong(giatam);
			GioHangBo gh=null;
			if (session.getAttribute("gh") == null) {
				gh = new GioHangBo();
				session.setAttribute("gh", gh);
			}
			gh = (GioHangBo) session.getAttribute("gh");
			gh.Them(ms, ts, tg, gia, 1);
			session.setAttribute("gh", gh);
			RequestDispatcher rdd=request.getRequestDispatcher("htgio.jsp");
			rdd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
