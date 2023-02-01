package com.th.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JoinmemberDao {
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
	
	
	public void join(String id, String pw, String name){
		String sql = "INSERT INTO member(\"아이디\",\"비밀번호\",\"이름\") VALUES(?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;
		conn = getConnection();
		System.out.println("sql준비");
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.executeQuery();
			System.err.println("sql쏨");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			pstmt.close();
			conn.close();	
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}