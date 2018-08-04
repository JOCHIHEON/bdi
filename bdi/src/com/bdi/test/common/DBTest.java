package com.bdi.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBTest {

	private static String driver = "org.mariadb.jdbc.Driver";
	private static String url = "jdbc:mariadb://localhost:3306/bdi";
	private static String id = "root";
	private static String pwd = "12345678";
	
	public List<Map<String,String>> getUserList(){
		
		Connection con = null;
		List<Map<String,String>> userList = new ArrayList<Map<String,String>>();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd); //연결
			Statement stmt = con.createStatement(); // statement 쿼리창
			String sql = "select * from user_info";	// 쿼리입력
			ResultSet rs = stmt.executeQuery(sql);	// 쿼리실행, 메타데이터 저장, 메타데이터 라인 가르킴
			while(rs.next()) {						// return true,false
				Map<String,String> user = new HashMap<String,String>();
				user.put("uiNo",rs.getString("uiNo")); // HashMap에 put
				user.put("uiId",rs.getString("uiId"));
				user.put("uiPwd",rs.getString("uiPwd"));
				user.put("uiName",rs.getString("uiName"));
				userList.add(user);	// List에 add
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
	public static void main(String[] args) {
		
		DBTest dbt = new DBTest();
		List<Map<String,String>> userList = dbt.getUserList();
		for(Map<String,String> user : userList) {
			System.out.print("userNo : " + user.get("uiNo"));
			System.out.print(", userId : " + user.get("uiId"));
			System.out.println(", userName : " + user.get("uiName"));
		}
	}
}

