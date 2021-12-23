({
    myAction : function(component, event, helper) {

    },
    changeValue : function (component, event, helper) {
        var state = component.get("v.render");
        if(state == true){
            component.set("v.render", false);
        }
        else{
            component.set("v.render", true);
        }
        
      }
})