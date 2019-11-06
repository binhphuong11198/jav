package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		// b1 xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Da xac dinh co so du lieu");
		//b2: ket noi vao csdl
		String url= "jdbc:sqlserver://DESKTOP-7VC9MRJ:1433;databaseName=QLSach;user=sa; password=123";
		cn = DriverManager.getConnection(url);
		System.out.print("da ket noi thanh cong");
		
	}
}
