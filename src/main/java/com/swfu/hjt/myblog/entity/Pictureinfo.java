package com.swfu.hjt.myblog.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;
import java.util.Date;

@Entity   //jpa管理实体类
@Table(name = "pictureinfo")
public class Pictureinfo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)   //自动递增

	private Integer pid;	//图片id 
	private String pdescribe;	//图片描述 
	private String plocation;	//图片展示的地址 
	private String pimg;	//图片文件

	@JsonFormat(pattern="yyyy/MM/dd")
	private Date ptime;	//图片拍摄时间 

	public Pictureinfo (){

	}

	public Pictureinfo(Integer pid, String pdescribe, String plocation, String pimg, Date ptime) {
		this.pid = pid;
		this.pdescribe = pdescribe;
		this.plocation = plocation;
		this.pimg = pimg;
		this.ptime = ptime;
	}

	public void setPid(Integer pid){
		this.pid=pid;
	}
	public Integer getPid(){
		return pid;
	}

	public void setPdescribe(String pdescribe){
		this.pdescribe=pdescribe;
	}
	public String getPdescribe(){
		return pdescribe;
	}

	public void setPlocation(String plocation){
		this.plocation=plocation;
	}
	public String getPlocation(){
		return plocation;
	}

	public void setPimg(String pimg){
		this.pimg=pimg;
	}
	public String getPimg(){
		return pimg;
	}

	public void setPtime(Date ptime){
		this.ptime=ptime;
	}
	public Date getPtime(){
		return ptime;
	}

	@Override
	public String toString(){
		return " Pictureinfo [pid=" + pid+ " , pdescribe=" + pdescribe+ " , plocation=" + plocation+ " , pimg=" + pimg+ " , ptime=" + ptime+"]";
	}

}

