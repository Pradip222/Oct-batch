public class Day13 {
   /**
    Static SOQL:
    [soql query];
    Dynamic SOQL:

    database.qury('query ');
Day13.demo('service','ram');
    */

    public static void demo(String userprofile,string name){
        List<Account> accountsUsingStaticQuery=[select id,name from account where name =:name ]; //static
        System.debug(accountsUsingStaticQuery);
        String query='select id,name ';
        if(userprofile=='service'){
            query+=' ,annualRevenue';
        }
        else if (userprofile=='sales' ){
            query+=' ,phone';
        }
        query+=' from account limit 5';

        system.debug(query);

        List<Account> accountsUsingDynamicQuery=Database.query(query); //dynamic soQL
        System.debug(accountsUsingDynamicQuery);
        /**
         user1 : service profile : id , name , annualRevenue
         user2 : sales profile :id , name , phone
         */
    }

    /**
     * 1.SOQL does not allow filter one some fields ex.  rich text area, text area large
     use case:
     select name from account where addidional_description__c!= null
     2.SOQL can be used to fetch data from only one object and its related objects.
    search 'ram' keyword in account, contact and leads and get name,id of record
   
    SOSL (Salesforce Object Search Language):
        Syntax:
        FIND 'searchText/searchPAttern'  <OPTIONS> RETURNING
        <objectName1> (fieldname1,fieldname2.....fieldnameN),
        .,
        .,
        .,
        .,
        .,
        <objectName20> (fieldname1,fieldname2.....fieldnameN)

        OPTIONS:
        1.IN Name fields
        it will search for keyword in name fields

        2.IN EMAIL FIELDS:
 it will search for keyword in EMAIL fields

        3.IN PHONE FIELDS:
        it will search for keyword in PHONE fields

        4. ALL FIELDS:
        it will search for keyword in ALL fields




     */

     /**
      * 
    Static SOSL:
    [sosl query]

    dynamic SOSL:
    Search.query('query')
      */

      public static void SOSLDemo(){
        List<List<Sobject>> data  =  [FIND 'net' in ALL FIELDS returning account(id,name), contact(id,name), lead(id,name)];
        for(List<SObject> d:data){
            System.debug(d);
        }
      }

      /**
       * 
        FIND 'searchText/searchPAttern'  <OPTIONS> RETURNING
        <objectName1> (fieldname1,fieldname2.....fieldnameN),
        .,
        .,
        .,
        .,
        .,
        <objectName20> (fieldname1,fieldname2.....fieldnameN)

        me: hey sF i want to find something

        FIND 'something'
        sF: okey, where you want to find


        me: i want to search in all fields
        
        Find  'something' in all fields

        sf:okey, which object you want to include in search

        me: i want to search on leads and accounts

        sf: which fields you want to return ?

        me: name of account and id,name of lead
 Find  'something' in all fields returning account(name), lead(id,name)

       */
}
