public class CaseCreationClass {
    public static void CaseCreationClassMethod(List<Case> recentCases) {
               /* sets the list of cases to a variable and checks to see if the Case_Reason field is empty. if it is, it adds an error message */
        List<Case> newCases = new List <Case>();
        for(Case t: recentCases){
            if(t.Reason == null){
                newCases.add(t);
            }
        }
               
        for(Case p: newCases){
            p.addError('Reason cannot be left empty. Please provide a reason.');
        }     
           }
    }
