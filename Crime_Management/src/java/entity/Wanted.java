/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Muscle_Life
 */
public class Wanted {
    String image;
    String crimeName;
    String gender;
    String country;
    Date dob;
    String offense;
    int cTypeID;
    int mID;
    Date wDate;
    String status;
    String detail;

    public Wanted() {
    }

    public Wanted(String image, String crimeName, String gender, String country, Date dob, String offense, int cTypeName, int mID, Date wDate, String status, String detail) {
        this.image = image;
        this.crimeName = crimeName;
        this.gender = gender;
        this.country = country;
        this.dob = dob;
        this.offense = offense;
        this.cTypeID = cTypeName;
        this.mID = mID;
        this.wDate = wDate;
        this.status = status;
        this.detail = detail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCrimeName() {
        return crimeName;
    }

    public void setCrimeName(String crimeName) {
        this.crimeName = crimeName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getOffense() {
        return offense;
    }

    public void setOffense(String offense) {
        this.offense = offense;
    }

    public int getcTypeName() {
        return cTypeID;
    }

    public void setcTypeName(int cTypeName) {
        this.cTypeID = cTypeName;
    }

    public int getmID() {
        return mID;
    }

    public void setmID(int mID) {
        this.mID = mID;
    }

    public Date getwDate() {
        return wDate;
    }

    public void setwDate(Date wDate) {
        this.wDate = wDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
    
    
}
