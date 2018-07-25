/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Account;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author MyPC
 */
public class DAOAccount {

    public DAOAccount() {
    }
    public Account getAccount(String username) throws Exception
    {
        Account acc;
        String querry="select * from [User] where UserName='"+username+"'";
        Connection conn=new DBContext().getConnection();
        ResultSet rs=conn.prepareStatement(querry).executeQuery();
        if(rs.next())
        {
            String userName=username;
            String password=rs.getString("Password");
            String type=rs.getString("Type");
            acc=new Account(userName, password, type);
        }
        else
        {
            acc=new Account("", "", "none");
        }
        rs.close();
        conn.close();
        return acc;
    }
    
    public void addAccount(Account acc) throws Exception
    {
        String querry="insert into [User] values (?, ?, ?)";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(querry);
        ps.setString(1, acc.getUserName());
        ps.setString(2, acc.getPassWord());
        ps.setString(3, acc.getType());
        ps.executeUpdate();
        conn.close();
    }
}
