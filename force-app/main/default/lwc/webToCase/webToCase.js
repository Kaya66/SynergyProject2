import { LightningElement, api } from 'lwc';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CASE from '@salesforce/schema/Case';
import CASE_REASON from '@salesforce/schema/Case.Reason';
import CASE_PHONE from '@salesforce/schema/Case.SuppliedPhone';
import CASE_EMAIL from '@salesforce/schema/Case.SuppliedEmail';
import CASE_NAME from '@salesforce/schema/Case.SuppliedName';

export default class WebToCase extends LightningElement {
    @api objectApiName;

    objectApiName = CASE;

    fields= [CASE_NAME, CASE_PHONE, CASE_EMAIL, CASE_REASON];

    handleSuccess() {
        const toastEvent = new ShowToastEvent({
            title: 'Success',
            message: 'Record saved.',
            variant: 'success'

        });
        this.dispatchEvent(toastEvent);
}
}