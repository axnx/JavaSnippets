package de;

public class InfiniteLoops {
	
	public static void main(String[] args) {
		
		int i = 0;
		while(true){
			System.out.println("A_" + i++);
			if(i==5) break;
		}

		i=0;
		for(;;){
			System.out.println("B_" + i++);
			if(i==5) break;
		}
		
		i=0;
		do{
          	  System.out.println("C_" + i++);
		  if(i==5) break;
		} while(true);
		
		System.out.println("(7-2)*2=" + ((7-2)*2) );
		System.out.println("7-2*2=" +   (7-2*2) );
	}
	
}
