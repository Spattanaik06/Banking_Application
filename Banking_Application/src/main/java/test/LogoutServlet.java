package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hSession=req.getSession(false);
		if(hSession==null)
		{
			req.setAttribute("msg", "please login first......");
			req.getRequestDispatcher("msg.jsp").forward(req, resp);
		}
		else {
			hSession.removeAttribute("bbean");
			hSession.invalidate();
			req.getRequestDispatcher("logout.jsp").forward(req, resp);
		}
	}
}
