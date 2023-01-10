public  class Day12 {
    /**
     * 
     Data manupulation Language:
     1.insert (create )
     2.update (update the data)
     3.delete (delete the data)
     4.undelete (restore the data)
     5.upsert 
     */

     public static void insertData(){
        /**
         create 2 accounts with name pradip, tejas repectivly
         */
        account a= new Account();
        a.name='pradip';
        
        Account a1= new Account();
        a1.Name='tejas';

        

        List<Account> accounts= new List<Account>();
        accounts.add(a);
        accounts.add(a1);

        insert accounts;
     }

     public static void updateData(){

        List<Account> accounts=[select id,name from account where name='pradip' ];
        /** 
         * 
         write a code to chnage accoutns name from pradip to ram
         */
for(account a:accounts){
    a.Name='Ram';
}
update accounts;
     
     }

     public static void deleteData(){
        /** 
         * 
         write a code to delete accounts who has name = tejas
         */
        List<Account> accounts=[select id,name from account where name='tejas' ];
        delete accounts;
     }
    
     public static void undeleteData(){
         /** 
         * 
         write a code to undelete accounts who has name = tejas
         */
        List<Account> accounts=[select id,name from account where name='tejas' and IsDeleted=true ALL ROWS ];
        undelete accounts;
     }
     public static void upsertData(){
    
/** 
         * 
         write a code to chnage accoutns name from tejas to tejaswini and 
         create two new accounts with name raviTeja and ravi respectivley
         */
        List<Account> accounts=[select id,name from account where name='tejas' ];
        /** 
         * 
         write a code to chnage accoutns name from pradip to ram
         */
for(account a:accounts){
    a.Name='tejaswini';
}
account a= new Account();
a.name='Raviteja';

Account a1= new Account();
a1.Name='ravi';

accounts.add(a);
accounts.add(a1);

upsert accounts;



     }

     public static void someError(){
        for(integer i=1;i<161;i++){
            Account a1= new Account();
a1.Name='ravi';
 insert a1;
        }
        /**


         assignments:

        
        1.write a SOQL query  to get top 3 accounts who has highest annual revenue
        2.Write  a SOQL query to get count of accounts per city, find sum of annual revenue per city as well
        3. write a soql query to get account name alog with count of their opportunities
        

         */
     }

}