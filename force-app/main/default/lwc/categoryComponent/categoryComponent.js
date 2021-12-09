import { LightningElement } from 'lwc';
import image from '@salesforce/resourceUrl/static';

export default class CategoryComponent extends LightningElement {
    man = image + '/resources/ManIcon.png';
    woman = image + '/resources/womanIcon.png';
    baby = image + '/resources/babyIcon.jpg';
    dog = image + '/resources/dogIcon.png';
    tech = image + '/resources/techIcon.png';
    furniture = image + '/resources/furnitureIcon.png';
}