package com.demo.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Stumarkinfo {
    private String markid;

    private String stuid;

    private String coursename;

    private BigDecimal basescore;

    private BigDecimal testscore;

    private BigDecimal finalscore;

    private Date adddate;

    private String note;

    public String getMarkid() {
        return markid;
    }

    public void setMarkid(String markid) {
        this.markid = markid;
    }

    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) {
        this.stuid = stuid;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public BigDecimal getBasescore() {
        return basescore;
    }

    public void setBasescore(BigDecimal basescore) {
        this.basescore = basescore;
    }

    public BigDecimal getTestscore() {
        return testscore;
    }

    public void setTestscore(BigDecimal testscore) {
        this.testscore = testscore;
    }

    public BigDecimal getFinalscore() {
        return finalscore;
    }

    public void setFinalscore(BigDecimal finalscore) {
        this.finalscore = finalscore;
    }

    public Date getAdddate() {
        return adddate;
    }

    public void setAdddate(Date adddate) {
        this.adddate = adddate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}