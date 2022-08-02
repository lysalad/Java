import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DiaryManageImpl implements DiaryManage {
	// 여기서 리스트를 만드는 이유는 알겠눈뎅...
	private List<Diary> list;
	
	public DiaryManageImpl() {
		// 여기서 왜 new ArrayList 해주는거임 ? ? ?
		// 왜지감자 ? ? ?
		list = new ArrayList<>();
	}
	
	@Override
	// 더해주는 메소드??? 다이어리를 받는 d(얘는 객체인가...?)를 넣어줄 것이므로 파라미터에 Diary d를 넣는다.
	public void add(Diary d) {
		list.add(d);
	}

	@Override
	// 얘는 왜 또 있냐.. ? ?? 웨지,,감자,..,,, 이아이의 기능은 무엇이지
	// listf를 리턴해준다.
	public List<Diary> list() {
		return list;
	}

	@Override
	// 다이어리를 수정하기 위한 메소드?? 수정할 요소 두 가지 LocalDate, String 자료형을 맞춰서 넣어준다.
	public void edit(LocalDate day, String content) {
		int index = list.indexOf(new Diary(day));
		if (index >= 0) {
			Diary d = list.get(index);
			d.setContent(content);
		}
	}

	@Override
	public void deleteFirst() {
		if (!list.isEmpty()) {
			list.remove(0);
		}
	}
}










