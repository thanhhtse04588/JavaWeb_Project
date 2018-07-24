/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;
import model.CrimeTypeModel;
import model.MissionUnitModel;
import model.PrisonModel;

/**
 *
 * @author Muscle_Life
 */
public class Wanted {

    int wID;
    String image;
    String cName;
    String gender;
    String country;
    Date dob;
    String offense;
    int cTypeID;
    int mID;
    Date wDate;
    Date cDate;
    int pID;
    String status;
    String detail;
    
    public String getCrimeTypeName() throws Exception{
        return CrimeTypeModel.getCrimeTypeNameByID(cTypeID);
    }
    public String getMissionUnitName() throws Exception{
        return MissionUnitModel.getMissionUnitNameByID(mID) ;
    }
    public String getPrisonName() throws Exception{
        return PrisonModel.getPrisonNameByID(pID);
    }

    public Wanted() {
    }

    public Wanted(String image, String cName, String gender, String country, Date dob, String offense, int cTypeID, int mID, Date wDate, String status, String detail) {
        this.image = image;
        this.cName = cName;
        this.gender = gender;
        this.country = country;
        this.dob = dob;
        this.offense = offense;
        this.cTypeID = cTypeID;
        this.mID = mID;
        this.wDate = wDate;
        this.status = status;
        this.detail = detail;
    }

    public Wanted(int wID, String cName, String gender, String country, Date dob, String offense, int cTypeID, int mID, Date wDate, String detail) {
        this.wID = wID;
        this.cName = cName;
        this.gender = gender;
        this.country = country;
        this.dob = dob;
        this.offense = offense;
        this.cTypeID = cTypeID;
        this.mID = mID;
        this.wDate = wDate;
        this.detail = detail;
    }

    public Wanted(int wID, String image, String cName, String gender, String country, Date dob, String offense, int cTypeID, int mID, Date wDate, Date cDate, int pID, String status, String detail) {
        this.wID = wID;
        this.image = image;
        this.cName = cName;
        this.gender = gender;
        this.country = country;
        this.dob = dob;
        this.offense = offense;
        this.cTypeID = cTypeID;
        this.mID = mID;
        this.wDate = wDate;
        this.cDate = cDate;
        this.pID = pID;
        this.status = status;
        this.detail = detail;
    }

    public int getwID() {
        return wID;
    }

    public void setwID(int wID) {
        this.wID = wID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
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

    public int getcTypeID() {
        return cTypeID;
    }

    public void setcTypeID(int cTypeID) {
        this.cTypeID = cTypeID;
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

    public Date getcDate() {
        return cDate;
    }

    public void setcDate(Date cDate) {
        this.cDate = cDate;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
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
