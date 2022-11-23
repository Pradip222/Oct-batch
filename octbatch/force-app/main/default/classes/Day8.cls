public  class Day8 {
    /**
     
    MVC (model view controller) :
    
    
    controller:
    class:
    Account 

    creating object
    className <objectname> = new classname();

    Account myAccount=new Account();
    myaccount.name = 'sample account';
    myaccount.location__c='delhi';
    system.debug(myaccount);
    insert myAccount;

    1.create account with name test, phone number 444, and billing country as india

 Account myAccount=new Account();
    myaccount.name = 'test';
    myaccount.phone='444';
    myAccount.billingcountry='IN';
insert myAccount;

Contact c= new contact();
c.lastname='me';
c.accountID=Myaccount.id;
insert c;
     */
   
}
