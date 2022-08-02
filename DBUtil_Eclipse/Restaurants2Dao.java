import java.sql.SQLException;
import java.util.List;

public interface Restaurants2Dao {
	int create(String name, String phoneNumber, String address) throws SQLException;
	
	List<Restaurants2> read() throws SQLException;
	Restaurants2 read(int id) throws SQLException;
	
	int update(int id, String name, String phoneNumber, String address) throws SQLException;
	
	int delete(int id) throws SQLException;
}