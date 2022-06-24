/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nhat Anh
 */
public class Subject {
    private int SubID;
    private String SubCode;
    private String SubName;
    private int numberSlot;

    public Subject() {
    }

    public Subject(int SubID, String SubCode, String SubName, int numberSlot) {
        this.SubID = SubID;
        this.SubCode = SubCode;
        this.SubName = SubName;
        this.numberSlot = numberSlot;
    }

    public int getSubID() {
        return SubID;
    }

    public void setSubID(int SubID) {
        this.SubID = SubID;
    }

    public String getSubCode() {
        return SubCode;
    }

    public void setSubCode(String SubCode) {
        this.SubCode = SubCode;
    }

    public String getSubName() {
        return SubName;
    }

    public void setSubName(String SubName) {
        this.SubName = SubName;
    }

    public int getNumberSlot() {
        return numberSlot;
    }

    public void setNumberSlot(int numberSlot) {
        this.numberSlot = numberSlot;
    }
    
    
}
