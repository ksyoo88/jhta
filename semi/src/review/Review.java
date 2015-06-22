package review;

import java.util.Date;

public class Review {
	private int no;
	private String area;
	private String memberId;
	private int performanceNo;
	private String title;
	private Date regdate;
	private int hit;
	private Date viewdate;
	private String contents;
	private String comm;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getPerformanceNo() {
		return performanceNo;
	}
	public void setPerformanceNo(int performanceNo) {
		this.performanceNo = performanceNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getViewdate() {
		return viewdate;
	}
	public void setViewdate(Date viewdate) {
		this.viewdate = viewdate;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
}
