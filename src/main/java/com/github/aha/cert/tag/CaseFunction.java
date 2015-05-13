package com.github.aha.cert.tag;


public class CaseFunction {
	
	public static String toCase(Integer caseType, String value) {
		switch (caseType) {
		case 1:
			return value.toLowerCase();
		case 2:
			return value.toUpperCase();
		default:
			return value;
		}
	}
}
