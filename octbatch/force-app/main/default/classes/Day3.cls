public with sharing class Day3 {
    /**
     5.Assignment operators :
     = -> assign a value
     *= -> multiply the value and assign
    integer a=1; //assignment
    a=a*3; ///
    system.debug(a);

    += -> add and assign
    -= -> substract and assign
    /= -> divide and assign
     

    conditinal Statements: 
    1.if condition:
    syntax:
    if(<condition>){
        //some code/statements
    }

    if(!true){ //!true =false
        system.debug('true');
    }
    if (!false){ //!false=true
        system.debug('false');
    }
    ii) if(<condition>){
        //when true
    }else{
        //when false
    }


    iii. if else if 
    syntax:
    if(<condition>){
        //code/statements
    }
    else if (<condition>){
// //code/statements
    }
    else{
 //code/statements
    }


    2.switches
    3.ternary operator

     */
    public static void ifCondition(){
        integer a=8;//8
        if(a<9){
            System.debug('a is '+a);
            system.debug(a++);//post increment
            system.debug(a);

            system.debug(++a);//pre increment
            system.debug(a);
        }
        if(a>9){
            System.debug('a is '+(++a));
        }


        integer b=8;
        integer c=4;
        if(c<b){
            System.debug('c is less than b');
        }else{
            System.debug('c is greater than b');
        }

        integer d=8;
        integer e=10;
        integer f=5;
        if(d>e && d>f ){
            System.debug('d is greater');
        }
        else if(e>d && e>f ){
            System.debug('e is greater');
        }else{
            System.debug('f is greater');
        }
    }

}
