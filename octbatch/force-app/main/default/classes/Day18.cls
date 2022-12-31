public with sharing class Day18 {
    /* statement:
      1.create associated contact for account upon inserting:
        i. which object ? account
        ii. which context variables? trigger.new/ trigger.newMap
        iii. which event ? after insert
        iV. what business logic? create a contact and assign account id in 
        accountID field of contact


      2.update the description of account with account name upon updating : 
      i.which object? account
      ii.which context variable? trigger.new /trigger.newMAP
      iii.self update (before events)
      iV. business Logic :description= 'related to accountName'

      addError()


      1.write a trigger to prevent deletion of accounts where billingcountry is India

      2.write a trigger to prevent duplicate contacts to the account

     */
}
