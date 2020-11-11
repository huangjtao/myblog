package com.swfu.hjt.myblog.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comment")
public class Comment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer cid;	//留言id
	private String commentator;	//留言者
	private String cmessage;	//留言信息
	private Date ctime;	//留言时间
	private String cimg;	//头像

	public Comment (){

	}

	public Comment(Integer cid, String commentator, String cmessage, Date ctime,String cimg) {
		this.cid = cid;
		this.commentator = commentator;
		this.cmessage = cmessage;
		this.ctime = ctime;
		this.cimg=cimg;
	}

	public void setCid(Integer cid){
		this.cid=cid;
	}
	public Integer getCid(){
		return cid;
	}

	public void setCommentator(String commentator){
		this.commentator=commentator;
	}
	public String getCommentator(){
		return commentator;
	}

	public void setCmessage(String cmessage){
		this.cmessage=cmessage;
	}
	public String getCmessage(){
		return cmessage;
	}

	public void setCtime(Date ctime){
		this.ctime=ctime;
	}
	public Date getCtime(){
		return ctime;
	}

	public void setCimg(String cimg){
		this.cimg=cimg;
	}
	public String getCimg(){
		return cimg;
	}

	@Override
	public String toString(){
		return " Comment [cid=" + cid+ " , commentator=" + commentator+ " , cmessage=" + cmessage+ " , ctime=" + ctime+ " , cimg=" + cimg+"]";
	}

}
