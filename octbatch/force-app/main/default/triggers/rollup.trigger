trigger rollup on contact (after insert,after update,after delete, after undelete) {
  set<ID> accountIDS= new Set<id>();
    if(trigger.isInsert || trigger.isUndelete){
         //count will increase
         for(contact a: trigger.new){
           if(a.AccountID!=null)
            accountIDS.add(a.AccountId);
         }
    }
    if(trigger.isDelete ){
        //count will decrease
        for(Contact c: trigger.old ){
            if(c.AccountID!=null)
            accountIDS.add(c.AccountID);
        }
    }
    if(trigger.isUpdate){
        //mixed logic
        for( id c: trigger.newMap.keySet()){
            if(trigger.newMap.get(c).accountID==null){
                if(trigger.oldMap.get(c).AccountId!=null)
                accountIDS.add(trigger.oldMap.get(c).AccountID);
            }else{
                accountIDS.add(trigger.newMap.get(c).accountID);
            }
        }

    }

    list<Account> accounts=[select Number_of_contacts__c, id,(select id from contacts ) from account where id in :accountIDS ];
    for(Account a: accounts){
        a.Number_of_contacts__c= string.valueOf(a.Contacts.size());
    } 
    update accounts;
}