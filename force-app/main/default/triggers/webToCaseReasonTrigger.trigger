trigger webToCaseReasonTrigger on Case (before insert) {
    //Kelsey Morrison
    if(Trigger.isBefore){
        if(Trigger.isInsert){
        CaseCreationClass.CaseCreationClassMethod(Trigger.new);
        }
    }
}
