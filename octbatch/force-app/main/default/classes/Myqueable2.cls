public with sharing class Myqueable2 implements Queueable {
   Id accountid;
    public  Myqueable2(id acc){
        accountid=acc;
    }
    public void execute(System.QueueableContext ctx) {
        account a = new account();
        a.name='queue1';
        a.ParentId=accountid;
        insert a;
        
    }
}