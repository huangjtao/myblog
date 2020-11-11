import java.util.Date; 
public class Articleinfo {
	private Integer articleid;	//文章ID 
	private String articlename;	//文章标题 
	private String author;	//作者 
	private String articledis;	//文章描述 
	private String content;	//文章内容 
	private Date writetime;	//文章撰写时间 
	private String img;	//文章图片信息 

	public Articleinfo (){

	}

	public void setArticleid(Integer articleid){
		this.articleid=articleid;
	}
	public Integer getArticleid(){
		return articleid;
	}

	public void setArticlename(String articlename){
		this.articlename=articlename;
	}
	public String getArticlename(){
		return articlename;
	}

	public void setAuthor(String author){
		this.author=author;
	}
	public String getAuthor(){
		return author;
	}

	public void setArticledis(String articledis){
		this.articledis=articledis;
	}
	public String getArticledis(){
		return articledis;
	}

	public void setContent(String content){
		this.content=content;
	}
	public String getContent(){
		return content;
	}

	public void setWritetime(Date writetime){
		this.writetime=writetime;
	}
	public Date getWritetime(){
		return writetime;
	}

	public void setImg(String img){
		this.img=img;
	}
	public String getImg(){
		return img;
	}

	@Override
	public String toString(){
		return " Articleinfo [articleid=" + articleid+ " , articlename=" + articlename+ " , author=" + author+ " , articledis=" + articledis+ " , content=" + content+ " , writetime=" + writetime+ " , img=" + img+"]";
	}

}

