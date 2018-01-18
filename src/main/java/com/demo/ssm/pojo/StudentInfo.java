package com.demo.ssm.pojo;

import java.io.Serializable;
import java.util.Date;

public class StudentInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	// 学号
	private String stuId;
	// 姓名
	private String stuName;
	// 专业
	private Integer profession;
	// 入学日期
	private Date date;
	// 性别
	private Integer sex;
	// 身份证id
	private String idNum;
	// 总学分
	private Integer totalScore;
	// 其他
	private String note;

	public String getStuId() {
		return stuId;
	}

	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public Integer getProfession() {
		return profession;
	}

	public void setProfession(Integer profession) {
		this.profession = profession;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getIdNum() {
		return idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	public Integer getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(Integer totalScore) {
		this.totalScore = totalScore;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}