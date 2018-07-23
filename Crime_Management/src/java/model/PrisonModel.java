/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import context.DBContext;
import entity.Prison;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Muscle_Life
 */
public class PrisonModel {

    public static String getPrisonNameByID(int prisonID) throws Exception {
          Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM Prison WHERE PrisonID="+prisonID;
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        String name = "";
        while(rs.next()){
            name = rs.getString("PrisonName");
        }
        rs.close();
        conn.close();
        return name;
    }
      public List<Prison> selectAll() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM Prison";
        List<Prison> p = new ArrayList<>();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
        int pID = rs.getInt("PrisonID");
        String pName = rs.getString("PrisonName");
            p.add(new Prison(pID, pName));
        }
        rs.close();
        conn.close();
        return p;
    }
    
}
