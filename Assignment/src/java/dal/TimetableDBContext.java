/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Timetable;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.Calendar;
import model.Week;

/**
 *
 * @author Giang Dong PC
 */
public class TimetableDBContext extends DBContext<Timetable> {

    public ArrayList<Integer> yearList() {
        try {
            ArrayList<Integer> yearList = new ArrayList<>();
            String sql = "select YEAR([Date]) as [Year] \n"
                    + "	from TimeTable \n"
                    + "	GROUP BY YEAR([Date]) order by [Year];";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Integer year = rs.getInt("Year");
                yearList.add(year);
            }
            return yearList;
        } catch (SQLException ex) {
            Logger.getLogger(TimetableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Week> weekList(int year) {
        ArrayList<Week> weekList = new ArrayList<>();
        LocalDate date = LocalDate.parse(year+"-01-01");
        date = date.with(DayOfWeek.MONDAY);
        int i = 0;
        if (date.getYear() != year) {
            date = date.plusDays(7);
        }
        while (date.getYear() == year) {    
            Week week = new Week();
            week.setWeekNum(i);
            i++;
            week.setStart(date);
            week.setEnd(date.with(DayOfWeek.SUNDAY));
            date = date.plusDays(7);
            weekList.add(week);
        }
        return weekList;
    }
    public ArrayList<LocalDate> dayList(Week week){
        ArrayList<LocalDate> dayList = new ArrayList<>();
        LocalDate date = week.getStart();
        for (int i = 0; i < 7; i++) {                   
            dayList.add(date);
            date = date.plusDays(1);
        }
        return dayList;
    }

    @Override
    public ArrayList<Timetable> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Timetable get(Timetable entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Timetable entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Timetable entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Timetable entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
