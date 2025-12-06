package com.mycompany.realeastprojectasin; // <-- make sure this matches your package

import javax.swing.*;
import java.awt.*;

/**
 * A simple reusable panel that holds one question + 4 options + correct answer selector.
 * Has methods used by CREATEQUIZZES.loadQuestions(...)
 */
public class QuestionPanel extends JPanel {

    private JTextArea txtQuestion;
    private JTextField txtA, txtB, txtC, txtD;
    private JComboBox<String> cbCorrect;
    private JButton removeButton;

    // Optional: store DB id if available
    private int questionId = -1;

    public QuestionPanel() {
        initComponents();
    }

    private void initComponents() {
        setLayout(new BorderLayout());
        setBorder(BorderFactory.createCompoundBorder(
            BorderFactory.createLineBorder(new Color(120, 120, 120), 1),
            BorderFactory.createEmptyBorder(8, 8, 8, 8)
        ));

        // QUESTION area
        txtQuestion = new JTextArea(3, 40);
        txtQuestion.setLineWrap(true);
        txtQuestion.setWrapStyleWord(true);
        JScrollPane qs = new JScrollPane(txtQuestion,
                JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
                JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);

        // OPTIONS grid
        JPanel options = new JPanel(new GridLayout(2, 2, 8, 8));
        txtA = new JTextField();
        txtB = new JTextField();
        txtC = new JTextField();
        txtD = new JTextField();

        JPanel pa = new JPanel(new BorderLayout());
        pa.add(new JLabel("A:"), BorderLayout.WEST);
        pa.add(txtA, BorderLayout.CENTER);

        JPanel pb = new JPanel(new BorderLayout());
        pb.add(new JLabel("B:"), BorderLayout.WEST);
        pb.add(txtB, BorderLayout.CENTER);

        JPanel pc = new JPanel(new BorderLayout());
        pc.add(new JLabel("C:"), BorderLayout.WEST);
        pc.add(txtC, BorderLayout.CENTER);

        JPanel pd = new JPanel(new BorderLayout());
        pd.add(new JLabel("D:"), BorderLayout.WEST);
        pd.add(txtD, BorderLayout.CENTER);

        options.add(pa);
        options.add(pb);
        options.add(pc);
        options.add(pd);

        // bottom row: correct answer selector + remove button
        JPanel bottom = new JPanel(new FlowLayout(FlowLayout.LEFT));
        bottom.add(new JLabel("Correct:"));
        cbCorrect = new JComboBox<>(new String[] {"A","B","C","D"});
        bottom.add(cbCorrect);

        removeButton = new JButton("Remove");
        removeButton.setVisible(false); // hidden by default
        bottom.add(removeButton);

        add(qs, BorderLayout.NORTH);
        add(options, BorderLayout.CENTER);
        add(bottom, BorderLayout.SOUTH);
    }

    // ----- setters used by CREATEQUIZZES.loadQuestions() -----
    public void setQuestionText(String q) { txtQuestion.setText(q == null ? "" : q); }
    public void setOptionA(String a) { txtA.setText(a == null ? "" : a); }
    public void setOptionB(String b) { txtB.setText(b == null ? "" : b); }
    public void setOptionC(String c) { txtC.setText(c == null ? "" : c); }
    public void setOptionD(String d) { txtD.setText(d == null ? "" : d); }
    public void setCorrectAnswer(String ans) {
        if (ans == null) return;
        ans = ans.trim().toUpperCase();
        if ("ABCD".contains(ans)) cbCorrect.setSelectedItem(ans);
    }

    // Optional: allow storing DB id
    public void setQuestionId(int id) { this.questionId = id; }
    public int getQuestionId() { return questionId; }

    // ----- getters for saving -----
    public String getQuestionText() { return txtQuestion.getText().trim(); }
    public String getOptionA() { return txtA.getText().trim(); }
    public String getOptionB() { return txtB.getText().trim(); }
    public String getOptionC() { return txtC.getText().trim(); }
    public String getOptionD() { return txtD.getText().trim(); }
    public String getCorrectAnswer() { return (String) cbCorrect.getSelectedItem(); }

    // ----- remove button control used by CREATEQUIZZES -----
    public JButton getRemoveButton() { return removeButton; }
    public void showRemoveButton(boolean show) { removeButton.setVisible(show); }
}
