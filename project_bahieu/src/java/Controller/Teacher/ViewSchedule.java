/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.Teacher;

import DAL.AttendanceDB;
import DAL.ClassDB;
import DAL.ScheduleDB;
import Model.Account;
import Model.Classs;
import Model.Schedule;
import Model.Timetable;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Nhat Anh
 */
public class ViewSchedule extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ScheduleDB scheDB = new ScheduleDB();
        Account account = (Account) request.getSession().getAttribute("account");
        ArrayList<Schedule> listScheByTeacher = scheDB.getScheduleByTeacher(account.getUserID());
        AttendanceDB attenDB = new AttendanceDB();
        
        ArrayList<Timetable> timetable = attenDB.getTimeTablebyClass(account.getUserID(), listScheByTeacher.get(0).getClss().getClassID());
        ClassDB clDB = new ClassDB();
        Classs clss = clDB.getClassbyClassID(listScheByTeacher.get(0).getClss().getClassID());
        
        request.setAttribute("classsID", clss);
        request.setAttribute("listScheByTeacher", listScheByTeacher);
        request.setAttribute("timetableByTeacher", timetable);
        request.getRequestDispatcher("teacher/listScheduleTeacher.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         ScheduleDB scheDB = new ScheduleDB();
        Account account = (Account) request.getSession().getAttribute("account");
        ArrayList<Schedule> listScheByTeacher = scheDB.getScheduleByTeacher(account.getUserID());
        int classID = Integer.parseInt(request.getParameter("ClassID"));
        AttendanceDB attenDB = new AttendanceDB();
        ArrayList<Timetable> timetable = attenDB.getTimeTablebyClass(account.getUserID(), classID);
        ClassDB clDB = new ClassDB();
        Classs clss = clDB.getClassbyClassID(classID);
        request.setAttribute("classsID", clss);
        request.setAttribute("listScheByTeacher", listScheByTeacher);
        request.setAttribute("timetableByTeacher", timetable);
        request.getRequestDispatcher("teacher/listScheduleTeacher.jsp").forward(request, response);
        
       
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
