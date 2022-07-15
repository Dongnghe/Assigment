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
import model.Group;
import model.Term;

/**
 *
 * @author Giang Dong PC
 */
public class AttendanceCheckDBContext extends DBContext<Object> {

    public ArrayList<Term> termList(int InstuctorId) {
        ArrayList<Term> termsList = new ArrayList<>();
        try {
            String sql = "select t.TermId, t.TermName	from \n"
                    + "	(select g.TermId\n"
                    + "	from Instructor i\n"
                    + "	inner join TimeTable tt\n"
                    + "		on tt.InstructorId = i.InstructorId\n"
                    + "		and i.InstructorId = ?\n"
                    + "	inner join [Group] g\n"
                    + "		on g.GroupId = tt.GroupId\n"
                    + "		group by g.TermID) gx\n"
                    + "	inner join Term t\n"
                    + "		on t.TermId = gx.TermID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            stm.setInt(1, InstuctorId);
            while (rs.next()) {
                Term term = new Term();
                term.setTermId(rs.getInt("TermId"));
                term.setTermName(rs.getString("TermName"));
                termsList.add(term);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceCheckDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return termsList;
    }

    public ArrayList<Group> groupList(int instuctorId, String termSelected) {
        ArrayList<Group> groups = new ArrayList<>();
        try {
            String sql = "select tt.GroupId, g.GroupCode , c.CourseCode \n"
                    + "from Instructor i\n"
                    + "	inner join TimeTable tt\n"
                    + "		on tt.InstructorId = i.InstructorId\n"
                    + "		and i.InstructorId = ?\n"
                    + "	inner join [Group] g\n"
                    + "		on g.GroupId = tt.GroupId\n"
                    + "	inner join Course c\n"
                    + "		on g.CourseId = c.CourseId\n"
                    + "	inner join Term t\n"
                    + "		on t.TermId = g.TermID\n"
                    + "		and t.TermId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            stm.setInt(1, instuctorId);
            stm.setString(2, termSelected);
            while (rs.next()) {
                Group group = new Group();
                group.setGroupId(rs.getInt("GroupId"));
                group.setGroupCode(rs.getString("GroupCode"));
                group.setCourseCode(rs.getString("CourseCode"));
                groups.add(group); 
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceCheckDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return groups;
    }
}
