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

    /**
     * 
     List class:
    1.void add(<element>);
    2.void remove(<index>);
    3.void clear(); //make list empty
    4.<element> get(<index>);
    5.void set(<index>, <element>);
    6.<collection> Clone();
    7.void sort();
    8.boolean isEmpty();
    9.integer size();
    10.boolean contains(<element>);
    11.integer  indexOf(<element>);
    12.void addAll(<collection>);
    13.void add(<index>,<element>);
     */

     public static void listMethods(){
        List<Integer> numbersList = new  List<Integer> (); //creating empty list
        system.debug(numbersList.isEmpty());
        System.debug(numbersList);
        System.debug('number of elements in the list are '+numbersList.size());
        numbersList.add(2); 
        system.debug(numbersList.isEmpty());
        numbersList.add(1); //add element at the end of the list
         numbersList.add(1); //2
         numbersList.add(2);
         System.debug(numbersList);
         numbersList.add(2,10);
         System.debug(numbersList);
         System.debug('tell me index of 1 :'+numbersList.indexOf(1));
         System.debug('10 is present in the list?'+numbersList.contains(10));
         System.debug('number of elements in the list are '+numbersList.size());
         
         numbersList.add(1);
         numbersList.add(2);
         System.debug(numbersList);
         System.debug('tell me index of 1 :'+numbersList.indexOf(1));
         System.debug('tell me index of 100 :'+numbersList.indexOf(100));
         System.debug('number of elements in the list are '+numbersList.size());
         numbersList.set(4, 10);
         System.debug(numbersList);
         System.debug('tell me index of 10 :'+numbersList.indexOf(10));
         System.debug('10 is present in the list?'+numbersList.contains(10));
         numbersList.sort();
         System.debug(numbersList);
         numbersList.add(4);
         System.debug(numbersList[5]);
         System.debug(numbersList.get(5));
         List<Integer> numbersListclone= numbersList.clone();
        numbersListclone.add(12);
         numbersList.clear();
         System.debug(numbersListclone);
         System.debug(numbersList);


         List<Integer> numbersList = new  List<Integer> (); //creating empty list
         system.debug(numbersList.isEmpty());
         System.debug(numbersList);
         System.debug('number of elements in the list are '+numbersList.size());
         numbersList.add(2); 
         system.debug(numbersList.isEmpty());
         numbersList.add(1); //add element at the end of the list
          numbersList.add(1);
          numbersList.add(2);


        List<Integer> numbersList2 = new  List<Integer> (); 
        numbersList2.add(200);
        numbersList2.add(300);
        System.debug(numbersList);
        System.debug(numbersList2);
        numbersList2.addAll(numbersList);
        System.debug(numbersList);
        System.debug(numbersList2);
 

     }
     public static void listcollection()
{
    List<Integer> nolist = new  List<Integer> ();
    System.debug(nolist);
    nolist.add(2);
    nolist.add(1);
    nolist.add(10);
    nolist.add(1);
    nolist.add(10);
    nolist.add(1);
    nolist.add(2);
    System.debug(nolist);
    nolist.get(1);
    nolist.contains(1);


    Integer i;
    Integer occurance=0;
   //(2, 1, 10, 1, 10, 1, 2)
       for(i=0;i<nolist.size();i++)
        {
           if(nolist.get(i)==1) {
            occurance++;
           }
        }
        System.debug('1 is present '+occurance +'times');
        occurance=0; 

        while (nolist.contains(1)) {
            occurance++;
            nolist.remove(nolist.indexOf(1));
        }
        System.debug('1 is present '+occurance +'times');
        
    }
    
    }

     /*
     1. create list contining below elements:
     (2, 1, 10, 1, 10, 1, 2)
    2. write a code to find how many times element 1 is present in the list

     */
}
