import java.util.Date; 
public class Admininfo {
	private Integer id;	//管理员id 
	private String name;	//管理员姓名 
	private String password;	//管理员密码 
	private String wchat;	//微信 
	private String qq;	//qq 
	private String phone;	//电话 
	private String email;	//邮箱 

	public Admininfo (){

	}

	public void setId(Integer id){
		this.id=id;
	}
	public Integer getId(){
		return id;
	}

	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return name;
	}

	public void setPassword(String password){
		this.password=password;
	}
	public String getPassword(){
		return password;
	}

	public void setWchat(String wchat){
		this.wchat=wchat;
	}
	public String getWchat(){
		return wchat;
	}

	public void setQq(String qq){
		this.qq=qq;
	}
	public String getQq(){
		return qq;
	}

	public void setPhone(String phone){
		this.phone=phone;
	}
	public String getPhone(){
		return phone;
	}

	public void setEmail(String email){
		this.email=email;
	}
	public String getEmail(){
		return email;
	}

	@Override
	public String toString(){
		return " Admininfo [id=" + id+ " , name=" + name+ " , password=" + password+ " , wchat=" + wchat+ " , qq=" + qq+ " , phone=" + phone+ " , email=" + email+"]";
	}

}

