trigger MyFirstTrigger on account (before insert,after insert,before update,after update,before delete, after delete, after undelete) {

    System.debug('isinsert '+ trigger.isInsert);
    System.debug('isUndelete '+ trigger.isUndelete);
    System.debug('isDelete '+ trigger.isDelete);
    System.debug('isUpdate '+ trigger.isUpdate);
    System.debug('isAfter '+trigger.isAfter);
    System.debug('isBefore '+trigger.isBefore);

    
    if(trigger.isBefore && trigger.isInsert){
        System.debug('this is before insert trigger');

        system.debug('trigger.new  '+trigger.new );//holding some data
        system.debug('trigger.old  '+trigger.old );//null
        system.debug('trigger.newMAp  '+trigger.newMap ); //null
        system.debug('trigger.oldMap  '+trigger.oldMap );//null
    }

    if(trigger.isAfter && trigger.isInsert){
        System.debug('this is after insert trigger');

        system.debug('trigger.new  '+trigger.new );//some data
        system.debug('trigger.newMAp  '+trigger.newMap );//some data
        system.debug('trigger.oldMap  '+trigger.oldMap );
        system.debug('trigger.old  '+trigger.old );//null
    }


    if(trigger.isBefore && trigger.isUpdate){
        System.debug('this is before update trigger');

        system.debug('trigger.new  '+trigger.new );//holding some data
        system.debug('trigger.old  '+trigger.old );//holding some data
        system.debug('trigger.newMAp  '+trigger.newMap ); //holding some data
        system.debug('trigger.oldMap  '+trigger.oldMap );//holding some data
    }

    if(trigger.isAfter && trigger.isUpdate){
        System.debug('this is after update trigger');

        system.debug('trigger.new  '+trigger.new );//some data
        system.debug('trigger.newMAp  '+trigger.newMap );//some data
        system.debug('trigger.oldMap  '+trigger.oldMap );//holding some data
        system.debug('trigger.old  '+trigger.old );//holding some data
    }
    if(trigger.isBefore && trigger.isDelete){
        System.debug('this is before delete trigger');

        system.debug('trigger.new  '+trigger.new );//null
        system.debug('trigger.old  '+trigger.old );//some data
        system.debug('trigger.newMAp  '+trigger.newMap ); //null
        system.debug('trigger.oldMap  '+trigger.oldMap );//some data
    }

    if(trigger.isAfter && trigger.isDelete){
        System.debug('this is after delete trigger');

        system.debug('trigger.new  '+trigger.new );//null
        system.debug('trigger.old  '+trigger.old );//some data
        system.debug('trigger.newMAp  '+trigger.newMap ); //null
        system.debug('trigger.oldMap  '+trigger.oldMap );//some data
    }

    if(trigger.isAfter && trigger.isUndelete){
        System.debug('this is after undelete trigger');

        system.debug('trigger.new  '+trigger.new );//data
        system.debug('trigger.old  '+trigger.old );//null
        system.debug('trigger.newMAp  '+trigger.newMap ); //data
        system.debug('trigger.oldMap  '+trigger.oldMap );//null
    }
    
}