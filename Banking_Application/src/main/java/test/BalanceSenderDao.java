package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BalanceSenderDao 
{
	public int k=0;
	public int account(int accno,String username,String password,double amount)
	{
		Connection connection=DBConnection.getCon();
		try {
			String queryString="update from bankingapplication67 set amount=amount - ? where account=? and username=? and password=?";
			PreparedStatement preparedStatement=connection.prepareStatement(queryString);
			preparedStatement.setDouble(1, amount);
			preparedStatement.setInt(2, accno);
			preparedStatement.setString(3, username);
			preparedStatement.setString(4, password);
			k=preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
		
	}
}