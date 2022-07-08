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
import model.Account;

/**
 *
 * @author Giang Dong PC
 */
public class AccountDBContext extends DBContext<Account> {

    @Override
    public ArrayList<Account> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Account get(Account entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Account entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Account entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Account entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Account getByUsernamePassword(String login, String pass) {
        try {
            String sql = "select \n"
                    + "	InstructorId , InstructorCode , FullName , Email \n"
                    + "	from Instructor\n"
                    + "	where InstructorCode = ? and [Password]= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            System.out.println(login);
            System.out.println(pass);
            stm.setString(1, login);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            Account account = null;
            while (rs.next()) {
                if (account == null) {
                    account = new Account();
                    account.setInstuctorId(rs.getInt("InstructorId"));
                    account.setInstuctorCode(rs.getString("InstructorCode"));
                    account.setFullName(rs.getString("FullName"));
                    account.setInstuctorEmail(rs.getString("Email"));
                }
            }
            return account;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
