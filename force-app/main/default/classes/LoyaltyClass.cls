public with sharing class LoyaltyClass {
    public LoyaltyClass() {
        
    }
    public static void LoyaltytriggerHelperValidation(List<Loyalty_Customer__c> loyaltyContect) {
        for(Loyalty_Customer__c c : loyaltyContect){
            if(c.Account__c == null){
                c.addError('Must include a Account');
            }
            
            
         //   c.Origin = 'Web';
         //   update c;
          }
    }


}