public with sharing class Day17 {
    /**
     Triggers:
      based some database event some apex code gets invoked and this apex code is called ass trigger


      events:
      1.before insert
      2.after insert

      3.before update
      4.after update

      5.before delete
      6.after delete

      7.after udelete


      syntax:
      trigger <triggername> on <objectname> (<events>){
        //code
      }

      1.vscode
      2.dev console
      3.setup menu


      trigger contexct variables:
      1.boolean isbefore :  will return true if trigger is about perform database operation

      2.boolean isAfter :will return true if trigger has done dB operation
      3.boolean isInsert : will return true if trigger is fired due to insert event

      4.boolean isUpdate :

      5. boolean isDelete :

      6. boolean isUndelete:

      7. trigger.new :

      8.trigger.old  :

      9.trigger.newMap:

      10.trigger.oldmap:

      statement:
      1.create associated contact for account upon inserting: after insert

      2.update the description of account with account name upon updating : before update
     
     */
}
