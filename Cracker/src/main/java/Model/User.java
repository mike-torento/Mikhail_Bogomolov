package Model;


import java.util.ArrayList;
import java.util.List;



public class User  {
    
    private Long idUser;
    
  
    private String login;
    

    private String pass;
    
    
    private String name;
    
    
    private String phone;
    
   
    private String email;
    
    private List<PackageServices> packageList;
    private List<Service> serviceList;
    

    public User(String login, String pass ,String name, String phone, String email) {
        this.login=login;
        this.pass=pass;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.packageList = new ArrayList<PackageServices>();
        this.serviceList = new ArrayList<Service>();
        
    }
    public User(){
        this.packageList = new ArrayList<PackageServices>();
        this.serviceList = new ArrayList<Service>();
    }

    public Long getIdUser() {
        return idUser;
    }
    public void setIdUser(Long idUser) {
        this.idUser = idUser;
    }

    public String getLogin() {
        return login;
    }
    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

      public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public List<PackageServices> getPackageList() {
        return packageList;
    }
    public void setPackageList(List<PackageServices> packageList) {
        this.packageList = packageList;
    }

    public List<Service> getServiceList() {
        return serviceList;
    }
    public void setServiceList(List<Service> serviceList) {
        this.serviceList = serviceList;
    }

    @Override
    public String toString() {
        return "User{" + "ID: " + idUser + ", login=" + login + ", pass=" + pass + ", name=" + name + ", phone=" + phone + ", email=" + email + "}\n";
    }
    
    

    
    
    
}
