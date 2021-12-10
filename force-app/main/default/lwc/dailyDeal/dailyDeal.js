import { LightningElement, wire } from 'lwc';



import getDailyDeal from '@salesforce/apex/DailyDeal.getDailyDeal';


export default class ContactDataTable extends LightningElement {
    data = [];
    @wire(getDailyDeal) dailyDeal;
    populateData({error, data}){
        if(data){
            this.data = data;
        }
    }
}





