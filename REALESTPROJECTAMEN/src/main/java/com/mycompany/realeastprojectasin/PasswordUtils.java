/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.realeastprojectasin;
import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtils {

    // Hash password
    public static String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(12));
    }

    // Check hashed or plaintext depending on DB value
    public static boolean matches(String inputPassword, String storedPassword) {

        // Case 1: Stored password is hashed (starts with $2a or $2b)
        if (storedPassword.startsWith("$2a$") || storedPassword.startsWith("$2b$")) {
            return BCrypt.checkpw(inputPassword, storedPassword);
        }

        // Case 2: stored password is old plaintext
        return inputPassword.equals(storedPassword);
    }
}

