@isTest
public with sharing class LoyaltyClassTest {
    @TestSetup
    static void makeData(){
        //creat list then insert feilds into the list
        List<Loyalty_Customer__c> Entry = new List<Loyalty_Customer__c>();
        Loyalty_Customer__c a = new Loyalty_Customer__c();
        Account acc = new Account(Name='Burlington Textiles Corp of America123');
        insert acc;
        a.Account__c = acc.ID;
        a.Date_of_Birth__c = Date.newInstance(1998, 12, 3);
        //add list to a bigger list
        Entry.add(a);
       
        Loyalty_Customer__c b = new Loyalty_Customer__c();
        Account acc2 = new Account(Name='Burlington Textiles Corp of America12');
        insert acc2;
        b.Account__c = acc2.ID;
        b.Date_of_Birth__c = Date.newInstance(1998, 10, 3);
        Entry.add(b);
        
        Loyalty_Customer__c c = new Loyalty_Customer__c();
        Account acc3 = new Account(Name='Burlington Textiles Corp of America1');
        insert acc3;
        c.Account__c = acc3.ID;
        c.Date_of_Birth__c = Date.newInstance(2016, 12, 3);
        Entry.add(c);

       
        
        System.debug('Adding products to Loyalty_Customer__c: ' + Entry);
        System.debug('Number of added entries: ' + Entry.size());
        insert Entry; //insert big list
    }
    @isTest
    static void testNegative(){
        List<Loyalty_Customer__c> Entry = new List<Loyalty_Customer__c>();
        Loyalty_Customer__c a = new Loyalty_Customer__c();
        Account acc = new Account(Name='Burlington Textiles Corp of America123');
        insert acc;
        a.Account__c = acc.ID;
        Entry.add(a);
        //test Special
        Test.startTest();
        List<Boolean> exceptions = new List<Boolean>();
        try{
            insert Entry;
        }catch(DmlException e){
            System.debug('Exeption successfuly created for not having date ');
            exceptions.add(true);        
        }
        Test.stopTest();
        system.assertNotEquals(null, exceptions, 'expected at least one exception to have occured');
        
    }  

}
