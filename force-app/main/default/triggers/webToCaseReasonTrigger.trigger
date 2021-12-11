trigger webToCaseReasonTrigger on Case (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
        CaseCreationClass.CaseCreationClassMethod(Trigger.new);
        }
    }
}
