/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author Giang Dong PC
 */
public class Timetable {
    private int slot;
    private int TimetableCode;
    private String roomname;
    private LocalDate Date;
    private String group;

    public String getRoomname() {
        return roomname;
    }
    public void setRoomname(String roomname) {
        this.roomname = roomname;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }
    
    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }

    public int getTimetableCode() {
        return TimetableCode;
    }

    public void setTimetableCode(int TimetableCode) {
        this.TimetableCode = TimetableCode;
    }
    
    public String getRoomName() {
        return roomname;
    }

    public void setRoomName(String RoomName) {
        this.roomname = RoomName;
    }

    public LocalDate getDate() {
        return Date;
    }

    public void setDate(LocalDate Date) {
        this.Date = Date;
    }
    
}
