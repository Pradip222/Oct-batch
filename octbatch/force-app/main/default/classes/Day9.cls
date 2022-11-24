public with sharing class Day9 {
    /**
     * 
     
      Account myAccount=new Account();
    myaccount.name = 'test';
    myaccount.phone='444';
    myAccount.AnnualRevenue=989.8;
    myAccount.billingcountry='IN';
insert myAccount;
 Account myAccount2=new Account();
    myaccount2.name = 'test';
    myaccount2.phone='444';
    myAccount2.AnnualRevenue=989.8;
    myAccount2.billingcountry='IN';
insert myAccount2;

    Collections:

    1.list collection:
1.allows duplicates 
2.preserves insertion order
syntax:
List<Datatype> <variableName> = new List<Datatype> ();

    2.Set collection:

    3.Map collection:

     */
    public static void listCollection(){
       List<Integer> numbersList = new  List<Integer> (); //creating empty list
       System.debug(numbersList);
        numbersList.add(1); //add element at the end of the list
        numbersList.add(1);
        System.debug(numbersList);
        numbersList.add(2);
        numbersList.add(2);
        numbersList.add(2);
        System.debug(numbersList);
        numbersList.add(4);
        System.debug(numbersList);
        numbersList.remove(5);
        System.debug(numbersList);
        System.debug(numbersList[5]);
        System.debug(numbersList[-1]);//exception (index out of bounds)
        System.debug(numbersList[6]);//exception (index out of bounds)




    }
}
