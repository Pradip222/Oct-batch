global  class AccountUpdateBatch  implements Database.Batchable <SObject>{
  global Database.QueryLocator start(Database.BatchableContext bc){
        string  query='select id,name, phone from account';

        return Database.getQueryLocator(query);

  }
  global void execute(Database.BatchableContext bc, List<SObject> data){
        for(sobject  tempData:data){
            tempData.put('description',tempData.get('name')+ ' has phone number = '+tempData.get('phone') );
        }

        update data;
  }
  global void finish(Database.BatchableContext ctx){

  }
}