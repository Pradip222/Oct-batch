public  class Myqueueable implements Queueable {
    contact c1;
    public Myqueueable(contact c){
        c1=c;
    }

    public void execute(System.QueueableContext ctx) {
        account a = new account();
        a.name='queue';
        

        insert a;

        c1.accountId=a.id;
        insert c1;
       
        //System.enqueueJob(obj);
    }

    /**
     * 
      <classname> <objectname> = new <classname>();
    system.enqueuejob(<objectname>);

    contact c= new contact();
    c.lastname='temp';
    Myqueueable a= new Myqueueable(c);
    Id jobid = system.enqueuejob(a);
    system.debug(jobid);

     */

}