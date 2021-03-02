package com.koreait.member;

import java.util.Arrays;

public class MemberDTO {
	private int idx;
	private String userid;
	private String userpw;
	private String username;
	private String email;
	private String hp;
	private String[] hobby = new String[5];
	private String ssn1;
	private String ssn2;
	private String zipcode;
	private String adress1;
	private String adress2;
	private String adress3;
	private String regdate;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getSsn1() {
		return ssn1;
	}
	public void setSsn1(String ssn1) {
		this.ssn1 = ssn1;
	}
	public String getSsn2() {
		return ssn2;
	}
	public void setSsn2(String ssn2) {
		this.ssn2 = ssn2;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAdress1() {
		return adress1;
	}
	public void setAdress1(String adress1) {
		this.adress1 = adress1;
	}
	public String getAdress2() {
		return adress2;
	}
	public void setAdress2(String adress2) {
		this.adress2 = adress2;
	}
	public String getAdress3() {
		return adress3;
	}
	public void setAdress3(String adress3) {
		this.adress3 = adress3;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [idx=" + idx + ", userid=" + userid + ", userpw=" + userpw + ", username=" + username
				+ ", email=" + email + ", hp=" + hp + ", hobby=" + Arrays.toString(hobby) + ", ssn1=" + ssn1 + ", ssn2="
				+ ssn2 + ", zipcode=" + zipcode + ", adress1=" + adress1 + ", adress2=" + adress2 + ", adress3="
				+ adress3 + ", regdate=" + regdate + "]";
	}
	
	
}
