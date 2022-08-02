import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
//두번째 화면- 당첨 확인하는 창
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import javax.swing.BoxLayout;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.UIManager;
import java.awt.Font;

/*
 * SubFrame: 로또 당첨 확인을 위한 두 번째 창
 * pnl: 큰 프레임
 * lbl: 입력창인 것을 표시해주기 위한 라벨 
 * btnReset: 첫번째 창으로 돌아가기 위한 버튼
 * btnEnd: 시스템 종료 버튼
 * */

//커밋테스트

public class SubFrame extends JDialog {
	// getter setter 만들기 위해 필드로 선언
	private JButton btnReset2;
	private JButton btnEnd;

	// 두 번째 창 세부 만들기
	// 나중에 혹시 호출하거나 메소드로 불러와야할 것 같은 것들만 선언해줬다.

	// ♣ 1등 번호가 들어가는 Label
	private JLabel prizeNumbers1; // 뒤에다가도 이미지 넣기
	private JLabel prizeNumbers2;
	private JLabel prizeNumbers3;
	private JLabel prizeNumbers4;
	private JLabel prizeNumbers5;
	private JLabel prizeNumbers6;
	private JLabel bonusNumber;
	private JLabel prizePlus; // + 이미지넣기

	public JLabel[][] lblHome = new JLabel[5][6];

	// 배치하는 메소드
	public JLabel[][] setLbl(ArrayList<Integer> gameNumber1, ArrayList<Integer> gameNumber2,
			ArrayList<Integer> gameNumber3, ArrayList<Integer> gameNumber4, ArrayList<Integer> gameNumber5) {

		for (int j = 0; j < 5; j++) {
			for (int k = 0; k < 6; k++) {
				if (j == 0) {
					lblHome[j][k] = new JLabel(String.format("%02d", gameNumber1.get(k)));
					lblHome[j][k].setFont(new Font("맑은 고딕", Font.BOLD, 20)); 
				} else if (j == 1) {
					lblHome[j][k] = new JLabel(String.format("%02d", gameNumber2.get(k)));
					lblHome[j][k].setFont(new Font("맑은 고딕", Font.BOLD, 20)); 
				} else if (j == 2) {
					lblHome[j][k] = new JLabel(String.format("%02d", gameNumber3.get(k)));
					lblHome[j][k].setFont(new Font("맑은 고딕", Font.BOLD, 20)); 
				} else if (j == 3) {
					lblHome[j][k] = new JLabel(String.format("%02d", gameNumber4.get(k)));
					lblHome[j][k].setFont(new Font("맑은 고딕", Font.BOLD, 20)); 
				} else if (j == 4) {
					lblHome[j][k] = new JLabel(String.format("%02d", gameNumber5.get(k)));
					lblHome[j][k].setFont(new Font("맑은 고딕", Font.BOLD, 20)); 
				}
			}
		}
		return lblHome;
	}
//	}

	// ♣ 콤보박스로 표시한 자동/수동이 표시되는 Label이다.
	// Panel line 앞에 위치한다.
	private JLabel resultCombo1;
	private JLabel resultCombo2;
	private JLabel resultCombo3;
	private JLabel resultCombo4;
	private JLabel resultCombo5;

	// ♣ 1등 ~ 5등까지의 당첨 결과가 표시되는 Label이다.
	// Panel line의 뒤에 위치한다.
	private JLabel resultRank1;
	private JLabel resultRank2;
	private JLabel resultRank3;
	private JLabel resultRank4;
	private JLabel resultRank5;

	// ♣ 1등번호를 만들어주는 메소드를 받아오기 위한 객체생성
	PrizeNum prn = new PrizeNum();
	// 1등번호 배열을 다시 배열에 집어넣기...ㅎㅎ
	ArrayList<Integer> prn2 = new ArrayList<Integer>(prn.PrizeNum());
	
// 테스트 주작용	
//	ArrayList<Integer> prn2 = new ArrayList<Integer>(Arrays.asList(1, 2, 3, 4, 5, 6, 7));
	// 보너스번호만 따로 떼놓기
	int bonus = prn2.get(6);

	// 오름차순 위해서 get(0)~get(5)까지만 배열에 집어넣고 오름차순하기
	public ArrayList<Integer> getPrn3() {

		ArrayList<Integer> prn3 = new ArrayList<Integer>();
		prn3.add(prn2.get(0));
		prn3.add(prn2.get(1));
		prn3.add(prn2.get(2));
		prn3.add(prn2.get(3));
		prn3.add(prn2.get(4));
		prn3.add(prn2.get(5));
		Collections.sort(prn3);
		return prn3;
	}

	// 메인프레임을 받아오는 객체 생성
	MainFrame mfr = new MainFrame();

	// 두번째 창- 로또 당첨 확인창을 생성자로 만듬
	public SubFrame(JFrame owner, ArrayList<Integer> game1, ArrayList<Integer> game2, ArrayList<Integer> game3,
			ArrayList<Integer> game4, ArrayList<Integer> game5, String str1, String str2, String str3, String str4,
			String str5) {
		// 앞의 입력 숫자를 받아오는 부분
		ArrayList<Integer> gameNumber1 = game1;
		ArrayList<Integer> gameNumber2 = game2;
		ArrayList<Integer> gameNumber3 = game3;
		ArrayList<Integer> gameNumber4 = game4;
		ArrayList<Integer> gameNumber5 = game5;

		// 앞의 콤보박스 값을 받아오는 부분
		String comboStr1 = str1;
		String comboStr2 = str2;
		String comboStr3 = str3;
		String comboStr4 = str4;
		String comboStr5 = str5;

		// 큰 패널
		JPanel pnl = new JPanel();

		// ♣ 다섯줄과 일등번호 나오는 곳을 전부를 감싸는 Panel
		// 따로 메소드에 쓸 일이 없을 것 같아서 이곳에 바로 선언했다.
		// 근데 생각해보니까 Sub에 이미 혜령이가 큰 걸 만들어뒀따.
		// NullPointerException 오류가 계속 떠서........ 일단 만들어봤따.
		// JPanel boxingAll = new JPanel();

		JPanel topPnl = new JPanel();
		JPanel middlePnl = new JPanel();
		JPanel bottomPnl = new JPanel();
		bottomPnl.setBackground(new Color(255, 255, 255));

		// ♣ 1등 번호 Panel
		JPanel luckyHere = new JPanel();

		// ♣ 1등 번호가 들어가는 부분
		// 인덱스 0부터 5까지 들어가고
		// plus에는 더하기 이미지가 들어갈거고
		// 보너스에는 보너스 번호
		// prizeNumbers1 = new JLabel(prn.PrizeNum().get(0).toString());
		Toolkit kit = Toolkit.getDefaultToolkit();
		URL urlred = SubFrame.class.getClassLoader().getResource("img/redball.png");
		ImageIcon redball = new ImageIcon(kit.getImage(urlred));

		URL urlyellow = SubFrame.class.getClassLoader().getResource("img/yellowball.png");
		ImageIcon yellowball = new ImageIcon(kit.getImage(urlyellow));

		URL urlgreen = SubFrame.class.getClassLoader().getResource("img/greenball.png");
		ImageIcon greenball = new ImageIcon(kit.getImage(urlgreen));

		URL urlblue = SubFrame.class.getClassLoader().getResource("img/blueball.png");
		ImageIcon blueball = new ImageIcon(kit.getImage(urlblue));

		URL urlpurple = SubFrame.class.getClassLoader().getResource("img/purpleball.png");
		ImageIcon purpleball = new ImageIcon(kit.getImage(urlpurple));

		URL urlgray = SubFrame.class.getClassLoader().getResource("img/grayball.png");
		ImageIcon grayball = new ImageIcon(kit.getImage(urlgray));

		URL urlorange = SubFrame.class.getClassLoader().getResource("img/orangeball.png");
		ImageIcon orangeball = new ImageIcon(kit.getImage(urlorange));
		
		URL urlplus = SubFrame.class.getClassLoader().getResource("img/plus.png");
		ImageIcon plus1 = new ImageIcon(kit.getImage(urlplus));

		// 1등번호에 배경 넣기 위해서 panel로 한 번 더 감싸주기로 함

		// 감싸주는 패널을 만들고 거기에 배경을 넣음

//		prizeNumbers1.setOpaque(true);

		prizeNumbers1 = new JLabel(redball);
		prizeNumbers1.setForeground(Color.WHITE);
		prizeNumbers1.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		prizeNumbers1.setText(String.format("%02d", getPrn3().get(0)));
		prizeNumbers1.setHorizontalTextPosition(0);

		prizeNumbers2 = new JLabel(yellowball);
		prizeNumbers2.setForeground(Color.WHITE);
		prizeNumbers2.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		prizeNumbers2.setText(String.format("%02d", getPrn3().get(1)));
		prizeNumbers2.setHorizontalTextPosition(0);

		prizeNumbers3 = new JLabel(greenball);
		prizeNumbers3.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		prizeNumbers3.setForeground(Color.WHITE);
		prizeNumbers3.setText(String.format("%02d", getPrn3().get(2)));
		prizeNumbers3.setHorizontalTextPosition(0);

		prizeNumbers4 = new JLabel(blueball);
		prizeNumbers4.setForeground(Color.WHITE);
		prizeNumbers4.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		prizeNumbers4.setText(String.format("%02d", getPrn3().get(3)));
		prizeNumbers4.setHorizontalTextPosition(0);

		prizeNumbers5 = new JLabel(purpleball);
		prizeNumbers5.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		prizeNumbers5.setForeground(Color.WHITE);
		prizeNumbers5.setText(String.format("%02d", getPrn3().get(4)));
		prizeNumbers5.setHorizontalTextPosition(0);

		prizeNumbers6 = new JLabel(grayball);
		prizeNumbers6.setForeground(Color.WHITE);
		prizeNumbers6.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		prizeNumbers6.setText(String.format("%02d", getPrn3().get(5)));
		prizeNumbers6.setHorizontalTextPosition(0);

		prizePlus = new JLabel(plus1); // 이미지
		prizePlus.setForeground(Color.WHITE);
		prizePlus.setFont(new Font("맑은 고딕", Font.BOLD, 17));
		prizePlus.setHorizontalTextPosition(0);
		

		bonusNumber = new JLabel(orangeball);
		bonusNumber.setForeground(Color.WHITE);
		bonusNumber.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		bonusNumber.setText(String.format("%02d", prn2.get(6)));
		bonusNumber.setHorizontalTextPosition(0);

		// 정보, 번호가 표시되는 패널을 감싸는 패널
		JPanel coverLine1 = new JPanel();
		coverLine1.setBackground(new Color(255, 255, 255));
		JPanel coverLine2 = new JPanel();
		coverLine2.setBackground(new Color(255, 255, 255));
		JPanel coverLine3 = new JPanel();
		coverLine3.setBackground(new Color(255, 255, 255));
		JPanel coverLine4 = new JPanel();
		coverLine4.setBackground(new Color(255, 255, 255));
		JPanel coverLine5 = new JPanel();
		coverLine5.setBackground(new Color(255, 255, 255));

		// ♣ 메인에서 입력받은 콤보박스정보, 게임정보가 표시되는 패널
		JPanel lineInf1 = new JPanel();
		lineInf1.setBackground(new Color(255, 255, 255));
		JPanel lineInf2 = new JPanel();
		lineInf2.setBackground(new Color(255, 255, 255));
		JPanel lineInf3 = new JPanel();
		lineInf3.setBackground(new Color(255, 255, 255));
		JPanel lineInf4 = new JPanel();
		lineInf4.setBackground(new Color(255, 255, 255));
		JPanel lineInf5 = new JPanel();
		lineInf5.setBackground(new Color(255, 255, 255));

		// ♣ 메인에서 입력받은 번호가 표시되는 패널
		JPanel line1 = new JPanel();
		line1.setBackground(new Color(255, 255, 255));
		JPanel line2 = new JPanel();
		line2.setBackground(new Color(255, 255, 255));
		JPanel line3 = new JPanel();
		line3.setBackground(new Color(255, 255, 255));
		JPanel line4 = new JPanel();
		line4.setBackground(new Color(255, 255, 255));
		JPanel line5 = new JPanel();
		line5.setBackground(new Color(255, 255, 255));

		// ♣ 메인에서 입력받은 번호가 표시되는 패널을 감싸는 패널
		JPanel bigLine1 = new JPanel();
		bigLine1.setBackground(new Color(255, 255, 255));
		JPanel bigLine2 = new JPanel();
		bigLine2.setBackground(new Color(255, 255, 255));
		JPanel bigLine3 = new JPanel();
		bigLine3.setBackground(new Color(255, 255, 255));
		JPanel bigLine4 = new JPanel();
		bigLine4.setBackground(new Color(255, 255, 255));
		JPanel bigLine5 = new JPanel();
		bigLine5.setBackground(new Color(255, 255, 255));

		// ♣ 사용자가 입력한 자동/반자동 등의 정보가 표시되는 Label
		resultCombo1 = new JLabel(comboStr1);
		resultCombo1.setBackground(new Color(255, 255, 255));
		resultCombo1.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultCombo2 = new JLabel(comboStr2);
		resultCombo2.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultCombo3 = new JLabel(comboStr3);
		resultCombo3.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultCombo4 = new JLabel(comboStr4);
		resultCombo4.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultCombo5 = new JLabel(comboStr5);
		resultCombo5.setFont(new Font("맑은 고딕", Font.BOLD, 20));

		// 당첨결과를 알려주는 Label
		resultRank1 = new JLabel(rank_Real(gameNumber1));
		resultRank1.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultRank2 = new JLabel(rank_Real(gameNumber2));
		resultRank2.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultRank3 = new JLabel(rank_Real(gameNumber3));
		resultRank3.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultRank4 = new JLabel(rank_Real(gameNumber4));
		resultRank4.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		resultRank5 = new JLabel(rank_Real(gameNumber5));
		resultRank5.setFont(new Font("맑은 고딕", Font.BOLD, 20));

		luckyHere.add(prizeNumbers1);
		luckyHere.add(prizeNumbers2);
		luckyHere.add(prizeNumbers3);
		luckyHere.add(prizeNumbers4);
		luckyHere.add(prizeNumbers5);
		luckyHere.add(prizeNumbers6);

		// 더하기 이미지가 들어갈 Label
		luckyHere.add(prizePlus);

		// 보너스 숫자가 들어갈 Label
		luckyHere.add(bonusNumber);

		luckyHere.setBackground(new Color(255, 255, 255));
		BoxLayout luckBox = new BoxLayout(topPnl, BoxLayout.X_AXIS);
		topPnl.setLayout(luckBox);

		topPnl.add(luckyHere);
		topPnl.setBackground(Color.red);

		// 메소드를 불러오기 위해서 다시 JLabel타입을 받는 객체를 생성해줬다. 한번에 불러오려고 이름까지 만들어줬따.
		JLabel[][] jNum = setLbl(gameNumber1, gameNumber2, gameNumber3, gameNumber4, gameNumber5);
				

		// 번호가 들어가는 줄은 panel middlePnl

		// ♣ 첫번째 줄 A
		// 첫번째 숫자가 표시되는 패널에 자동/수동 표시되는 Label
		// 숫자가 표시되는 Label, 당첨결과가 표시되는 Label을 넣었다.
		JLabel gameNameA = new JLabel("게임 A");
		gameNameA.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lineInf1.add(gameNameA);
		lineInf1.add(resultCombo1);
		bigLine1.add(line1);
		line1.add(jNum[0][0]);
		jNum[0][0].setFont(new Font("맑은 고딕", Font.BOLD, 20));
		line1.add(jNum[0][1]);
		line1.add(jNum[0][2]);
		line1.add(jNum[0][3]);
		line1.add(jNum[0][4]);
		line1.add(jNum[0][5]);
		line1.add(resultRank1);
		
		
		coverLine1.add(lineInf1);

		coverLine1.add(bigLine1);

		// ♣ 두번째 줄 B
		JLabel gameNameB = new JLabel("게임 B");
		gameNameB.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lineInf2.add(gameNameB);
		lineInf2.add(resultCombo2);
		line2.add(jNum[1][0]);
		line2.add(jNum[1][1]);
		line2.add(jNum[1][2]);
		line2.add(jNum[1][3]);
		line2.add(jNum[1][4]);
		line2.add(jNum[1][5]);
		bigLine2.add(line2);
		line2.add(resultRank2);
		coverLine2.add(lineInf2);

		coverLine2.add(bigLine2);

		// ♣ 세번째 줄 C
		JLabel gameNameC = new JLabel("게임 C");
		gameNameC.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lineInf3.add(gameNameC);
		lineInf3.add(resultCombo3);
		line3.add(jNum[2][0]);
		line3.add(jNum[2][1]);
		line3.add(jNum[2][2]);
		line3.add(jNum[2][3]);
		line3.add(jNum[2][4]);
		line3.add(jNum[2][5]);
		bigLine3.add(line3);
		line3.add(resultRank3);
		coverLine3.add(lineInf3);

		coverLine3.add(bigLine3);

		// ♣ 네번째 줄 D
		JLabel gameNameD = new JLabel("게임 D");
		gameNameD.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lineInf4.add(gameNameD);
		lineInf4.add(resultCombo4);
		line4.add(jNum[3][0]);
		line4.add(jNum[3][1]);
		line4.add(jNum[3][2]);
		line4.add(jNum[3][3]);
		line4.add(jNum[3][4]);
		line4.add(jNum[3][5]);
		bigLine4.add(line4);
		line4.add(resultRank4);
		coverLine4.add(lineInf4);

		coverLine4.add(bigLine4);

		// ♣ 다섯번째 줄 E
		JLabel gameNameE = new JLabel("게임 E");
		gameNameE.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lineInf5.add(gameNameE);
		lineInf5.add(resultCombo5);
		line5.add(jNum[4][0]);
		line5.add(jNum[4][1]);
		line5.add(jNum[4][2]);
		line5.add(jNum[4][3]);
		line5.add(jNum[4][4]);
		line5.add(jNum[4][5]);
		bigLine5.add(line5);
		line5.add(resultRank5);
		coverLine5.add(lineInf5);

		coverLine5.add(bigLine5);

		//
		middlePnl.add(coverLine1);
		middlePnl.add(coverLine2);
		middlePnl.add(coverLine3);
		middlePnl.add(coverLine4);
		middlePnl.add(coverLine5);

		// ♣ line1~5까지를 세로로 배열되게 한다.
		BoxLayout middleBox = new BoxLayout(middlePnl, BoxLayout.Y_AXIS);
		middlePnl.setLayout(middleBox);

		// 일단 배경 셋팅은 안됐고 1등 숫자와 똑같은 자리를 찾아주는 메소드
		for (int i = 0; i < 6; i++) {// 1등 숫자 여섯개 비교
			for (int j = 0; j < 5; j++) {// 게임 다섯번
				for (int k = 0; k < 6; k++) {// 받아온 숫자 6개
					if (String.format("%02d", (getPrn3().get(i))).equals(jNum[j][k].getText())) {
						System.out.println("1의자리가 찍힐까?" + jNum[j][k].getText());

						// 불투명하게 먼저 만들어주고 백그라운드 색을 바꿔줌
						URL urlMark = SubFrame.class.getClassLoader().getResource("img/pinkball.png");
						ImageIcon pinkball = new ImageIcon(kit.getImage(urlMark));
						jNum[j][k].setIcon(pinkball);
						jNum[j][k].setText(jNum[j][k].getText());
						jNum[j][k].setHorizontalTextPosition(0);

					}
				}
			}
		}

		// 색을 찾아줘

//		numLblA1.setBackground(blue);
		// bottomPnl
		// 첫번째 창으로 넘어가서 다시 번호를 입력하기 위한 버튼
		btnReset2 = new JButton("다시 입력하기");
		btnReset2.setBounds(119, 10, 157, 29);
		btnReset2.setFont(new Font("맑은 고딕", Font.BOLD, 14));
		// 시스템 종료를 위한 버튼
		btnEnd = new JButton("종료하기");
		btnEnd.setBounds(401, 10, 157, 29);
		btnEnd.setFont(new Font("맑은 고딕", Font.BOLD, 14));

		ActionListener actionlistener = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if (e.getActionCommand().equals("다시 입력하기")) {
					dispose();
					((MainFrame) owner).AllReset();

				} else if (e.getActionCommand().equals("종료하기")) {
					dispose();
					owner.dispose();
				}

			}
		};

		// 콤보박스의 텍스트에따라 보이고 안보이고를 설정해주는 부분
		if (comboStr1.equals("구매안함")) {
			line1.show(false);
		}
		if (comboStr2.equals("구매안함")) {
			line2.show(false);
		}
		if (comboStr3.equals("구매안함")) {
			line3.show(false);
		}
		if (comboStr4.equals("구매안함")) {
			line4.show(false);
		}
		if (comboStr5.equals("구매안함")) {
			line5.show(false);
		}

		btnReset2.addActionListener(actionlistener);
		btnEnd.addActionListener(actionlistener);
		bottomPnl.setLayout(null);

		// GUI 나오게 넣어주는 부분

		bottomPnl.add(btnReset2);
		bottomPnl.add(btnEnd);

		pnl.add(topPnl);
		pnl.add(middlePnl);
		pnl.add(bottomPnl);

		getContentPane().add(pnl);
		BoxLayout boxPnl = new BoxLayout(pnl, BoxLayout.Y_AXIS);
		pnl.setLayout(boxPnl);
		setSize(700, 700);
		setLocationRelativeTo(owner);

		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				System.exit(0);
			}
		});

	}

	// ♣ 만들어낸 Label을 return 받기 위해 getter와 setter을 만들었다.
	// 값을 넘겨받아서 넣기 위해서는 필요할 것 같아서 만들었는데 필요가 없으려나...?

	public JButton getBtnReset2() {
		return btnReset2;
	}

	public JButton getBtnEnd() {
		return btnEnd;
	}

	public JLabel getResultRank1() {
		return resultRank1;
	}

	public void setResultRank1(JLabel resultRank1) {
		this.resultRank1 = resultRank1;
	}

	public JLabel getResultRank2() {
		return resultRank2;
	}

	public void setResultRank2(JLabel resultRank2) {
		this.resultRank2 = resultRank2;
	}

	public JLabel getResultRank3() {
		return resultRank3;
	}

	public void setResultRank3(JLabel resultRank3) {
		this.resultRank3 = resultRank3;
	}

	public JLabel getResultRank4() {
		return resultRank4;
	}

	public void setResultRank4(JLabel resultRank4) {
		this.resultRank4 = resultRank4;
	}

	public JLabel getResultRank5() {
		return resultRank5;
	}

	public void setResultRank5(JLabel resultRank5) {
		this.resultRank5 = resultRank5;
	}

	// 당첨결과를 출력해주는 메소드
	public String rank_Real(ArrayList<Integer> arr) {

		int count = 0;
		String str="";
		for (int i = 0; i < getPrn3().size(); i++) {

			if (getPrn3().contains(arr.get(i))) {

				count++;

				if (count == 6 && bonus != arr.get(i)) {
					System.out.println("당첨");
					str = "당첨";

				} else if (count == 5 && arr.contains(bonus)) {
					System.out.println("2등");
					str = "2등";

				} else if (count == 5) {
					System.out.println("3등");
					str = "3등";

				} else if (count == 4) {
					System.out.println("4등");
					str = "4등";

				} else if (count == 3) {
					System.out.println("5등");
					str = "5등";

				} else {
					System.out.println("다음 기회에");
					str = "다음 기회";
				}
			}
			str = "다음 기회";
		}
		return str;
	}

}