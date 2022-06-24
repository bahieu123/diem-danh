/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Nhat Anh
 */
public class Slot {
    private int SlotID;
    private String SlotTime;

    public Slot() {
    }

    public Slot(int SlotID, String SlotTime) {
        this.SlotID = SlotID;
        this.SlotTime = SlotTime;
    }

    public int getSlotID() {
        return SlotID;
    }

    public void setSlotID(int SlotID) {
        this.SlotID = SlotID;
    }

    public String getSlotTime() {
        return SlotTime;
    }

    public void setSlotTime(String SlotTime) {
        this.SlotTime = SlotTime;
    }
    
    
}
