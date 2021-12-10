({
    doInit : function(component) {
        
        let ref = component.get('v.pageReference');    
        
        
        let message = ref.state.c__anyThing;
        
        
        component.set( 'v.message', message);
    }
})
