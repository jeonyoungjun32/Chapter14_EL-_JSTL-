package sec01.ex02;

public class Address {
	private String ciry; //회원의 거주 도시
	private String zipcode; //우편번호
	
	// 매개변수가 없는 생성자 반드시 존재(기본생성자)
	public Address() {}

	public String getCiry() {
		return ciry;
	}

	public void setCiry(String ciry) {
		this.ciry = ciry;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
