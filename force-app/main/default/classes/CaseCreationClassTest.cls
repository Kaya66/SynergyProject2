@isTest
public with sharing class CaseCreationClassTest {
    //this test checks for each field value being null and catches the exception.
    //It places each attempt into a list to try and commit all at once.
    //Kelsey Morrison
    @isTest static void CaseCreationClassTestNull() {
       List<Case> newCases = new List<Case>();
        Case a = new Case();
        a.SuppliedName = 'Name a';
        a.Reason = 'caseReason a';
        a.SuppliedPhone = 'casePhone a';
        a.SuppliedEmail = 'acaseemail@email.com';
        newCases.add(a);
        
        System.debug('added case to newCases' + newCases);
        System.debug('Number of added cases: '+ newCases.size());
        
        Case b = new Case();
        b.SuppliedName = null;
        b.Reason = 'caseReason b';
        b.SuppliedPhone = 'casePhone b';
        b.SuppliedEmail = 'bcaseemail@email.com';
        newCases.add(b);
        
        Case c = new Case();
        c.SuppliedName = 'Name c';
        c.Reason = null;
        c.SuppliedPhone = 'casePhone c';
        c.SuppliedEmail = 'ccaseemail@email.com';
        newCases.add(c);
        
        Case d = new Case();
        d.SuppliedName = 'Name d';
        d.Reason = 'caseReason d';
        d.SuppliedPhone = null;
        d.SuppliedEmail = 'dcaseemail@email.com';
        newCases.add(d);
        
        Case e = new Case();
        e.SuppliedName = 'Name e';
        e.Reason = 'caseReason e';
        e.SuppliedPhone = 'casePhone e';
        e.SuppliedEmail = null;
        newCases.add(e);
        
        System.debug('added case to newCases' + newCases);
        System.debug('Number of added cases: '+ newCases.size());
    
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



