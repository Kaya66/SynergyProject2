trigger webToCaseReasonTrigger on SOBJECT (before insert) {
    for(CASE.trigger.new){
    if(CASE.CASE_REASON == null){
        CASE.addError("case reason cannot be null. Please provide a reason for your case.");
    }
}
}