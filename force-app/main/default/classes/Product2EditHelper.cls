public with sharing class Product2EditHelper {
    public static void isActiveIsDailyDeal(List<Product2> ProdList) {
        List<Product2> WorkingProdList = New List<Product2>();
        for(Product2 p: ProdList){
            if(p.IsActive == true && p.isActiveDailyDeal__c == true && p.DisplayUrl == null){
                WorkingProdList.add(p);
            }
        }
        for(Product2 t: WorkingProdList){
            t.addError('If "isActiveDailyDeal" is selected, a Display URL (Image of product) Must be provided.');
        }
    }
}





