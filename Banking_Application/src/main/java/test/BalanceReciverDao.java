package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BalanceReciverDao 
{
	public int k=0;
	public int targetAccount(int taccount,double amount)
	{
		Connection connection=DBConnection.getCon();
		String queryString="update from bankingapplication67 set amount=amount+? where account=?";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(queryString);
			preparedStatement.setDouble(1, amount);
			preparedStatement.setInt(2, taccount);
			k=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
		
	}
}
