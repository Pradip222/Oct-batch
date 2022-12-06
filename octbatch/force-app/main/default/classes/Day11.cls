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
    [LIMIT <number of rows>]
    [OFFSET <number of rows>]
    [FOR UPDATE]
    [ALL ROWS]

    SELECT  FROM Account where Phone='444'

    aggregate functions:
    1.min
    2.max
    3.avg
    4.sum
    5.count
    SELECT billingcountry,count(name) from account group by billingcountry


write a query to fetch all accounts from database whose annual revenuw is greater than 5000

    
    
    */
    
}
