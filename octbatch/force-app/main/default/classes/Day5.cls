public  class Day5 {
   /**
    * 
    Sub programs: (pieces of the code)

    1.procedures:
    fire and forget
    syntax:
    [acess specifiers] void <procedureName>([parameters]){

        //body
    }

    1.parametrized:
    //procedure with some parameteres are parametrized producedures 
    these types of procedures will require some input/ they expect some input
syntax:
[acess specifiers] void <procedureName>([parameters]){

        //body
    }

    2.non-parametrized
    these types of procedures will not require some input/ they dont expect some input:

    syntax:
    [acess specifiers] void <procedureName>(){

        //body
    }
    2.functions:
 replay and response
 sytnax:
     [acess specifiers] <datatype> <function>([parameters]){

        //body
    }
    1.parametrized :
    these type of functions will require some intput/ they will excpect some input

    sytnax:
     [acess specifiers] <datatype> <functionName>([parameters]){

        //body
    }

    2.non-parametrized :
sytnax:
     [acess specifiers] <datatype> <functionName>(){

        //body
    }


    */
    public  void SayHellO(){
        SystEM.deBug('hello');
    }
    public  void SayHellO(string usename){
        SystEM.deBug('hello ' + usename+'!');
    }


    public Decimal getValueOfPI(){
        return 3.15;
    }

    public Integer add(Integer a,Integer b){
        return a+b;
    }

/* creating an object of class 

    ClassName varibleName= new Classname();
    day5 myObj= new day5(); //creating object
    myobj.SayHellO(); //calling procedure

    day5 myObj= new day5(); //creating object
    myobj.SayHellO('yash'); //calling procedure


     day5 myObj= new day5(); //creating object
     system.debug(myobj.getValueOfPI()); //calling the function

      day5 myObj= new day5();
     system.debug(myobj.add(3,2));

*/


}
