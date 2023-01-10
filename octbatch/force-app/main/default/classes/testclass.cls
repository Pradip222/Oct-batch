@istest
public class testclass {

    @istest(seealldata=true)
    public static void sampleTest(){
        test.startTest();
        AccountUpdateBatch a= new AccountUpdateBatch();
        database.executeBatch(a);
        test.stopTest();
    }
}