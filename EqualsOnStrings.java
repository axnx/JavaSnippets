package de.axnx;

public class EqualsOnStrings {

	public static void main(String[] args) {
		
		
		// both string literals refer the same object
		String a = "abc";
		String b = "abc";
		
		System.out.println( a == "abc"); //true
		System.out.println( a == b); //true
		
		// different string objects
		String c = new String("abc");
		String d = new String("abc");
		
		System.out.println();
		System.out.println( d == "abc"); //false
		System.out.println( c == d); //false
		
		System.out.println();
		System.out.println( d.intern() == "abc"); //true
		System.out.println( c.intern() == d.intern()); //true

		System.out.println();
		System.out.println( c.equals("abc")); //true
		System.out.println( c.equals(d)); //true
		
	}

}
