package com.koreait.fboard;

public class FboardDTO {
	
	
	private int idx;
	private String userid;
	private String username;
	private String title;
	private String content;
	private String file;
	private String filepath;
	private String regdate;
	private int hit;
	
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	@Override
	public String toString() {
		return "FboardDTO [idx=" + idx + ", userid=" + userid + ", username=" + username + ", title=" + title
				+ ", content=" + content + ", file=" + file + ", filepath=" + filepath + ", regdate=" + regdate
				+ ", hit=" + hit + "]";
	}	
}
