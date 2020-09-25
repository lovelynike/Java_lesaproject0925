package com.lesa.www;

public class memberBean {
	
	private int idx;	
	private String id;
	private String pw;
	private String name;
	private String bday;
	private String gender;
	
	
	private String email;
	private String email1;
	private String email2;
	private String email3;

	private String tel;
	private String nsubject;
	private String rdate;
	private String photo;
	
	public memberBean(int idx, String id, String pw, String name, String bday, String gender, String email, String tel,
			String nsubject, String rdate, String photo, String check00, String check01, String check02, String check03,
			String level, String extra2, String extra3) {
		super();
		this.idx = idx;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.bday = bday;
		this.gender = gender;
		this.email = email;
		this.tel = tel;
		this.nsubject = nsubject;
		this.rdate = rdate;
		this.photo = photo;
		this.check00 = check00;
		this.check01 = check01;
		this.check02 = check02;
		this.check03 = check03;
		this.level = level;
		this.extra2 = extra2;
		this.extra3 = extra3;
	}

	private String check00;
	private String check01;
	private String check02;
	private String check03;
	
	private String level;
	
	private String extra2;
	private String extra3;
	
	public memberBean() {
		
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNsubject() {
		return nsubject;
	}

	public void setNsubject(String nsubject) {
		this.nsubject = nsubject;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getCheck00() {
		return check00;
	}

	public void setCheck00(String check00) {
		this.check00 = check00;
	}

	public String getCheck01() {
		return check01;
	}

	public void setCheck01(String check01) {
		this.check01 = check01;
	}

	public String getCheck02() {
		return check02;
	}

	public void setCheck02(String check02) {
		this.check02 = check02;
	}

	public String getCheck03() {
		return check03;
	}

	public void setCheck03(String check03) {
		this.check03 = check03;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getExtra2() {
		return extra2;
	}

	public void setExtra2(String extra2) {
		this.extra2 = extra2;
	}

	public String getExtra3() {
		return extra3;
	}

	public void setExtra3(String extra3) {
		this.extra3 = extra3;
	}
	
	
	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getEmail3() {
		return email3;
	}

	public void setEmail3(String email3) {
		this.email3 = email3;
	}


}
