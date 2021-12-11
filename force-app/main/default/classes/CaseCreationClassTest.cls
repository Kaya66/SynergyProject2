@isTest
public with sharing class CaseCreationClassTest {
    @isTest static void CaseCreationClassTestNull() {
       List<Case> newCases = new List<Case>();
        Case a = new Case();
        a.SuppliedName = 'Name a';
        a.Reason = 'caseReason a';
        a.SuppliedPhone = 'casePhone a';
        a.SuppliedEmail = 'caseEmail a';
        newCases.add(a);
        
        Case b = new Case();
        b.SuppliedName = null;
        b.Reason = 'caseReason b';
        b.SuppliedPhone = 'casePhone b';
        b.SuppliedEmail = 'caseEmail b';
        newCases.add(b);
        
        Case c = new Case();
        c.SuppliedName = 'Name c';
        c.Reason = null;
        c.SuppliedPhone = 'casePhone c';
        c.SuppliedEmail = 'caseEmail c';
        newCases.add(c);
        
        Case d = new Case();
        d.SuppliedName = 'Name d';
        d.Reason = 'caseReason d';
        d.SuppliedPhone = null;
        d.SuppliedEmail = 'caseEmail d';
        newCases.add(d);
        
        Case e = new Case();
        e.SuppliedName = 'Name e';
        e.Reason = 'caseReason e';
        e.SuppliedPhone = 'casePhone e';
        e.SuppliedEmail = null;
        newCases.add(e);
        
    
                AssertException UnexpectedException;

        Test.startTest();
        try{
            insert newCases;
        }catch(AssertException g){
            unexpectedException = g;
        }
        Test.stopTest();
        system.assertEquals(null, UnexpectedException);


    }
}


