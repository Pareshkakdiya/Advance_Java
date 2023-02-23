package com.swing;

import java.awt.geom.Point2D;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JRadioButton;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.table.TableColumnModel;
import javax.xml.crypto.Data;

public class Registration {
	JFrame f;
	JLabel l1, l2, l3, l4,l5;
	JTextField t1, t2, t3, t4;
	JButton b1, b2, b3, b4, b5;
	JRadioButton r1, r2;
	JTable t;


	public Registration() {
		f = new JFrame("REGISTRATION FORM");
		f.setVisible(true);
		f.setSize(800, 500);
		f.setLayout(null);
		f.setResizable(false);

		l1 = new JLabel("ID");
		l2 = new JLabel("NAME");
		l3 = new JLabel("GENDER");
		l4 = new JLabel("ADDRESS");
		l5 = new JLabel("CONTACT");
		
        String[][] data = {}; 
        String[] column = {"Sno","ID","Name","Gender","Address","Contact"};
        t = new JTable(data, column);
         		
		t1 = new JTextField(100);
		t2 = new JTextField(100);
		
		r1 = new JRadioButton("MALE");
		r2 = new JRadioButton("FEMALE");
		
		t3 = new JTextField(100);
		t4 = new JTextField(100);
		
		b1 = new JButton("Exit");
		b2 = new JButton("REGISTER");
		b3 = new JButton("DELETE");
		b4 = new JButton("UPDATE");
		b5 = new JButton("RESET");
		
		f.add(l1);
		f.add(l2);
		f.add(l3);
		f.add(l4);
		f.add(l5);
		f.add(t1);
		f.add(t2);
		f.add(r1);
		f.add(r2);
		f.add(t3);
		f.add(t4);
		f.add(b1);
		f.add(b2);
		f.add(b3);
		f.add(b4);
		f.add(b5);
		f.add(t);
		
		
		t.setBounds(320, 50, 420, 300);
		l1.setBounds(50, 50, 100, 20);
		l2.setBounds(50, 100, 100, 20);
		l3.setBounds(50, 150, 100, 20);
		l4.setBounds(50, 200, 100, 20);
		l5.setBounds(50, 250, 100, 20);
		
		
		
		t1.setBounds(150, 50, 100, 20);
		t2.setBounds(150, 100, 100, 20);
		
		r1.setBounds(120, 150, 100, 20);
		r2.setBounds(220, 150, 100, 20);		
		
		
		t3.setBounds(150, 200, 100, 20);
		t4.setBounds(150, 250, 100, 20);
		
		b1.setBounds(50, 300, 100, 20);
		b2.setBounds(150, 300, 100, 20);
		b3.setBounds(50, 330, 100, 20);
		b4.setBounds(150, 330, 100, 20);
		b5.setBounds(100, 360, 100, 20);
		
	
	    
	}
	
	public static void main(String[] args) {
		new Registration();
	}
}
		


