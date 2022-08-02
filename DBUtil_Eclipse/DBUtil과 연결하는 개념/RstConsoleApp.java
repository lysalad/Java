import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

public class RstConsoleApp {
	private RestaurantsRepository repo;
	
	public RstConsoleApp(RestaurantsRepository repo) {
		this.repo = repo;
	}
	
	public void menu() {
		System.out.println("1. 추가 | 2. 목록  | 3. 삭제 | 4. 수정 | 5. 검색(이름)");
		Scanner scan = new Scanner(System.in);
		
		int num = scan.nextInt();
		
		if(num == 1) {
			//추가
			add();
		}
		
		if(num == 2) {
			// 목록보기
			list();
		}
		
		if(num == 3) {
			//삭제
			delete();
		}
		
		if(num == 4) {
			// 수정
			update();
		}
		
		if(num == 5) {
			// 검색
			search();
		}
	}
	
	private void add() {
		
		System.out.println("가게이름을 입력해주세요.");
		Scanner scan = new Scanner(System.in);
		String name = scan.nextLine();
		
		boolean go = false;
		
		do {
			name = scan.nextLine();
			go = name.length() > 20;
			
			if(go) {
				System.out.println("가게이름은 20자를 넘을 수 없습니다. 다시 입력해주세요.");
			}
		} while (go);
		
		System.out.println("메인메뉴를 입력해주세요.");
		String main_menu = scan.nextLine();
		
		do {
			main_menu = scan.nextLine();
			go = main_menu.length() > 20;
			
			if(go) {
				System.out.println("메뉴명은 20자를 넘을 수 없습니다. 다시 입력해주세요.");
			}
		} while (go);
		
		System.out.println("주소를 입력해주세요.");
		String address = scan.nextLine();
		
		do {
			address = scan.nextLine();
			go = address.length() > 50;
			
			if(go) {
				System.out.println("주소는 50자를 넘을 수 없습니다. 다시 입력해주세요.");
			}
		} while (go);
		
		System.out.println("전화번호를 입력해주세요.");
		int phone_num = scan.nextInt();
		
		// 전화번호는 유니크인데 중복된 번호가 들어갔을때도 알림 띄워주는거 추가하기
		
		try {
			int result = repo.add(new Restaurants(name, main_menu, address, phone_num));
			System.out.println(result + "개의 음식점 추가!");
			
		} catch (SQLException e) {
			int code = e.getErrorCode();
			System.out.println("식당 추가 실패 다시 시도");
		}
	
	}
	
	private void list() {
		try {
			List<Restaurants> list = repo.list();
			
			if (list.size() > 0) {
				for(Restaurants b : list) {
					System.out.println(b);
				}
			} else {
				System.out.println("식당 데이터가 없습니다.");
			}
			
		} catch(SQLException e) {
			System.out.println("데이터 읽어오는 과정 실패 다시 시도");
		}
	}
	
	private void delete() {
		list();
		System.out.println("삭제할 번호?");
		Scanner scan = new Scanner(System.in);
		int RestaurantId = scan.nextInt();
		
		try {
			int result = repo.delete(RestaurantId);
			if (result > 0) {
				System.out.println(result + "개의 음식점이 삭제되었습니다.");
			} else {
				System.out.println("없는 번호입니다.");
			}
		} catch (SQLException e) {
			System.out.println("데이터 삭제 실패 다시시도");
		}
	}
	
	private void update() {
		list();
		System.out.println("수정할 번호, 새 이름, 메인메뉴, 주소, 전화번호 순서로 입력해주세요.");
		Scanner scan = new Scanner(System.in);
		
		int RestaurantId = scan.nextInt();
		String name = scan.nextLine();
		String main_menu = scan.nextLine();
		String address = scan.nextLine();
		int phone_num = scan.nextInt();
		
		try {
			int result = repo.update(new Restaurants(RestaurantId, name, main_menu, address, phone_num));
			System.out.println(result + "행 수정");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void search() {
		System.out.println("검색할 식당 이름을 입력하세요.");
		Scanner scan = new Scanner(System.in);
		String name = scan.nextLine();
		
		Restaurants rst;
		
		try {
			rst = repo.selectByName(name);
			System.out.println(rst);
		} catch(SQLException e) {
			e.printStackTrace();
		}

	}
	
	
	
	public static void main(String[] args) {
		RstConsoleApp app = new RstConsoleApp(new RestaurantsRepository());
		app.menu();
	}
}
