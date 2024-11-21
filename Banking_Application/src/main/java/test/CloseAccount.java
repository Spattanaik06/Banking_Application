package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/close")
public class CloseAccount extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		HttpSession hSession=req.getSession(false);
		if(hSession==null)
		{
			req.setAttribute("msg", "login first....");
			req.getRequestDispatcher("msg.jsp").forward(req, resp);
		}
		else 
		{
			BankBean bankBean=(BankBean)hSession.getAttribute("bbean");
			String unameString=bankBean.getUname();
			int k=new CloseAccountDao().close(unameString);
			if(k>0)
			{
				req.setAttribute("msg", " Sir your account closed successfully");
				req.getRequestDispatcher("CloseSuccess.jsp").forward(req, resp);
			}
		}
	}
}
