package com.list;

import java.util.ArrayList;
import java.util.List;

import com.Info.InputInformation;
import com.servlet.MyServlet;

public class ListValue {
	
	
	public static void main(String[] args) {
		
		MyServlet request = new MyServlet();
		
		List<InputInformation> list1 = new ArrayList<>();
		
		
		for(InputInformation input1: list1){
			
			List<Float> list = new ArrayList<>();
			list.add((float)input1.getAge());
			list.add((float)input1.getGender());
			list.add((float)input1.getBloodPressure1());
			list.add((float)input1.getBloodPressure2());
			list.add((float)input1.getCholesterol());
			list.add((float)input1.getHistory());
			list.add((float)input1.getSmoking());
			list.add((float)input1.getHistory());
			list.add((float)input1.getDiabetes());
			
			System.out.println(list);
			
		}
		
	}
	

}
