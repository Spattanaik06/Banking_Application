package test;

import java.io.IOException;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/checkbalance")
public class BalanceViewServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hSession=req.getSession(false);
		if(hSession==null)
		{
			req.setAttribute("msg","Please Login First....");
			req.getRequestDispatcher("msg.jsp").forward(req, resp);
		}
		else {
			BankBean bankBean=(BankBean)hSession.getAttribute("bbean");
			String unameString=bankBean.getUname();
			bankBean=new BalanceViewDao().balance(unameString);
			hSession.setAttribute("bbean", bankBean);
			req.getRequestDispatcher("balance.jsp").forward(req, resp);
		}
	}
}
