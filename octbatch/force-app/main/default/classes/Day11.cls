public with sharing class Day11 {
   /**
    * 
    SOQL :Salesforce Object Query language
    1.to get the data from database



    Syntax:

    SELECT <field/columnNames> FROM <objectName>
    [WHERE <condition>]
    [GROUP BY <columnName>]
    [HAVING <condition>]
    [ORDER BY <ColunNAME>]
    [LIMIT <number of rows>]
    [OFFSET <number of rows>]
    [FOR UPDATE]
    [ALL ROWS]

    SELECT name FROM Account where Phone='444'

    aggregate functions:
    1.min
    2.max
    3.avg
    4.sum
    5.count
    SELECT billingcountry,count(name) from account group by billingcountry


write a query to fetch all accounts from database whose annual revenue is greater than 5000


select name from student__c
student__c stud=new student__c();
insert stud;


relationship queries:

1.parent to child (standard relationship):
syntax:
[parent query (child query)]

select name, (select name,id from Contacts) from account

select name, (select name,id from Contacts where name='pawar'),phone from account 

2.child to parent (standard relationship)
select name,account.name,account.phone from contact 



select name, (select name,id,account.name from Contacts) ,phone from account 

3.parent to child (custom relationship)

select name,(select name from Assets__r ) from contact

4.child to parent (custom relationship)

select name,contact__r.name from Asset


1.write a qeury to get accounts name who has more than 2 contacts

     select account.name,count(id) from contact group by account.name where count(id)>2 //cannot use where clause on aggregate

     select account.name,count(id) from contact group by account.name having count(id)>2


     LIMIT clause:  

     assignment
      1.write a query to find account who has highest annualrevenue :

    select name from account limit 1     
    select name,annualrevenue from account where annualrevenue !=null  order by annualrevenue desc


2. find account names whose contacts phone number is blank

    list<account > accounts= [select id,name,isdeleted from account where isdeleted=true  all rows ];

    system.debug(accounts);





    me :Hey salesforce give me some contacts :
     sF:you want to apply criteria on it ? 
     ME:no
     SF:Ok do you want results to be grouped?  
     me: yes
     SF: tell me grouping criteria
     ME: group them by accounts
    
     select lastname,account.name from contact group by account.name,lastname


     SF: do you want to aggregated data?
     me: yes i want count of the records per account

     select account.name,count(name) from contact group by account.name

     SF: do want any filter on aggrgated data?
     me: yes of course
     SF: tell me what filter you want to apply?
     Me: i want accounts who has less than 4 contacts

     select account.name,count(name) from contact group by account.name having count(name)  <4

     SF: do want data to be ordered ?
     me: yes in asending order
     SF: column name please

    select account.name,count(name) from contact group by account.name having count(name)  <4 order by count(name) 
    */
    
}
