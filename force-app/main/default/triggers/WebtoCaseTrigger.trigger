trigger WebtoCaseTrigger on Case (before insert) {
    if (Trigger.isBefore){
        if (Trigger.isInsert){
            WebtoCase.insertOrigin(Trigger.new);
        }
    }
}