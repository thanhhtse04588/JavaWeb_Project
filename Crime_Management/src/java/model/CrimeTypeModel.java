/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import context.DBContext;
import entity.CrimeType;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Muscle_Life
 */
public class CrimeTypeModel {

    public List<CrimeType> selectAll() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "SELECT * FROM CrimeType ";
        List<CrimeType> ct = new ArrayList<>();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
            int cTypeID = rs.getInt("CrimeTypeID");
            String cTypeName=rs.getString("CrimeTypeName");
            ct.add(new CrimeType(cTypeID, cTypeName));
        }
        rs.close();
        conn.close();
        return ct;
    }
}
