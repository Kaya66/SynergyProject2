import { LightningElement } from 'lwc';
import image from '@salesforce/resourceURL/static';

export default class CategoryComponent extends LightningElement {
    man = image + '/ManIcon.jpg';
    woman = image + '/womanIcon.png';
    baby = image + '/babyIcon.jpg';
    dog = image + '/dogIcon.png';
    tech = image + '/techIcon.png';
    furniture = image + '/furnitureIcon.png';
}