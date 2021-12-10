public with sharing class DailyDeal {

    @AuraEnabled(cacheable=true)
    public static List<Product2> getDailyDeal() {
        
        return [SELECT Name, ProductCode, DisplayUrl FROM Product2 WHERE isActiveDailyDeal__c = true AND IsActive = true];
    }
}