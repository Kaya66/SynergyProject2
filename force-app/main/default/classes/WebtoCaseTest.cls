@isTest
public with sharing class WebtoCaseTest {
    @isTest static void WebtoCaseTestNull() {
       List<Case> newCases = new List<Case>();
        Case a = new Case();
        a.Origin = Null;
        newCases.add(a);
        
        System.debug('added case to newCases' + newCases);
        System.debug('Number of added cases: '+ newCases.size());
        
        Case b = new Case();
        b.Origin = 'Email';
        newCases.add(b);
       
        DmlException UnexpectedException;
		System.debug('after dml, before start test');
        
        Test.startTest();
        System.debug('Test started');
        try{
            System.debug('after try block');
            insert newCases;
            System.debug('inserted: ' + newCases);
        }catch(DmlException g){
            unexpectedException = g;
            System.debug('handled exception: ' + g);
        }
            
        Test.stopTest();
        system.assertEquals(null, UnexpectedException);


    }
}

//Test class for the WebtoCase class and trigger