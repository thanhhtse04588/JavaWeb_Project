/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import context.DBContext;
import entity.MissionUnit;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Muscle_Life
 */
public class MissionUnitModel {

    public static String getMissionUnitNameByID(int mID) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM MissionUnit WHERE MissionUnitID="+mID;
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        String name = "";
        while(rs.next()){
            name = rs.getString("MissionUnitName");
        }
        rs.close();
        conn.close();
        return name;
    }
     public List<MissionUnit> selectAll() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM MissionUnit";
        List<MissionUnit> m = new ArrayList<>();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
        int mID = rs.getInt("MissionUnitID");
        String mName = rs.getString("MissionUnitName");
            m.add(new MissionUnit(mID, mName));
        }
        rs.close();
        conn.close();
        return m;
    }
}
