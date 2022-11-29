public  class Day7 {
    
    /**
    
    do while loop:
    exit controlled:
    syntax:

    do{
        //code block


    }while(<condition>);

     */

     public static void doWhileLoop(){

        integer counter=2; 
	 do{

		counter+=1; 
        
		System.debug('hello');//1


	}while (counter<5);

    System.debug('hello outside loop');//1
/**
 * break keyword
 */
    for(;;){ //infinite
		System.debug('hello');
        break;

	}


    /**
     * 
     * loop inside loop
     */
    while (true){
        integer counter1=2; 
             do{

		        counter1+=1; 
                 break;
		        System.debug('hello');//1


	        }while (counter1<5);
            break;
    System.debug('hello1');
    }

     }
}
