import { LightningElement, wire } from 'lwc';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import DailyDeal from '@salesforce/apex/DailyDeal.getDailyDeal';


import NAME_FIELD from '@salesforce/schema/Product2.Name';
import CODE_FIELD from '@salesforce/schema/Product2.ProductCode';
import getDailyDeal from '@salesforce/apex/DailyDeal.getDailyDeal';


export default class ContactDataTable extends LightningElement {
    data = [];
    columns = [
        {label: NAME_FIELD.fieldApiName, fieldName: NAME_FIELD.fieldApiName},
        {label: CODE_FIELD.fieldApiName, fieldName: CODE_FIELD.fieldApiName}
    ];

    @wire(getDailyDeal)
    populateTableData({error, data}) {
        if(data) {
            this.data = data;
        } else if(error) {
            const toastEvent = new ShowToastEvent({
                title: 'Error',
                message: error,
                variant: 'error'
            });

            this.dispatchEvent(toastEvent);
        }
    }
}