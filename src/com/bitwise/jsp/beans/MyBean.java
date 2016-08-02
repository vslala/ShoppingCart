package com.bitwise.jsp.beans;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

public class MyBean {
	Vector cart = new Vector();
	String submit = null;
	String item = null;

	private void addItem(String name) {
		cart.addElement(name);
	}

	private void removeItem(String name) {
		cart.removeElement(name);
	}

	public void setItem(String name) {
		item = name;
	}

	public void setSubmit(String s) {
		submit = s;
	}

	public String[] getItems() {
		String[] s = new String[cart.size()];
		cart.copyInto(s);
		return s;
	}

	public void processRequest(HttpServletRequest request) {
		// null value for submit - user hit enter instead of clicking on
		// "add" or "remove"
		if (item == null)
			reset();
		
		if (submit == null)
			addItem(item);

		if (submit.equals("add"))
			addItem(item);
		else if (submit.equals("remove"))
			removeItem(item);

		// reset at the end of the request
		reset();
	}

	// reset
	public void reset() {
		submit = null;
		item = null;
	}
}
