import { LightningElement, wire } from 'lwc';



import getDailyDeal from '@salesforce/apex/DailyDeal.getDailyDeal';


export default class ContactDataTable extends LightningElement {

    data = [];  //create data array and pass the information from apex to the array.
    @wire(getDailyDeal) dailyDeal;
    populateData({error, data}){
        if(data){
            this.data = data;
        }
    }
}





