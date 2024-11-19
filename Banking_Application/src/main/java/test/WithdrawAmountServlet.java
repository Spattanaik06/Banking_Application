

	package test;

	import java.io.IOException;

	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.HttpServlet;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
	import jakarta.servlet.http.HttpSession;
	@WebServlet("/withdrawamount")
	@SuppressWarnings("serial")
	public class WithdrawAmountServlet extends HttpServlet
	{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession hSession=req.getSession(false);
			if(hSession==null)
			{
				req.setAttribute("msg", "Invalid session....");
				req.getRequestDispatcher("msg.jsp").forward(req, resp);
			}
			else {
				BankBean bankBean=(BankBean)hSession.getAttribute("bbean");
				String uname=bankBean.getUname();
				Double amount=Double.parseDouble( req.getParameter("amount"));
				int k=new WithdrawAmountDao().withdraw(uname,amount);
				if(k>0)
				{
					req.setAttribute("msg", ", Amount succesfully withdrawan from your account.");
					req.getRequestDispatcher("WithdrawSuccess.jsp").forward(req, resp);
				}
				
			}
		}
	}
