package beans;
// Generated Apr 28, 2015 11:49:59 PM by Hibernate Tools 4.3.1



/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private String username;
     private Department department;
     private String password;

    public Users() {
    }

    public Users(String username, Department department, String password) {
       this.username = username;
       this.department = department;
       this.password = password;
    }
   
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public Department getDepartment() {
        return this.department;
    }
    
    public void setDepartment(Department department) {
        this.department = department;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }




}


