import java.sql.SQLException;
import java.util.Arrays;

public class TestRestaurants2Dao {
	public static void main(String[] args) {
		Restaurants2Dao dao = new Restaurants2DaoImpl();
		
		try {
			// int result = dao.create("테스트중2", "1234-777", "부산 어딘가");
			 // System.out.println(result == 1);
			
			// System.out.println(dao.read());
			// System.out.println(dao.read(3));;
			
			//int result = dao.update(1, "대대모골", "9876-5432", "학원 근처 어딘가");
			//System.out.println(result == 1);
			//System.out.println(dao.read(1));
			
			Restaurants2DaoImpl impl = (Restaurants2DaoImpl) dao;
			int[] result = impl.create(Arrays.asList(
					  new Restaurants2(0, "배치1", "0101-02020", "배치주소1")
					, new Restaurants2(0, "배치2", "0101-030303", "배치주소2")
					, new Restaurants2(0, "배치3", "0101-040404", "배치주소3")
					, new Restaurants2(0, "배치4", "0101-050505", "배치주소4")
					));
			System.out.println(Arrays.toString(result));
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
