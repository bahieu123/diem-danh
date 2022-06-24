/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nhat Anh
 */
public class RoleDB extends DBContext{
   public ArrayList<Role> getRole() {
        ArrayList<Role> role = new ArrayList<>();
        try {
            String sql = "Select * from [Role] where roleID != 3";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
            Role rl = new Role();
            rl.setRoleID(rs.getInt("roleID"));
            rl.setRoleName(rs.getString("roleName"));
            role.add(rl);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RoleDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return role;
    }
    
    public static void main(String[] args) {
        RoleDB roDB = new RoleDB();
        System.out.println(roDB.getRole().size());
    } 
}
