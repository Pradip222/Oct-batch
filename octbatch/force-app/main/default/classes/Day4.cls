public with sharing class Day4 {
    /**
     
    write a code to print season the based month number as input:
    1-12 valid months
    2,3,4,5 -> summer
    6,7,8,9 -> spring
    10,11,12,1-> winter
    below 1 and above 12  invalid months
   
     */

     public static void printSeasonIfCase(){
        integer monthNumber=13; //
        if(monthNumber==1 || monthNumber==12 || monthNumber==11 || monthNumber==10){
            system.debug('winter');
        }
        else if(monthNumber==2||monthNumber==3||monthNumber==4||monthNumber==5){
            system.debug('Summer');
        }
        else if(monthNumber==6||monthNumber==7||monthNumber==8||monthNumber==9){
            system.debug('Spring');
        }
        else{
            system.debug('invalid month');
        }
     }
     /**
      switch :
      syntax:
      switch on <expression>{
        when <value1>{
            //statements
        }
        when <value2>{
            //statements
        }
        .
        .
        .
        .
        .
        when value<N>{
            //statements
        }
        when else{
            //statements
        }
      }
      */
      /*
       1-12 valid months
    2,3,4,5 -> summer
    6,7,8,9 -> spring
    10,11,12,1-> winter
    below 1 and above 12  invalid months
      */
      public static void printSeasonSwitch(){
        integer monthNumber=12; 
        switch on  monthNumber{
            when 2,3,4,5{
                system.debug('Summer');
            }
            when 6,7,8,9{
                system.debug('Spring');
            }
            when 1,10,11,12{
                system.debug('winter');
            }
            when else{
                system.debug('Invalid month');
            }
        } 
      }
      /*
       ternary operator:
       syntax:
       ? true part : false;

       
       */
      public static void printSeasonTernary(){
        integer monthNumber=4;//
    string season=(monthNumber==1|| monthnumber==12 || monthNumber==11 || monthNumber==12) ? 'winter'
    : (monthNumber==2 || monthNumber==3 ||monthNumber==4 ||monthNumber==5) ? 'summer'
    : (monthNumber==6 ||monthNumber==7 ||monthNumber==8 ||monthNumber==9) ? 'spring'
    :'invalid month';
    system.debug(season);//summer
      }
}
