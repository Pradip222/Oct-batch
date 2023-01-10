@istest
public  class Day20Test {
    /** method to test trigger */
    @istest
    public static void sampleTest(){
        contact c = new contact();
        c.LastName='test';
        insert c;
        
        update c;
        delete c;
    }
    static testmethod void queueableTest(){
         contact c = new contact();
        c.LastName='test';
        test.startTest();///to start testing context
	Myqueueable obj =new Myqueueable(c);
	System.enqueueJob(obj);    
        test.stopTest();//to stop testing context
        
        //assertion
       system.debug('contact id'+c.id);
        system.assert(c.lastname=='test');
        system.assert(c.AccountId!=null);
    }
    @istest
    static void sampleTest3(){
       
        test.startTest();
        AccountUpdateBatch a= new AccountUpdateBatch();
        database.executeBatch(a);
        test.stopTest();
    }
    @testSetup
    public static void createData(){
        list<account> accounts= new list<account>();
        for(integer i=0;i<100;i++){
            account a= new account();
            a.name='test'+i;
            a.phone='123'+i;
            accounts.add(a);
        }
        insert Accounts;
    }
}