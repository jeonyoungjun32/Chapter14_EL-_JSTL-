package sec01.ex01;

import java.sql.Date;

public class MemberBean {
	String id;
	String pwd;
	String name;
	String email;
	// Date할라면 위 import에 sql이 들어가야한다
	Date joinDate;// 가입일

	// 생성자만들고 (기본생성자도있다)
	//반드시 "매개변수가 없는 생성자" 있어야 함
	public MemberBean() {} //이걸 만들어 줘야함
	
	public MemberBean(String id, String pwd, String name, String email) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", joinDate="
				+ joinDate + "]";
	}
	
	

}
