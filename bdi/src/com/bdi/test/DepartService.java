package com.bdi.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DepartService {
	private static DepartService ds;
	private List<Map<String,String>> departList;
	public static DepartService getDS() {
		if(ds==null) {
			ds = new DepartService();
		}
		return ds;
	}
	
	public List<Map<String,String>> getdepartList() {
		if(departList==null) {
			departList = new ArrayList<Map<String,String>>();

			for(int i=1;i<=10;i++){
				Map<String,String> depart = new HashMap<String,String>();
				depart.put("name","개발팀"+i);
				int rNum = (int)(Math.random()*1000);
				depart.put("code",""+rNum);
				rNum = (int)(Math.random()*20);
				depart.put("cnt",""+rNum+"명");
				depart.put("etc","기타");
				departList.add(depart);
			}
		}
		return departList;
	}
	public List<Map<String,String>> getdepartList(String search){
		if(departList==null) {
			getdepartList();
		}
		if(search==null) {
			return getdepartList();
		}
		List<Map<String,String>> departList = new ArrayList<Map<String,String>>();
		for(Map<String,String> depart:this.departList) {
			if(depart.get("search").indexOf(search)!=-1) {
				departList.add(depart);
			}
		}
		return departList;
	}
}
