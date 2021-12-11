trigger LoyaltyTrigger on Loyalty_Customer__c (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            LoyaltyClass.LoyaltytriggerHelperValidation(Trigger.new);
        }
        
    }
   
    
}
//asdf