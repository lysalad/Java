import java.sql.SQLException;
import java.util.List;

public class TestRepo {
	public static void main(String[] args) {
		RestaurantsRepository repo = new RestaurantsRepository();
		
		int result;
		
		try {
			// result = repo.add(new Restaurants("테스트용 음식점", "생맥주", "개금에 더 많아져라", 1234567));
			// System.out.println("추가 확인 : " + (result == 1));
			
			// List<Restaurants> list = repo.list();
			// System.out.println(list);
			
			// Restaurants rst = repo.selectByName("테스트용 음식점");
			// System.out.println(rst);
			
			result = repo.update(new Restaurants(5, "새로운 이름", "생맥주", "주소는 그대로 개금", 85999));
			System.out.println(result == 1);
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
