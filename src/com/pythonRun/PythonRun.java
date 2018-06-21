package com.pythonRun;

import org.python.util.PythonInterpreter;

public class PythonRun {

	public PythonRun() {
		
		PythonInterpreter interp = new PythonInterpreter();
		interp.execfile("test.py");

	}

}
