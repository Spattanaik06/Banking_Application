package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/transfer")
@SuppressWarnings("serial")
public class transferServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int accno=Integer.parseInt(req.getParameter("accno"));
		String usernameString=req.getParameter("uname");
		String passwordString=req.getParameter("password");
		int targetAccountNo=Integer.parseInt(req.getParameter("taccno"));
		double amount=Double.parseDouble(req.getParameter("amount"));
		int k1=new BalanceSenderDao().account(accno, usernameString, passwordString, amount);
		int k2=new BalanceReciverDao().targetAccount(targetAccountNo, amount);
		if(k1>0 && k2>0)
		{
			req.setAttribute("msg", "Transfer Successfull...");
			req.getRequestDispatcher("TransferSuccess.jsp").forward(req, resp);
		}
		else 
		{
			req.setAttribute("msg", "Check your username,password and target account number");
			req.getRequestDispatcher("TransferFailed.jsp").forward(req, resp);
		}
	}
}
