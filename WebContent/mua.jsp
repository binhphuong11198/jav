<%@page import="sun.security.krb5.internal.tools.Ktab"%>
<%@page import="Bo.GioHangBo"%>
<%@page import="Bean.GioHangBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String ms = request.getParameter("ms");
		String ts = request.getParameter("ts");
		String tg = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		String maedit = request.getParameter("idEdit");
		String tenEdit = request.getParameter("tenEdit");
		String tacgiaEdit = request.getParameter("tacgiaEdit");
		String giaEdit = request.getParameter("giaEdit");
		String sl = request.getParameter("ghEdit");
		if (giatam != null || sl != null) {
			if (sl != null) {
				GioHangBo gh = null;
				try {
					Long.parseLong(sl);
					long soluong = Long.parseLong(sl);
					long giae = Long.parseLong(giaEdit);

					if (session.getAttribute("gh") == null) {
						gh = new GioHangBo();
						session.setAttribute("gh", gh);
					}
					gh = (GioHangBo) session.getAttribute("gh");
					gh.Them(maedit, tenEdit, tacgiaEdit, giae, soluong);
					session.setAttribute("gh", gh);
					response.sendRedirect("htgio.jsp");
				} catch (Exception e) {
					response.sendRedirect("htgio.jsp?ac=1");
				}

			} else {
				long gia = Long.parseLong(giatam);
				//kiem tra da tao ss. neu chua thi tao 1 ss de luu gio hang
				GioHangBo gh = null;
				if (session.getAttribute("gh") == null) {
					gh = new GioHangBo();
					session.setAttribute("gh", gh);
				}
				gh = (GioHangBo) session.getAttribute("gh");
				gh.Them(ms, ts, tg, gia, 1);
				session.setAttribute("gh", gh);
				response.sendRedirect("htgio.jsp");
			}
		}
	%>
	<%
		String xoaall = request.getParameter("xoaall");
		if (xoaall != null) {
			session.removeAttribute("gh");
			response.sendRedirect("htgio.jsp");
		}
		String idxoa = request.getParameter("idXoa");
		if (idxoa != null) {
			GioHangBo gh = null;
			if (session.getAttribute("gh") == null) {
				gh = new GioHangBo();
				session.setAttribute("gh", gh);
			}
			gh = (GioHangBo) session.getAttribute("gh");
			gh.Xoa(idxoa);
			session.setAttribute("gh", gh);
			response.sendRedirect("htgio.jsp");
		}
	%>
</body>
</html>