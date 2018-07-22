/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import context.DBContext;
import entity.Wanted;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Muscle_Life
 */
public class WantedModel {

    public void addWanted(Wanted w) throws Exception {
        System.out.println("model.WantedModel.addWanted()ggggggggggggggggggggggg");
        Connection conn = new DBContext().getConnection();
        String query = "INSERT INTO Wanted (Image, CrimeName, Gender,Country,DOB,Offense,CrimeTypeID,MissionUnitID,WantedDate,Status,Detail)"
                + "VALUES (?,?,?,?,?,?,?,?,?,?,?); ";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1,w.getImage());
        ps.setString(2,w.getCrimeName());
        ps.setString(3, w.getGender());
        ps.setString(4, w.getCountry());
        ps.setDate(5, w.getDob());
        ps.setString(6, w.getCountry());
        ps.setInt(7, w.getcTypeName());
        ps.setInt(8, w.getmID());
        ps.setDate(9, w.getwDate());
        ps.setString(10, w.getStatus());
        ps.setString(11, w.getDetail());
        ps.executeUpdate();
        ps.close();
        conn.close();
    }
}
