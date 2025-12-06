package com.mycompany.realeastprojectasin;
import java.sql.*;
import org.mindrot.jbcrypt.BCrypt;

public class AccountManager {
    
    // ============ SESSION VARIABLES ============
    private static int currentUserId = 0;
    private static String currentUsername = null;
    // ===========================================
    
    // ✅ LOGIN METHOD — verify username & password (CASE-SENSITIVE)
    public static boolean login(String username, String password) {
        try (Connection conn = DBConnection.getConnection()) {
            // BINARY makes username comparison case-sensitive
            String sql = "SELECT user_id, username, password FROM users WHERE BINARY username = ?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                String storedPassword = rs.getString("password");
                
                // Check if password is hashed (starts with $2a$ for BCrypt)
                if (storedPassword.startsWith("$2a$") || storedPassword.startsWith("$2b$") || storedPassword.startsWith("$2y$")) {
                    // Password is hashed - use BCrypt
                    if (BCrypt.checkpw(password, storedPassword)) {
                        currentUserId = rs.getInt("user_id");
                        currentUsername = rs.getString("username");
                        return true;
                    }
                } else {
                    // Password is NOT hashed - direct comparison (for existing users)
                    if (password.equals(storedPassword)) {
                        currentUserId = rs.getInt("user_id");
                        currentUsername = rs.getString("username");
                        return true;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    // ✅ REGISTER METHOD — add new account with HASHED password
    public static boolean register(String username, String password, String email, String birthdate) {
        try (Connection conn = DBConnection.getConnection()) {
            // Check if username already exists (CASE-SENSITIVE)
            String check = "SELECT * FROM users WHERE BINARY username = ?";
            PreparedStatement checkPst = conn.prepareStatement(check);
            checkPst.setString(1, username);
            ResultSet rs = checkPst.executeQuery();
            
            if (rs.next()) {
                return false; // Username already taken
            }
            
            // Hash the password using BCrypt
            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            
            // Insert with hashed password
            String insert = "INSERT INTO users (username, password, email, birthdate) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(insert);
            pst.setString(1, username);
            pst.setString(2, hashedPassword); // ✅ Store hashed password
            pst.setString(3, email);
            pst.setString(4, birthdate.isEmpty() ? null : birthdate);
            pst.executeUpdate();
            return true;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    // ✅ NEW METHOD: Get current user ID
    public static int getCurrentUserId() {
        return currentUserId;
    }
    
    // ✅ UPDATED METHOD: Get current username
    public static String getCurrentUsername() {
        return currentUsername;
    }
    
    // ✅ CHECK if user is logged in
    public static boolean isLoggedIn() {
        return currentUserId > 0;
    }
    
    // ✅ LOGOUT METHOD
    public static void logout() {
        currentUserId = 0;
        currentUsername = null;
    }
        public static void setCurrentUsername(String username) {
        currentUsername = username;
    }
    
    public static void clearSession() {
        currentUserId = 0;
        currentUsername = null;
    }
        public static void setCurrentUserId(int userId) {
        currentUserId = userId;
    }
}