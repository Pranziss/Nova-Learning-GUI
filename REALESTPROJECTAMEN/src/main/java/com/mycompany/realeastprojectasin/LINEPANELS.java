/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.realeastprojectasin;

/**
 *
 * @author gelo
 */
import javax.swing.*;
import javax.swing.border.*;
import java.awt.*;

public class LINEPANELS extends JPanel {
    public LINEPANELS() {
        setLayout(new BorderLayout());
        setBackground(new Color(30, 30, 30)); // dark background

        // Create a panel for the donut chart
        JPanel chartPanel = new JPanel();
        chartPanel.setPreferredSize(new Dimension(300, 200));
        chartPanel.setBackground(new Color(40, 40, 40)); // slightly lighter
        chartPanel.setBorder(BorderFactory.createLineBorder(new Color(80, 80, 80), 1)); // subtle border

        JLabel chartLabel = new JLabel("Quiz Distribution");
        chartLabel.setForeground(Color.WHITE);
        chartPanel.add(chartLabel);

        add(chartPanel, BorderLayout.CENTER);
    }

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new com.formdev.flatlaf.FlatDarkLaf());
        } catch (Exception e) {
            e.printStackTrace();
        }

        JFrame frame = new JFrame("Nova Dashboard");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);
        frame.setContentPane(new MAIN());
        frame.setVisible(true);
    }
}