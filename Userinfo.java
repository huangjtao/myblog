import java.util.Date; 
public class Userinfo {
	private Integer id;	//用户id 
	private String username;	//用户姓名 
	private String password;	//用户密码 
	private String userimg;	//用户头像 

	public Userinfo (){

	}

	public void setId(Integer id){
		this.id=id;
	}
	public Integer getId(){
		return id;
	}

	public void setUsername(String username){
		this.username=username;
	}
	public String getUsername(){
		return username;
	}

	public void setPassword(String password){
		this.password=password;
	}
	public String getPassword(){
		return password;
	}

	public void setUserimg(String userimg){
		this.userimg=userimg;
	}
	public String getUserimg(){
		return userimg;
	}

	@Override
	public String toString(){
		return " Userinfo [id=" + id+ " , username=" + username+ " , password=" + password+ " , userimg=" + userimg+"]";
	}

}

