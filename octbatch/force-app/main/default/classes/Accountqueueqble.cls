public class Accountqueueqble implements Queueable {
   

    public void execute(System.QueueableContext ctx){
        account a= new Account();
        a.name='account from queuable';
        insert a;

        ContactQueueable con= new ContactQueueable(a);
        System.enqueueJob(con);
    }
}