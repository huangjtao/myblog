package com.swfu.hjt.myblog.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "whisper")
public class Whisper {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer wid;	//微语ID 
	private String whispercontent;	//微语内容 
	private Date whispertime;	//微语撰写时间 
	private Integer dnum;	//点赞数 
	private Integer pnum;	//评论数 
	private String whisperauthor;	//微语撰写作者 
	private String wimg; 

	public Whisper (){

	}

	public Whisper(Integer wid, String whispercontent, Date whispertime, Integer dnum, Integer pnum, String whisperauthor, String wimg) {
		this.wid = wid;
		this.whispercontent = whispercontent;
		this.whispertime = whispertime;
		this.dnum = dnum;
		this.pnum = pnum;
		this.whisperauthor = whisperauthor;
		this.wimg = wimg;
	}

	public void setWid(Integer wid){
		this.wid=wid;
	}
	public Integer getWid(){
		return wid;
	}

	public void setWhispercontent(String whispercontent){
		this.whispercontent=whispercontent;
	}
	public String getWhispercontent(){
		return whispercontent;
	}

	public void setWhispertime(Date whispertime){
		this.whispertime=whispertime;
	}
	public Date getWhispertime(){
		return whispertime;
	}

	public void setDnum(Integer dnum){
		this.dnum=dnum;
	}
	public Integer getDnum(){
		return dnum;
	}

	public void setPnum(Integer pnum){
		this.pnum=pnum;
	}
	public Integer getPnum(){
		return pnum;
	}

	public void setWhisperauthor(String whisperauthor){
		this.whisperauthor=whisperauthor;
	}
	public String getWhisperauthor(){
		return whisperauthor;
	}

	public void setWimg(String wimg){
		this.wimg=wimg;
	}
	public String getWimg(){
		return wimg;
	}

	@Override
	public String toString(){
		return " Whisper [wid=" + wid+ " , whispercontent=" + whispercontent+ " , whispertime=" + whispertime+ " , dnum=" + dnum+ " , pnum=" + pnum+ " , whisperauthor=" + whisperauthor+ " , wimg=" + wimg+"]";
	}

}

