
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import kr.co.green.DBUtil;

public class TestTransaction {
	public static void main(String[] args) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		
		try {
			conn = DBUtil.getConnection();
			//false를 넣으면 롤 백을 할 수 있다.
			// 처음 기본값은 true이다.
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement("Insert Into books (title, price) values (?,?)");
			pstmt2 = conn.prepareStatement("UPDATE books SET title = ?, price = ? WHERE title = ?");
			
			for (int i = 0; i < 5; i ++) {
				pstmt.setString(1, i + "번째 책");
				pstmt.setInt(2, 1000 * i);
				pstmt.addBatch();
			}
			
			pstmt2.setString(1, "책1");
			pstmt2.setInt(2, 50000);
			pstmt2.setString(3, "1번째 책");
			
			pstmt.executeBatch();
			pstmt.executeUpdate();
			// 문제가 없으면 여기서 끝난다.
			// 문제가 없어서 여기까지 잘 진행되면 커밋을 한다.
			conn.commit();
			
		} catch (SQLException e) {

			System.out.println("롤백입니다.");
			try {
				// 문제가 생기면 롤백하도록 한다.
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			DBUtil.closeStmt(pstmt);
			DBUtil.closeConn(conn);
		}
	}
}
