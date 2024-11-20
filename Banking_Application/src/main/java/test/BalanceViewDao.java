package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BalanceViewDao 
{
	public BankBean bankBean=null;
	public BankBean balance(String uname)
	{
		Connection connection=DBConnection.getCon();
		try {
			PreparedStatement preparedStatement=connection.prepareStatement("select account,uname,amount,phone from bankingapplication67 where uname=?");
			preparedStatement.setString(1, uname);
			ResultSet rSet=preparedStatement.executeQuery();
			if(rSet.next())
			{
				bankBean=new BankBean();
				bankBean.setAccno(Integer.parseInt( rSet.getString(1)));
				bankBean.setUname(rSet.getString(2));
				bankBean.setAmount(rSet.getDouble(3));
				bankBean.setPhno(rSet.getString(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bankBean;
		
	}
}
