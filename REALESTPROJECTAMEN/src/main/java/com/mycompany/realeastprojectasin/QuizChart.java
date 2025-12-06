/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.realeastprojectasin;

import javax.swing.JPanel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;

public class QuizChart extends JPanel {

    public QuizChart() {
        setLayout(new java.awt.BorderLayout());
        add(createChartPanel(), java.awt.BorderLayout.CENTER);
    }

    private ChartPanel createChartPanel() {
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();

        // TODO: Replace with real quiz results from your database
        dataset.addValue(7, "Score", "Quiz 1");
        dataset.addValue(9, "Score", "Quiz 2");
        dataset.addValue(5, "Score", "Quiz 3");

        JFreeChart chart = ChartFactory.createBarChart(
                "Quiz Performance",
                "Quiz",
                "Score",
                dataset
        );

        return new ChartPanel(chart);
    }

    @Override
    public void setLocation(int i, int i0) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}