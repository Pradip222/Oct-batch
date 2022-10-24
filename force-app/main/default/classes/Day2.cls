public with sharing class Day2 {
    /**/
    Comments in apex code: to provide documentation
    1.single line comment:
//
    2.multi line:
    

    */

    integer a;// variable declaration
    /*
     this is multit line comment
      this is just variable declaration
      we are using it for some purpose
     */
    integer b;

    /**
     
     variable declaration:
     syntax:
   <datatype> <variableName>;

   rules:
   1. varible name should always start with albhabet
   2. varibale name should be single word only
   3. varible name should be unique 
     */
    
     integer 1b; //error

     integer b1; // it will work

     integer student Roll Number; // error

     integer studentRollNumber; //work

     integer student_roll_number;//work

     integer studentRollNumber1; 
     integer studentRollNumber1;  //duplicate variable

     /*
     integer a;
     integer b;

      operators:
        1.mathematical operators:
         + --> adddition:
        system.debug(10+2);
         - -->substraction :
         system.debug(10-2);
         * --> multiplication:
          system.debug(10*2);
         / --> division:
         system.debug(10/2);
         Math.mod() --> to reminder:
         system.debug(10%2); //not valid operator
        system.debug(math.mod(Math.mod(10,3),2) );

        2.Relational Operators /Comparison operators:
        ==  --> to check operands are equal or not (to check equality):
        system.debug(10==2);
        system.debug(10==10);

        !=  --> Not Equals :
        system.debug(10!=2);
        system.debug(10!=10);

        <    --> less than

        system.debug(10<2);
        system.debug(2<10);
         system.debug(10<10);

         >  --> greater than :
         system.debug(10>2); //true
        system.debug(2>10); // false
         system.debug(10>10); // false

         <=   -> less than or equals 
         system.debug(10<=2); // false
        system.debug(2<=10); // true
         system.debug(10<=10); // true

         >=   --> greater than or equals
           system.debug(10>=2); //true
        system.debug(2>=10); // false
         system.debug(10>=10); // true

        3. Logical Operators:

        discount calculator app  where we need to discount to following criteria
        1.number is in between 1-10

        AND (&&) --> it will return true only if both conditions are true:
        system.debug(true && true);
        system.debug(true && false);
        system.debug(false && true);
        system.debug(true && false);
        OR (||)  --> it will return false only if both conditions are false
        system.debug(true || true); // true
         system.debug(true || false); // true
          system.debug(false || true);// true
           system.debug(false || false); //false


           system.debug(true || false || false ||false); //true
        NOT(!)  -> it will change sign of the condition result (if result is true it will return false, and vise versa)
            system.debug(!true);


            system.debug(!true || false);

        4.Increment / decrement operators:
        ++ -> increment value by 1
        -- --> incement value by 1

        system.debug(++1);

        integer a=1;
         system.debug(++a);

         https://github.com/Pradip222/Oct-batch
         https://www.azul.com/downloads/?version=java-11-lts&os=windows&architecture=x86-64-bit&package=jdk
      */
        
    
}
