/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Muscle_Life
 */
public class Prison {
    int pID;
    String pName;

    public Prison() {
    }

    public Prison(int pID, String pName) {
        this.pID = pID;
        this.pName = pName;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }
    
}
