package dto;

import java.io.Serializable;

public class Flower implements Serializable {
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private static final long serialVersionUID = -427470057203867700L;
	
	private String flowerId; //상품코드
	private String category; //카테고리
	private String name; // 상품 이름
	private Integer unitPrice; // 상품 가격
	private String type; // 꽃 종류
	private String origin; //원산지
	private String filename; // 꽃 이미지
	private String filename2; // 꽃 이미지
	private String message; // 메세지 카드 내용
	private int quantity; // 양
	private String mtitle;


	public Flower() {
		super();
	}
	public Flower(String flowerId, String name, int unitPrice) {
		this.flowerId = flowerId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	public String getFlowerId() {
		return flowerId;
	}
	public void setFlowerId(String flowerId) {
		this.flowerId = flowerId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

}
