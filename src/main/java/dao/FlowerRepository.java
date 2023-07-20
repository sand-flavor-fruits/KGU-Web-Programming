package dao;

import java.util.ArrayList;

import dto.Flower;

public class FlowerRepository {
	private ArrayList<Flower> listOfFlowers = new ArrayList<Flower>();
	private static FlowerRepository instance = new FlowerRepository();
	public static FlowerRepository getInstance() {
		return instance;
	}
	
	public FlowerRepository() {
		Flower flower1 = new Flower("RB-0001", "레드 장미 한 송이", 1500);
		flower1.setType("레드 장미");
		flower1.setCategory("[한송이]");
		flower1.setOrigin("국산(장미)");
		flower1.setFilename("red_1.png");
		flower1.setFilename2("red_1.png");
		
		Flower flower2 = new Flower("RB-0002", "핑크 장미 한 송이", 1500);
		flower2.setType("핑크 장미");
		flower2.setCategory("[한송이]");
		flower2.setOrigin("국산(장미)");
		flower2.setFilename("pink_1.png");
		flower2.setFilename2("pink_1.png");
		
		Flower flower3 = new Flower("RB-0003", "화이트 장미 한 송이", 1500);
		flower3.setType("화이트 장미");
		flower3.setCategory("[한송이]");
		flower3.setOrigin("국산(장미)");
		flower3.setFilename("white_1.png");
		flower3.setFilename2("white_1.png");
		
		Flower flower4 = new Flower("TB-0001", "레드 튤립 한 송이", 1700);
		flower4.setType("레드 튤립");
		flower4.setCategory("[한송이]");
		flower4.setOrigin("네덜란드(튤립)");
		flower4.setFilename("redtulip_1.png");
		flower4.setFilename2("redtulip_1.png");
		
		Flower flower5 = new Flower("TB-0002", "핑크 튤립 한 송이", 1700);
		flower5.setType("핑크 튤립");
		flower5.setCategory("[한송이]");
		flower5.setOrigin("네덜란드(튤립)");
		flower5.setFilename("pinktulip_1.png");
		flower5.setFilename2("pinktulip_1.png");
		
		Flower flower6 = new Flower("TB-0003", "화이트 튤립 한 송이", 1700);
		flower6.setType("화이트 튤립");
		flower6.setCategory("[한송이]");
		flower6.setOrigin("네덜란드(튤립)");
		flower6.setFilename("whitetulip_1.png");
		flower6.setFilename2("whitetulip_1.png");
		
		Flower flower7 = new Flower("RB-0004", "블루 꽃다발", 55000);
		flower7.setType("핑크블루 장미, 화이트블루 소국, 화이트블루 리시안셔스 등");
		flower7.setCategory("[꽃다발]");
		flower7.setOrigin("국산(장미, 소국, 리시안셔스)");
		flower7.setFilename("blue1.png");
		flower7.setFilename2("blue2.png");
		
		Flower flower8 = new Flower("EB-0001", "화이트 꽃다발", 58000);
		flower8.setType("화이트 작약, 화이트 리시안셔스, 화이트 장미, 돌단풍 등");
		flower8.setCategory("[꽃다발]");
		flower8.setOrigin("중국(작약), 국산(리시안셔스, 장미, 돌단풍)");
		flower8.setFilename("white1.png");
		flower8.setFilename2("white2.png");

		
		Flower flower9 = new Flower("RB-0005", "핑크 꽃다발", 60000);
		flower9.setType("핑크 장미, 화이트 장미, 핑크 돌단풍 등");
		flower9.setCategory("[꽃다발]");
		flower9.setOrigin("국산(장미, 돌단풍)");
		flower9.setFilename("pink1.png");
		flower9.setFilename2("pink2.png");

		
		Flower flower10 = new Flower("EB-0002", "옐로우 꽃다발",52000);
		flower10.setType("화이트 리시안셔스, 옐로우 라넌큘러스, 옐로우 장미, 옐로우 소국 등");
		flower10.setCategory("[꽃다발]");
		flower10.setOrigin("국산(리시안셔스, 장미, 소국), 네덜란드(라넌큘러스)");
		flower10.setFilename("yellow1.png");
		flower10.setFilename2("yellow2.png");

		
		Flower flower11 = new Flower("RB-0006", "레드 장미 100송이 꽃다발", 210000);
		flower11.setType("레드 장미");
		flower11.setCategory("[꽃다발]");
		flower11.setOrigin("국산(장미)");
		flower11.setFilename("redrose1001.png");
		flower11.setFilename2("redrose1002.png");

		
		Flower flower12 = new Flower("MB-0001", "메리골드 꽃다발", 62000);
		flower12.setType("오렌지 메리골드, 옐로우 소국, 레드 소국, 옐로우 장미 등");
		flower12.setCategory("[꽃다발]");
		flower12.setOrigin("국산(메리골드, 소국, 장미)");
		flower12.setFilename("yellowMarigold1.png");
		flower12.setFilename2("yellowMarigold2.png");

		
		Flower flower13 = new Flower("SB-0001", "해바라기 꽃다발", 53000);
		flower13.setType("해바라기, 코랄 장미");
		flower13.setCategory("[꽃다발]");
		flower13.setOrigin("국산(해바라기, 장미)");
		flower13.setFilename("sunflower1.png");
		flower13.setFilename2("sunflower2.png");

		
		Flower flower14 = new Flower("CB-0001", "목화 꽃다발", 27000);
		flower14.setType("목화, 돌단풍, 핑크 안개꽃, 랴그라스 등");
		flower14.setCategory("[꽃다발]");
		flower14.setOrigin("국산(목화, 돌단풍, 안개꽃), 이탈리아(라그라스)");
		flower14.setFilename("cotton1.png");
		flower14.setFilename2("cotton2.png");

		
		Flower flower15 = new Flower("LB-0001", "백합 꽃다발", 38000);
		flower15.setType("화이트 백합");
		flower15.setCategory("[꽃다발]");
		flower15.setOrigin("국산(백합)");
		flower15.setFilename("lily1.png");
		flower15.setFilename2("lily2.png");

		
		Flower flower16 = new Flower("HB-0001", "블루 수국 꽃다발", 64000);
		flower16.setType("블루 수국, 화이트 리시안셔스, 코랄 라넌큘러스, 화이트 퐁퐁 국화 등");
		flower16.setCategory("[꽃다발]");
		flower16.setOrigin("국산(수국, 리시안셔스), 네덜란드(라넌큘러스), 중국(퐁퐁 국화)");
		flower16.setFilename("hydrangea1.png");
		flower16.setFilename2("hydrangea2.png");

		
		Flower flower17 = new Flower("GB-0001", "블루 안개꽃 꽃다발", 65000);
		flower17.setType("블루 안개꽃");
		flower17.setCategory("[꽃다발]");
		flower17.setOrigin("국산(안개꽃)");
		flower17.setFilename("bluegypsophila1.png");
		flower17.setFilename2("bluegypsophila2.png");

		
		Flower flower18 = new Flower("RX-0007", "하트 장미 바구니", 160000);
		flower18.setType("레드 장미, 화이트 장미, 옐로우 소국, 안개꽃 등");
		flower18.setCategory("[바구니]");
		flower18.setOrigin("국산(장미, 소국, 안개꽃");
		flower18.setFilename("heartbox1.png");
		flower18.setFilename2("heartbox2.png");

		
		Flower flower19 = new Flower("RX-0008", "레드 장미 바구니", 65000);
		flower19.setType("레드 장미, 레드 퐁퐁 소국, 레드 소국 등");
		flower19.setCategory("[바구니]");
		flower19.setOrigin("국산(장미, 소국), 중국(퐁퐁 소국)");
		flower19.setFilename("redbox1.png");
		flower19.setFilename2("redbox2.png");

		
		Flower flower20 = new Flower("RX-0009", "옐로우 장미 바구니", 68000);
		flower20.setType("화이트 장미, 옐로우 라넌큘러스 등");
		flower20.setCategory("[바구니]");
		flower20.setOrigin("국산(장미), 네덜란드(라넌큘러스)");
		flower20.setFilename("yellowbox1.png");
		flower20.setFilename2("yellowbox2.png");
		
		Flower flower21 = new Flower("RX-0010", "퍼플 장미 바구니", 72000);
		flower21.setType("퍼플 장미, 블루 장미, 화이트 장미, 핑크 장미 등");
		flower21.setCategory("[바구니]");
		flower21.setOrigin("국산(장미)");
		flower21.setFilename("purplebox1.png");
		flower21.setFilename2("purplebox2.png");

		
		Flower flower22 = new Flower("HX-0002", "수국 바구니", 70000);
		flower22.setType("화이트 수국, 블루 수국, 그린 수국 등");
		flower22.setCategory("[바구니]");
		flower22.setOrigin("국산(수국)");
		flower22.setFilename("hydrangeabox1.png");
		flower22.setFilename2("hydrangeabox2.png");

		
		Flower flower23 = new Flower("CO-0002", "블루 클레마티스 풍선 꽃다발", 23000);
		flower23.setType("블루 클레마티스");
		flower23.setCategory("[풍선]");
		flower23.setOrigin("중국(클레마티스)");
		flower23.setFilename("balloonblueClematis1.png");
		flower23.setFilename2("balloonblueClematis2.png");

		
		Flower flower24 = new Flower("RO-0011", "골드 풍선 꽃다발", 20000);
		flower24.setType("골드 장미, 안개꽃 등");
		flower24.setCategory("[풍선]");
		flower24.setOrigin("중국(골드 장미), 국산(안개꽃)");
		flower24.setFilename("balloongold1.png");
		flower24.setFilename2("balloongold2.png");
		
		Flower flower25 = new Flower("TO-0004", "핑크 튤립 풍선 꽃다발", 25000);
		flower25.setType("핑크 튤립");
		flower25.setCategory("[풍선]");
		flower25.setOrigin("네덜란드(튤립)");
		flower25.setFilename("balloontulip1.png");
		flower25.setFilename2("balloontulip2.png");

		
		Flower flower26 = new Flower("EO-0003", "화이트 풍선 꽃다발", 28000);
		flower26.setType("화이트 라넌큘러스, 화이트 국화 등");
		flower26.setCategory("[풍선]");
		flower26.setOrigin("네덜란드(라넌큘러스), 국산(국화)");
		flower26.setFilename("balloonwhite1.png");
		flower26.setFilename2("balloonwhite2.png");

		
		Flower flower27 = new Flower("RS-0012", "오로라 비누 장미 꽃다발", 18000);
		flower27.setType("오로라 비누 장미, 핑크 미니 소국 등");
		flower27.setCategory("[비누]");
		flower27.setOrigin("중국(비누 장미), 국산(핑크 미니 소국)");
		flower27.setFilename("soapaurora1.png");
		flower27.setFilename2("soapaurora2.png");

		
		Flower flower28 = new Flower("TS-0005", "핑크 비누 튤립 꽃다발", 15000);
		flower28.setType("핑크 비누 튤립");
		flower28.setCategory("[비누]");
		flower28.setOrigin("중국(비누 튤립)");
		flower28.setFilename("soappink1.png");
		flower28.setFilename2("soappink2.png");

		
		Flower flower29 = new Flower("RS-0013", "퍼플 비누 장미 꽃다발", 25000);
		flower29.setType("퍼플 비누 장미, 핑크 비누 장미");
		flower29.setCategory("[비누]");
		flower29.setOrigin("중국(비누 장미)");
		flower29.setFilename("soappurple1.png");
		flower29.setFilename2("soappurple2.png");

		
		Flower flower30 = new Flower("RS-0014", "민트 비누 장미 꽃다발", 26000);
		flower30.setType("민트 비누 장미");
		flower30.setCategory("[비누]");
		flower30.setOrigin("중국(비누 장미)");
		flower30.setFilename("soapmint1.png");
		flower30.setFilename2("soapmint2.png");

		
		Flower flower31 = new Flower("NP-0001", "안시리움", 58000);
		flower31.setType("안시리움");
		flower31.setCategory("[관엽식물]");
		flower31.setOrigin("콜롬비아(안시리움)");
		flower31.setFilename("ansirium1.png");
		flower31.setFilename2("ansirium2.png");

		
		Flower flower32 = new Flower("NP-0002", "만세선인장", 149000);
		flower32.setType("만세선인장");
		flower32.setCategory("[관엽식물]");
		flower32.setOrigin("중국(만세선인장)");
		flower32.setFilename("Cactus1.png");
		flower32.setFilename2("Cactus2.png");

		
		Flower flower33= new Flower("NP-0003", "산세베리아", 70000);
		flower33.setType("산세베리아");
		flower33.setCategory("[관엽식물]");
		flower33.setOrigin("이탈리아(산세베리아)");
		flower33.setFilename("sansevieria1.png");
		flower33.setFilename2("sansevieria2.png");

		
		Flower flower34 = new Flower("NP-0004", "동양란", 199000);
		flower34.setType("동양란");
		flower34.setCategory("[동양란]");
		flower34.setOrigin("국산(동양란)");
		flower34.setFilename("goldendragon1.png");
		flower34.setFilename2("goldendragon2.png");
		
		Flower flower35 = new Flower("M-0001", "블루 장미 꽃다발", 20000);
		flower35.setMtitle("블루 장미로 꽃다발 주문제작 부탁드립니다.");
		flower35.setCategory("[꽃다발]");
		flower35.setFilename("madeblue.png");

		Flower flower36 = new Flower("M-0002", "화이트 안개 꽃다발", 50000);
		flower36.setMtitle("화이트 안개꽃으로 큰 꽃다발 주문제작 부탁드립니다.");
		flower36.setCategory("[꽃다발]");
		flower36.setFilename("madegypsophila.png");

		Flower flower37 = new Flower("M-0003", "핑크 안개꽃 튤립 꽃다발", 30000);
		flower37.setMtitle("핑크 튤립과 핑크 안개꽃으로 꽃다발 주문제작 부탁드려요.");
		flower37.setCategory("[꽃다발]");
		flower37.setFilename("madegypsophilatulip.png");
		
		
		Flower flower38 = new Flower("M-0004", "화이트 소국 꽃다발", 10000);
		flower38.setMtitle("화이트 소국을 메인으로 미니 꽃다발 제작 부탁드려요.");
		flower38.setCategory("[꽃다발]");
		flower38.setFilename("mademini.png");
		
		listOfFlowers.add(flower1);
		listOfFlowers.add(flower2);
		listOfFlowers.add(flower3);
		listOfFlowers.add(flower4);
		listOfFlowers.add(flower5);
		listOfFlowers.add(flower6);
		listOfFlowers.add(flower7);
		listOfFlowers.add(flower8);
		listOfFlowers.add(flower9);
		listOfFlowers.add(flower10);
		listOfFlowers.add(flower11);
		listOfFlowers.add(flower12);
		listOfFlowers.add(flower13);
		listOfFlowers.add(flower14);
		listOfFlowers.add(flower15);
		listOfFlowers.add(flower16);
		listOfFlowers.add(flower17);
		listOfFlowers.add(flower18);
		listOfFlowers.add(flower19);
		listOfFlowers.add(flower20);
		listOfFlowers.add(flower21);
		listOfFlowers.add(flower22);
		listOfFlowers.add(flower23);
		listOfFlowers.add(flower24);
		listOfFlowers.add(flower25);
		listOfFlowers.add(flower26);
		listOfFlowers.add(flower27);
		listOfFlowers.add(flower28);
		listOfFlowers.add(flower29);
		listOfFlowers.add(flower30);
		listOfFlowers.add(flower31);
		listOfFlowers.add(flower32);
		listOfFlowers.add(flower33);
		listOfFlowers.add(flower34);
		listOfFlowers.add(flower35);
		listOfFlowers.add(flower36);
		listOfFlowers.add(flower37);
		listOfFlowers.add(flower38);
	}
	public void addFlower(Flower flower) {
		listOfFlowers.add(flower);
	}
	public ArrayList<Flower> getAllFlowers() {
		return listOfFlowers;
	}	
	public Flower getFlowerById(String flowerId) {
		Flower flowerById = null;
		
		for(int i = 0; i < listOfFlowers.size(); i++) {
			Flower flower = listOfFlowers.get(i);
			if(flower != null && flower.getFlowerId() != null && flower.getFlowerId().equals(flowerId)) {
				flowerById = flower;
				break;
			}
		}
		return flowerById;
	}
}
