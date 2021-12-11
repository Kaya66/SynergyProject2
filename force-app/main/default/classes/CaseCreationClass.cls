public with sharing class CaseCreationClass {
    @auraenabled
       public static void CaseCreationClassMethod(List<Case> Cases) {
           /* sets the list of cases to a variable and checks to see if the Case_Reason field is empty. if it is, it adds an error message */
           for(Case c: Cases){
            if(c.Case_Reason == null){
                c.addError('case reason cannot be empty. Please provide a reason.');
               
                   }
           }
       }
   }
