public class Day6 {
    
    /*
     
   Loops (repeat):
     types:
	1.while
	Syntax:
	while (<condition){
		//some code here
		//code_block
	}

	2.For :
	for(<initialization> ; <condition>; <action>){

	}
	3.do while
	4.enhanced for


*/

public static void whileloop(){

	/**
	 * write a loop to print hello 5 times
	 */
	integer counter=0; 
	while (counter<5) {

		counter+=1; 

		System.debug('hello');


	}
	System.debug('outside the loop');

	while(true){ //infite  
		System.debug('hello');

	}
}


public static void forLoop(){
	for(;;){ //infinite
		System.debug('hello');

	}
	integer count=0;
	for(;count<5; ){
	System.debug('hello');
	count++;
		
	}
	System.debug(count);
}
}