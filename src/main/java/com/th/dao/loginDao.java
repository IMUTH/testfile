package com.th.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginDao {
	private Connection getConnection() {
		Connection conn = null;
				
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "testuser";
		String dbPw = "1234";
		
		try {
			Class.forName(driver);
			System.out.println("JDBC 드라이버 로딩 성공");
			conn = DriverManager.getConnection(url, dbId, dbPw);
			System.out.println("접속 성공");
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("오라클 접속 실패");
		}
		return conn;
	}
	
	
	public boolean login(String id, String pw) throws Exception{
		String sql = "SELECT COUNT(*) FROM member WHERE \"아이디\"=? AND \"비밀번호\"=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		conn = getConnection();
		pstmt = conn.prepareStatement(sql);
		System.out.println("sql준비");
		pstmt.setString(1, id);
		pstmt.setString(1, pw);
		int cnt = 0;
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			cnt = rs.getInt(1);
		}
			System.out.println("sql쏨");
			pstmt.close();
			conn.close();	
			if(cnt==1) {
				return true;
			}else {
				return false;
			}
	}
	
}