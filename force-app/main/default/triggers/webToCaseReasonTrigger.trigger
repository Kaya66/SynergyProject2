trigger webToCaseReasonTrigger on CASE (before insert) {
    if(trigger.isBefore){
        if(Trigger.isInsert){
        CaseCreationClass.CaseCreationClassMethod(Trigger.new);
        }
    }
}
