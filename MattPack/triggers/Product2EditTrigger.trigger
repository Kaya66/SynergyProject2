trigger Product2EditTrigger on Product2 (before insert, before update) {
    switch on Trigger.operationType{
        when BEFORE_UPDATE{
            Product2EditHelper.isActiveIsDailyDeal(Trigger.new);
        }
        when BEFORE_INSERT{
            Product2EditHelper.isActiveIsDailyDeal(Trigger.new);
        }
    }
}