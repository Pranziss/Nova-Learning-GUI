package com.mycompany.realeastprojectasin;

import javax.swing.*;
import com.formdev.flatlaf.themes.FlatMacDarkLaf;

public class REALEASTPROJECTASIN {
    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatMacDarkLaf());
            
            // Nova theme tweaks
            UIManager.put("Component.arc", 20);
            UIManager.put("Button.arc", 25);
            UIManager.put("ProgressBar.arc", 999);
            UIManager.put("Panel.background", new java.awt.Color(0x0A192F));
            UIManager.put("Label.foreground", java.awt.Color.WHITE);
            UIManager.put("Button.foreground", java.awt.Color.WHITE);
            UIManager.put("Button.background", new java.awt.Color(0x2196F3));
            UIManager.put("TextComponent.arc", 10);

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        SwingUtilities.invokeLater(() -> new FIRSTLOADING().setVisible(true));
    }
}