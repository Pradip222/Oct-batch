public  class ContactQueueable  implements Queueable{
Account acc;
    public ContactQueueable(Account a){
        acc=a;
    }
   
    public void execute(System.QueueableContext con){
/**
 *  create account and related contact to it , show the job chaining in queueable:
 */
        contact c= new Contact();
        c.LastName=acc.Name;
        c.AccountId=acc.id;
        insert c;
    }
}