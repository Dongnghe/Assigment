/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.TimetableDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.rmi.server.ExportException;
import java.time.LocalDate;
import java.util.ArrayList;
import model.Week;

/**
 *
 * @author Giang Dong PC
 */
public class timetableController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String rawYear = request.getParameter("year");
        String rawWeek = request.getParameter("week");
        int selectYear;
        int selectWeek;
        try {
            if (rawYear == null) {
                throw new Exception();
            }
            selectYear = Integer.parseInt(rawYear);   
            selectWeek = Integer.parseInt(rawWeek);
        } catch (Exception e) {
            selectYear = LocalDate.now().getYear();
            selectWeek = 0;
        }
        
        request.setAttribute("selectYear", selectYear);
        request.setAttribute("selectWeek", selectWeek);
        TimetableDBContext timetableDBContext = new TimetableDBContext();
        ArrayList<Integer> yearList = timetableDBContext.yearList();     
        request.setAttribute("yearList", yearList);
        ArrayList<Week> weekList = timetableDBContext.weekList(selectYear);
        request.setAttribute("weekList", weekList);
        ArrayList<LocalDate> dayList = timetableDBContext.dayList(weekList.get(selectWeek));
        request.setAttribute("dayList", dayList);
        request.getRequestDispatcher("web/timetable.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
}
