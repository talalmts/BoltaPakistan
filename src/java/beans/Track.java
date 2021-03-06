package beans;
// Generated May 16, 2015 12:13:57 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Track generated by hbm2java
 */
public class Track  implements java.io.Serializable {


     private Integer keyinc1;
     private Complaint complaint;
     private Department department;
     private Date trackdate;
     private String tracking;

    public Track() {
    }

    public Track(Complaint complaint, Department department, Date trackdate, String tracking) {
       this.complaint = complaint;
       this.department = department;
       this.trackdate = trackdate;
       this.tracking = tracking;
    }
   
    public Integer getKeyinc1() {
        return this.keyinc1;
    }
    
    public void setKeyinc1(Integer keyinc1) {
        this.keyinc1 = keyinc1;
    }
    public Complaint getComplaint() {
        return this.complaint;
    }
    
    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }
    public Department getDepartment() {
        return this.department;
    }
    
    public void setDepartment(Department department) {
        this.department = department;
    }
    public Date getTrackdate() {
        return this.trackdate;
    }
    
    public void setTrackdate(Date trackdate) {
        this.trackdate = trackdate;
    }
    public String getTracking() {
        return this.tracking;
    }
    
    public void setTracking(String tracking) {
        this.tracking = tracking;
    }




}


