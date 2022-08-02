 class Restaurants {
	
	private int restaurantId;
	private String name;
	private String main_menu;
	private String address;
	private int phone_num;
	
	public Restaurants(int restaurantId, String name, String main_menu, String address, int phone_num) {
		super();
		this.restaurantId = restaurantId;
		this.name = name;
		this.main_menu = main_menu;
		this.address = address;
		this.phone_num = phone_num;
	}
	
	public Restaurants(String name, String main_menu, String address, int phone_num) {
		super();
		this.name = name;
		this.address = address;
		this.main_menu = main_menu;
		this.phone_num = phone_num;
	}

	public int getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(int restaurantId) {
		this.restaurantId = restaurantId;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMain_menu() {
		return main_menu;
	}

	public void setMain_menu(String main_menu) {
		this.main_menu = main_menu;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPhone_num() {
		return phone_num;
	}

	public void setPhone_num(int phone_num) {
		this.phone_num = phone_num;
	}

	@Override
	public String toString() {
		return "Restaurants [restaurantId=" + restaurantId + ", name=" + name + ", main_menu=" + main_menu
				+ ", address=" + address + ", phone_num=" + phone_num + "]";
	}
}
