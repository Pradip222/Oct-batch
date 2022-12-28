public  class Day16 {
   /**
    * 
    queueable : 
    syntax:

    public/global class <className> implements Queueable{

        public/global void execute(system.queueableContext ctx){
            // business logic
        }

    }

    execute queuable:
    <classname> <objectname> = new <classname>();
    system.enqueuejob(<objectname>);

    queueable vs future:

    similarities:
    1.both are asyncronous (will get get executed when resources are available) , and same governer limits
    2.both future and queueable are queued before executions

    differences:
    1.tracking mechanism provided by queueable
    2.we can use non primitive data types as parameter
    3.chaning of the jobs is possible using queueable (one queueable can call another queueable)

    governer limits:
    

    

    */
}
