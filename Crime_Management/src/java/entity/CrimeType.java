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
public class CrimeType {
     int cTypeID;
     String cTypeName;

    public CrimeType(int cTypeID, String cTypeName) {
        this.cTypeID = cTypeID;
        this.cTypeName = cTypeName;
    }

    public CrimeType() {
    }

    public int getcTypeID() {
        return cTypeID;
    }

    public void setcTypeID(int cTypeID) {
        this.cTypeID = cTypeID;
    }

    public String getcTypeName() {
        return cTypeName;
    }

    public void setcTypeName(String cTypeName) {
        this.cTypeName = cTypeName;
    }
    
}
