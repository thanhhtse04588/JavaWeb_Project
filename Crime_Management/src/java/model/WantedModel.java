/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import context.DBContext;
import entity.Wanted;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Muscle_Life
 */
public class WantedModel {

    private int wantedID;
    private int missID;
    private int prisonID;

    public WantedModel() {
        wantedID = -1;
        missID = -1;
        prisonID = -1;
    }

    public int getPrisonID() {
        return prisonID;
    }

    public void setPrisonID(int prisonID) {
        this.prisonID = prisonID;
    }

    public int getMissID() {
        return missID;
    }

    public void setMissID(int missID) {
        this.missID = missID;
    }

    public int getWantedID() {
        return wantedID;
    }

    public void setWantedID(int wantedID) {
        this.wantedID = wantedID;
    }

    public List<Wanted> selectAll() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM WANTED";
        if (wantedID != -1) {
            query = "SELECT * FROM WANTED WHERE WantedID =" + wantedID;
        }
        if (missID != -1) {
            query = "SELECT * FROM WANTED WHERE MissionUnitID =" + missID;
        }
        if (prisonID != -1) {
            query = "SELECT * FROM WANTED WHERE PrisonID =" + prisonID;
        }
        System.out.println(wantedID);
        List<Wanted> wanteds = new ArrayList<>();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
            int wID = rs.getInt("WantedID");
            String image = rs.getString("Image");
            String cName = rs.getString("CrimeName");
            String gender = rs.getString("Gender");
            String country = rs.getString("Country");
            Date dob = rs.getDate("DOB");
            String offense = rs.getString("Offense");
            int cTypeID = rs.getInt("CrimeTypeID");
            int mID = rs.getInt("MissionUnitID");
            Date wDate = rs.getDate("WantedDate");
            Date cDate = rs.getDate("CatchedDate");
            int pID = rs.getInt("PrisonID");
            String status = rs.getString("Status");
            String detail = rs.getString("detail");
            wanteds.add(new Wanted(wID, image, cName, gender, country, dob, offense, cTypeID, mID, wDate, cDate, pID, status, detail));
        }
        rs.close();
        conn.close();
        return wanteds;
    }

    public void addWanted(Wanted w) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "INSERT INTO Wanted (Image, CrimeName, Gender,Country,DOB,Offense,CrimeTypeID,MissionUnitID,WantedDate,Status,Detail)"
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?); ";
        PreparedStatement ps = conn.prepareStatement(query);

        ps.setString(1, w.getImage());
        ps.setString(2, w.getcName());
        ps.setString(3, w.getGender());
        ps.setString(4, w.getCountry());
        ps.setDate(5, w.getDob());
        ps.setString(6, w.getCountry());
        ps.setInt(7, w.getcTypeID());
        ps.setInt(8, w.getmID());
        ps.setDate(9, w.getwDate());
        ps.setString(10, w.getStatus());
        ps.setString(11, w.getDetail());
        
        ps.executeUpdate();
        ps.close();
        conn.close();
    }

    public void editWantedDate(Wanted w) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "UPDATE Wanted SET CrimeName = ?,Gender = ?,Country = ?,DOB =?, Offense =?, CrimeTypeID =?, MissionUnitID=?, WantedDate=? , Detail=? WHERE WantedID =?;";
        PreparedStatement ps = conn.prepareStatement(query);
        
        ps.setString(1, w.getcName());
        ps.setString(2, w.getGender());
        ps.setString(3, w.getCountry());
        ps.setDate(4, w.getDob());
        ps.setString(5, w.getOffense());
        ps.setInt(6, w.getcTypeID());
        ps.setInt(7, w.getmID());
        ps.setDate(8, w.getwDate());
        ps.setString(9, w.getDetail());
        ps.setInt(10, w.getwID());
        
        ps.executeUpdate();
        ps.close();
        conn.close();
    }
}
