trigger ContactCreateTrigger on account (after insert, before Update , before insert) {
    
    if(trigger.isInsert && trigger.isAfter){
    List<Contact> Contacts= new List<Contact>();
    
    for(account a: trigger.new){
        Contact c= new Contact();
        c.lastname='related to '+a.Name;
        c.AccountId=a.id;
        Contacts.add(c);
    }
    insert Contacts;
    

}
else if(trigger.isInsert && trigger.isBefore){
    for(Account a: trigger.new){
        a.Description='description of '+a.Name;
    }
}
else if(trigger.isUpdate){
    for(Account a: trigger.new){
        a.Description='description of '+a.Name;
    }
}
}