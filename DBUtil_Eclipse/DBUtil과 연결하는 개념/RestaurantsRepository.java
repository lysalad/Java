import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.green.DBUtil;


public class RestaurantsRepository { // DAO : Data Access object
	
	// rs가 먼지 모르겠다 일단 만들어놓자
	private Restaurants resultMapping(ResultSet rs) throws SQLException {
		int restaurantsId = rs.getInt("restaurantId");
		String name = rs.getString("name");
		String main_menu = rs.getString("main_menu");
		String address = rs.getString("address");
		int phone_num = rs.getInt("phone_num");
		
		return new Restaurants(restaurantsId, name, main_menu, address, phone_num);
	}
	
	// 추가
	public int add(Restaurants rst) throws SQLException{
		String query = "Insert Into Restaurants (name, main_menu, address, phone_num) Values ('"
						+ rst.getName() + "', '"
						+ rst.getMain_menu() + "', '"
						+ rst.getAddress() + "', "
						+ rst.getPhone_num() + ")";
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.createStatement();
			
			return stmt.executeUpdate(query);
		} finally {
			DBUtil.closeStmt(stmt);
			DBUtil.closeConn(conn);
		}
	}

	 // 목록 보기
	public List<Restaurants> list() throws SQLException {
		String query = "SELECT * FROM Restaurants";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Restaurants> list = new ArrayList<>();
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		
			while (rs.next()) {
				list.add(resultMapping(rs));
			}
			
		} finally {
			DBUtil.closeRS(rs);
			DBUtil.closeStmt(stmt);
			DBUtil.closeConn(conn);	
		}
		
		return list;
	}
	
	// 검색 (이름) or 검색 (메인메뉴)
	public Restaurants selectByName(String name) throws SQLException {
		String query = "Select * From Restaurants Where name = '" + name + "'";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			if (rs.next()) {
				return resultMapping(rs);
			} else {
				return null;
			}
		} finally {
			DBUtil.closeRS(rs);
			DBUtil.closeStmt(stmt);
			DBUtil.closeConn(conn);
		}
		
	}
	
	//메인 메뉴로 검색하는거 해서 % 넣어서도 만들어보기
	
	// 수정
	public int update(Restaurants rst) throws SQLException {
		String query ="Update Restaurants Set Name = '" + rst.getName()
						+ "', Main_menu = '" + rst.getMain_menu()
						+ "', Address = '" + rst.getAddress()
						+ "', Phone_num = " + rst.getPhone_num()
						+ " Where RestaurantId = " + rst.getRestaurantId();
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.createStatement();
			
			return stmt.executeUpdate(query);
			
		} finally {
			DBUtil.closeStmt(stmt);
			DBUtil.closeConn(conn);
		}
		
	}
	
	// 삭제
	public int delete(int restaurantId) throws SQLException {
		String query = "Delete From Restaurants Where RestaurantId = " + restaurantId;
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = DBUtil.getConnection();
			stmt = conn.createStatement();
			
			return stmt.executeUpdate(query);
			
		} finally {
			DBUtil.closeStmt(stmt);
			DBUtil.closeConn(conn);
		}
	}
	
	
}
