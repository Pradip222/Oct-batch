public  class Day15 {
   /**
    * 

    1.setup objects:
    these objects will interact with metadata : example: user,profile ,layout..etc.

    2.non setup objects:
    other than setup object all objects are non setup (custom / standard) : account,contact,..student__c,
    
    
    day15.mixDML();

    day15.mixDMLSolution();
    future methods:
    syntax:
    @future
    public static void methodname ([parameters]){
        //method body
    }

    rules:
    1.future method should be static
    2.void always
    3.only primitive datatypes/collection of primitive datatype are supported as parameters for future methods
    4.maximum 50 methods we can call from syncronous context
    5.250000 future calls per 24 hours or 250* number user licences whichever is greater 
    6.we cannont chain future jobs
    7.async calls such as @future will not be counted against governer limits if those are written in between
     test.startTest() and  test.stopTest()

    */

    public static void mixDML(){
        account a=[select id,name from account limit 1];
        a.Name='changed';

        update a;
    
        user u=[select id,Signature  from user where Username='insightssecurity@00d5g00000kx1ypead.com'];
        u.Signature='sign1';

        update u;


    }

  
    public static void mixDMLSolution(){
        account a=[select id,name from account limit 1];
        a.Name='changed';

        update a;
    Day15.myfutureMethod();
       
    }
    @future
      public static void myfutureMethod(){
        user u=[select id,Signature  from user where Username='insightssecurity@00d5g00000kx1ypead.com'];
        u.Signature='sign';

        update u;
        Day15.myfutureMethod2();
    }
    @future
    public static void myfutureMethod2(){

    }
}
