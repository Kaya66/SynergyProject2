public with sharing class DailyDeal {
    @AuraEnabled(cacheable=true)

    public static List<sObject> getDailyDeal() {
        return [SELECT Name, ProductCode FROM Product2];
    }
}