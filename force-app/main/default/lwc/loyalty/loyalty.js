import { LightningElement, api, track, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


import Object_NAME from '@salesforce/schema/Loyalty_Customer__c';
import Loyalty_Customer from '@salesforce/schema/Loyalty_Customer__c.Account__c';
import Loyalty_Customer_Date from '@salesforce/schema/Loyalty_Customer__c.Date_of_Birth__c';
//import Loyalty_Customer from '@salesforce/schema/Loyalty_Customer__c.   Loyalty_Customer__c';
export default class Loyalty extends LightningElement {
    @api objectName = Object_NAME;


    Finish = false;
    
    myFields = [Loyalty_Customer, Loyalty_Customer_Date];

    handleCaseCreation() {
        const toastEvent = new ShowToastEvent({
            title: 'Success',
            message: 'Case Record Created.',
            variant: 'Success'
        });
        this.Finish = true;
        this.dispatchEvent(toastEvent); 
    }
}