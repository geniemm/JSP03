package day03;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnect() {
		Connection con = null;
		try {
			System.out.println("getConnect 실행");
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		//System.out.println("로드성공");
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "java";
			String pwd = "1234";
			
			con = DriverManager.getConnection(url,id,pwd);
			//System.out.println("연결성공:"+con);
		// oracled에 관련된 기능을 사용하기위해 드라이브를 로드한다
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}	
}
