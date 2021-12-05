import { LightningElement, api, track, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


import Object_NAME from '@salesforce/schema/Loyalty_Customer__c';
import Loyalty_Customer from '@salesforce/schema/Loyalty_Customer__c.Account__c';
//import Loyalty_Customer_Account from '@salesforce/schema/Loyalty_Customer__c.   Account__c';
//import Loyalty_Customer from '@salesforce/schema/Loyalty_Customer__c.   Loyalty_Customer__c';
export default class Loyalty extends LightningElement {
    @api objectName = Object_NAME;
    
    myFields = [Loyalty_Customer];

    handleCaseCreation() {
        const toastEvent = new ShowToastEvent({
            title: 'Success',
            message: 'Case Record Created.',
            variant: 'Success'
        });
        this.dispatchEvent(toastEvent); 
    }


}