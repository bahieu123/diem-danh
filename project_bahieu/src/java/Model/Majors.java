/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nhat Anh
 */
public class Majors {
    private int majorsID;
    private String majorsName;

    public Majors() {
    }

    public Majors(int majorsID, String majorsName) {
        this.majorsID = majorsID;
        this.majorsName = majorsName;
    }

    public int getMajorsID() {
        return majorsID;
    }

    public void setMajorsID(int majorsID) {
        this.majorsID = majorsID;
    }

    public String getMajorsName() {
        return majorsName;
    }

    public void setMajorsName(String majorsName) {
        this.majorsName = majorsName;
    }
    
    
}
