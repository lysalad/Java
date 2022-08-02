import hahaha.MyMath;
import hahaha.Person;

// 자르파일을 사용해서도 같은 클래스 안에 있는 것 처럼 사용할 수 있다.
// 물론 import는 해야하지만 그래도 좋다 !
// 이렇게 쓰면 의존성이라는 게 생긴다.
// 자르파일 연결을 지우면 임포트 되어있어도 에러가 난다.

// 우선 프로젝트와 패키지 그리고 클래스 파일들을 만든다.
// runable jar 말고 그냥 jar 하나를 만든다. -> jar파일이 생성되면 그 안에 클래스 내용들이 담긴다.

// 받을 프로젝트에서 우클릭을 한다.
// properties를 누른다.
// libraries에서 외부 jar파일 export하기를 누른다.
// 짜잔~ preferenced labraries가 만들어진다!
// 그러면 받을 프로젝트에서 임포트해서 사용 가능 !!!!
// 밑에 메인 프로젝트에 보면 임포트만 시켰고 같은 패키지 안에 있지도 않은데 바로바로 실행됨 !!
// 비슷한 방법으로 mysql도 사용할 수 있따.
public class main {
	public static void main(String[] args) {
		Person p = new Person("이름", 15);
		System.out.println(p);
		System.out.println(MyMath.getZero());
		System.out.println(MyMath.sum(10, 20));
		
	}
}

