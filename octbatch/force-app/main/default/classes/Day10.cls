public  class Day10 {
 /**
  
  2.Set collection:

  Syntax:
  Set<datatype> <variableName> = new Set<varibleName>();
1.unique elements
2.ordered collection /it will not preserve insertion order


1.void add(<element>)
2.void addAll(<collectionname>)
3.integer size(); 
4.boolean isEmpty(); //wheather collection is empty or not
5.void remove(<element>) //remove elements from the set
6.void clear(); //make set empty
7.boolean equals(<collection>) /
8.boolean contains(<element>);
    3.Map collection:
    Map<<keyDatatype>,<valueDatatype>> variableName= new  Map<<keyDatatype>,<valueDatatype>> ();
  */

  public static void setCollectionClass(){
    Set<integer> numberSet = new Set<Integer>();
    System.debug(numberSet);
    numberSet.add(20); //add element in set
    numberSet.add(1);
    numberSet.add(1);
    numberSet.add(2);
    numberSet.add(2); //{1,2,20}
    System.debug(numberSet);
    numberSet.remove(2);//{1,20}
    System.debug(numberSet);
    System.debug(numberSet.contains(2));
    System.debug(numberSet.contains(20));
    System.debug('size of set is'+numberSet.size()); //number of elements
    Set<integer> numberSet1 = new Set<Integer>();
    System.debug(numberSet1);
    numberSet1.add(20); //add element in set
    numberSet1.add(1);
    numberSet1.add(1);
    numberSet1.add(2);
    numberSet1.remove(2); //{1,20}
system.debug(numberSet.equals(numberSet1)); //true

List<Integer> numberlist= new List<Integer>();
   numberlist.add(20); //add element in set
    numberList.add(1);
    numberlist.sort();
    System.debug(numberSet1);
    System.debug(numberlist);
    system.debug( numberlist.equals(numberSet1));//false
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

    numberSet.addAll(nolist); //add all elements from one collection to another
    System.debug(numberSet);
  }

  /**
   * 
    Map Collection:
collection of key value pair, where key unique, and valeus will be identified by keys

   */

   public static void MapMethods(){
    //create a map

    Map<integer,String> studentMap = new Map<Integer,string>();
    System.debug(studentMap.isEmpty());//map is empty or not?

    studentMap.put(1, 'pradip'); // void put(<key>,<value>);
    studentMap.put(20,'ashish');
    System.debug(studentMap);
    studentMap.put(3,'mangesh');
    studentMap.put(0,'ashish');
    System.debug(studentMap.containsKey(30));
    System.debug(studentMap.containsKey(20));//check wheather key is present or not?
    system.debug(studentMap.get(20));
    System.debug(studentMap);
    studentMap.remove(0);
    System.debug(studentMap);
    studentMap.put(3,'mangesh1');
    
    System.debug(studentMap);
    System.debug(studentMap.size());//number of keys

    Map<integer,String> studentMap1 = new Map<Integer,string>();
    studentMap1.put(22,'akash');
    studentMap1.put(55,'sanket');
    System.debug(studentMap1);
    studentMap1.putAll(studentMap); //put all values from one map to another

    System.debug(studentMap1.keySet());//set of all the keys
    System.debug(studentMap1.values());/// list of all the values
    System.debug(studentMap1);
    studentMap1.clear();
    
    System.debug(studentMap1);

   }
}
