package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CloseAccountDao 
{
	public int k=0;
	public int close(String uname)
	{
		Connection connection=DBConnection.getCon();
		String queryString="delete from bankingapplication67 where uname=?";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(queryString);
			preparedStatement.setString(1, uname);
			k=preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
		
	}
}
