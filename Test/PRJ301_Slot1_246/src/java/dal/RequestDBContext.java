/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.AnualRequest;

/**
 *
 * @author Giang Dong PC
 */
public class RequestDBContext extends DBContext<AnualRequest> {

    public RequestDBContext() {
    }

    @Override
    public ArrayList<AnualRequest> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public AnualRequest get(AnualRequest entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(AnualRequest entity) {
        try {
            String sql = "Insert into [AnualRequest]\n"
                    + "([reason], [from], [to], [created_by], [reviewed_by], [status]) \n"
                    + "	value (? , ? , ? , ?, ?, ?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, entity.getReason());
            stm.setDate(2, entity.getFrom());
            stm.setDate(3, entity.getTo());
            stm.setInt(4, entity.getCreate_by());
            stm.setInt(5, entity.getReviewed_by());
            stm.setString(5, "pending");
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(RequestDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(AnualRequest entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(AnualRequest entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
