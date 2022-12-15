public with sharing class Day14 {
    /***
     * 
     Asyncronous Programming:
     in async programming code will run once resources are available:


     1.future 
     2.queueable apex
     3.batch classes
     4.schedulable



     Batch class:
     syntax:

     public/global class <className> implements database.Batchable{

        public/global  <database.QueryLocator/database.iterator> start(database.BatchableContext bc){

            //logic to fetch data and return;
        }

        public/global void execute(database.BatchableContext bc,list<sobject> data){
            //business logic
        }

        public/global finish(database.BatchableContext bc){
            //logic to be executed after final chunk
        }
 
     }

     write a bach class to update accounts decscription =  name has phone number = phone

     executing batch:
     classname <objectname> = new className();

     database.executeBatch(<objectname>);

     AccountUpdateBatch mybatch= new AccountUpdateBatch();
     database.executeBatch(mybatch);

     batch size:
     classname <objectname> = new className();

     database.executeBatch(<objectname>, batchsize);
     AccountUpdateBatch mybatch= new AccountUpdateBatch();
     database.executeBatch(mybatch,20000);

     default batch size =200
     min batch size: 1
     max batch size: 2000 (theorotically)


     assignment:
     1.write a batch to create contact record for every account in org
     record specification
     name= related accounts name




     */
}
