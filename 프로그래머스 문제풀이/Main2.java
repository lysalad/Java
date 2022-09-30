package seul;

public class Main2 {
	
	public static String solution (String s ) {
		String answer =""; // 일단 return할 문자열을 선언해준다.
		
		// 배열 arr을 소문자로 만들어주는데, 그 기준이 ""(공백)이다.
		String[] arr = s.toLowerCase().split("");
		// 스트링빌더를 호출한다.
		StringBuilder sb = new StringBuilder();
		 // 첫 글자를 대문자로 만들어주기 위해 불린을 하나 만들어준다. 이걸 이해를 못하겠네.
		boolean blank = true;
		
		// str이라는 배열을 끝까지 본다.
		for ( String str : arr) {
			
			// answer에다가 blank ? str.toUpperCase() : str를 담는다.
			// blank ? str.toUpperCase() : str 는 삼항연산자인데,
			// blank가 참일때 참 이면 str.toUpperCase()를 실행하고, 거짓이면 str을 실행한다는 말이다.
			// boolean blank가 일종의 스위치같은 역할을 하는 셈이다.
			answer += blank ? str.toUpperCase() : str;
			blank = str.equals(" ")? true : false;
			
		}
		
		return answer;	
	}
	
	public static void main(String[] args) {
		String s = "   hello word   123haha  Good ";
		System.out.println(solution(s));
	}
}
