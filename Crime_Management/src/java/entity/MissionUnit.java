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
public class MissionUnit {
    int mID;
    String mName;

    public MissionUnit() {
    }

    public MissionUnit(int mID, String mName) {
        this.mID = mID;
        this.mName = mName;
    }

    public int getmID() {
        return mID;
    }

    public void setmID(int mID) {
        this.mID = mID;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }
    
}
