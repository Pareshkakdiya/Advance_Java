package com.swing;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;

public class TableExample {
    JFrame f;
    JTable t;
    
    public TableExample() {
	  f = new JFrame("Registration Form");
	
	  
	  String[][] data= {};
	  String[] column= {"Sno","ID","Name","Gender","Address","Contact"};
	  t = new JTable(data, column);
	  t.setBounds(30, 40, 450,200);
	  
	  JScrollPane sp = new JScrollPane(t);
	  f.add(sp);
	  f.setVisible(true);
	  f.setSize(500, 200);	
	  f.setResizable(false);
	}
    public static void main(String[] args) {
		new TableExample();
	}
}


	
