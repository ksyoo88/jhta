package join;

import java.util.Date;

public class JoinVO {

	private String member_id;
	private String email;
	private String password;
	private String name;
	private Date birth;
	private String gender;
	private String addr;
	private String zipcode;
	private String phone;
	private Date regdate;

	public JoinVO() {}

	public String toString() {
		return "JoinVO [member_id=" + member_id + ", email=" + email
				+ ", password=" + password + ", name=" + name + ", birth="
				+ birth + ", gender=" + gender + ", addr=" + addr
				+ ", zipcode=" + zipcode + ", phone=" + phone + ", regdate="
				+ regdate + "]";
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public JoinVO(String member_id, String email, String password, String name,
			Date birth, String gender, String addr, String zipcode,
			String phone, Date regdate) {
		this.member_id = member_id;
		this.email = email;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.addr = addr;
		this.zipcode = zipcode;
		this.phone = phone;
		this.regdate = regdate;
	}

}
