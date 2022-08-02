import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import kr.co.green.DBUtil;

public class Restaurants2DaoImpl implements Restaurants2Dao {
	
	
	private Restaurants2 resultMapping(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String phoneNumber = rs.getString("phoneNumber");
		String address = rs.getString("address");
		
		return new Restaurants2(id, name, phoneNumber, address);
	}
	
	
	public int[] create(List<Restaurants2> list) throws SQLException {
		String query = "INSERT INTO restaurants2 (name, phoneNumber, address) VALUES (?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			
			for (Restaurants2 r : list) {
				pstmt.setString(1, r.getName());
				pstmt.setString(2, r.getPhoneNumber());
				pstmt.setString(3, r.getAddress());
				pstmt.addBatch();
			}
			
			return pstmt.executeBatch();
		} finally {
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
	}
	
	@Override
	public int create(String name, String phoneNumber, String address) throws SQLException {
		String query = "INSERT INTO restaurants2 (name, phoneNumber, address) VALUES (?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		// Statement처럼 명령주는 것은 동일, but 미리 준비하고 그 후에 실행
		// 준비 : ?를 포함하는 sql문이 있다면, 파라미터로 값을 받아와서 안에 값을 넣어주는 역할
		// 값을 다 넣고 나면 실행
		//- 보안상에서 기능이 더 뛰어남 -> sql indextion(sql 명령어를 집어넣어서 악의적인 흐름을 만들어내 공격)
		// Statement는 파라미터로 받은 문자열에 공격적인 문법이 들어가있는지 논리적인 분석이 필요, Prepared Statement는 문자열을 넣어야  하면 문자열 처리를 하는 등 실행될 수 없는 상태로 만들어버리므로 
		// - Statement를 상속받음
		
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, phoneNumber);
			pstmt.setString(3, address);
			
			return pstmt.executeUpdate();
			
		} finally {
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
	}

	@Override
	public List<Restaurants2> read() throws SQLException {
		String query = "SELECT * FROM restaurants2";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		 // 셀렉을 해서 행을 읽도록 만들어주는 객체 
		
		ResultSet rs = null;
		List<Restaurants2> list = new ArrayList<>();
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(resultMapping(rs));
				
			}
		} finally {
			DBUtil.closeRS(rs);
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
		
		return list;
	}

	@Override
	public Restaurants2 read(int id) throws SQLException {
		String query = "SELECT * FROM restaurants2 where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return resultMapping(rs);
			}
			
		} finally {
			
			DBUtil.closeRS(rs);
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
		
		return null;
	}

	// 수정
	@Override
	public int update(int id, String name, String phoneNumber, String address) throws SQLException {
		String query = "UPDATE restaurants2 SET name = ?, phoneNumber = ?, address = ? WHERE id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, phoneNumber);
			pstmt.setString(3, address);
			pstmt.setInt(4, id);
			
			return pstmt.executeUpdate();
		} finally {
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
	}

	// 삭제
	@Override
	public int delete(int id) throws SQLException {
		
		String query = "DELETE FROM Restaurants2 where id = ?";
		
		Connection  conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBUtil. getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, id);
			
			return pstmt.executeUpdate();
					
		} finally {
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
		
	}

}
