({
    
    //Need to set up routes to connect to experience pages once we have the Experience page active
    //Make routes for Home, Daily Deals, and the Various Departments
    
    
    init : function(cmp, event, helper) {
        var navService = cmp.find("navService");
        // Sets the route to /lightning/o/Case/home
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Case',
                actionName: 'home'
            }
        };
        cmp.set("v.pageReference", pageReference);
        // Set the URL on the link or use the default if there's an error
        var defaultUrl = "#";
        navService.generateUrl(pageReference)
            .then($A.getCallback(function(url) {
                cmp.set("v.url", url ? url : defaultUrl);
            }), $A.getCallback(function(error) {
                cmp.set("v.url", defaultUrl);
            }));
    }
})
