package com.lesa.www;

public class hopelecBean {
	
	
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getBoard_idx() {
		return board_idx;
	}

	public void setBoard_idx(String board_idx) {
		this.board_idx = board_idx;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubject2() {
		return subject2;
	}

	public void setSubject2(String subject2) {
		this.subject2 = subject2;
	}

	public String getLectype() {
		return lectype;
	}

	public void setLectype(String lectype) {
		this.lectype = lectype;
	}

	public String getTaddress() {
		return taddress;
	}

	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}

	public String getSal() {
		return sal;
	}

	public void setSal(String sal) {
		this.sal = sal;
	}

	public String getEx1() {
		return ex1;
	}

	public void setEx1(String ex1) {
		this.ex1 = ex1;
	}

	public String getEx2() {
		return ex2;
	}

	public void setEx2(String ex2) {
		this.ex2 = ex2;
	}

	public String getEx3() {
		return ex3;
	}

	public void setEx3(String ex3) {
		this.ex3 = ex3;
	}

	private int idx;
	private String id;
	private String title;			
	private String content;
	private String rdate;
	private int hit;
	private String board_idx;	
	private String subject;
	private String subject2;
	private String lectype;
	private String taddress;
	private String sal;
	
	private String ex1;	
	private String ex2;	
	private String ex3;
	
	public hopelecBean() {
		
	}

	public hopelecBean(int idx, String id, String title, String content, String rdate2, int hit, String subject,
			String subject2, String lectype, String taddress, String sal) {
		super();
		this.idx = idx;
		this.id = id;
		this.title = title;
		this.content = content;		
		
		String rdate = rdate2.substring(0, rdate2.length()-2);
		
		this.rdate = rdate;
		this.hit = hit;
		this.subject = subject;
		this.subject2 = subject2;
		this.lectype = lectype;
		this.taddress = taddress;
		this.sal = sal;
	}	

}
