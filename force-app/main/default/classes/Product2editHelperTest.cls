@IsTest
public class Product2editHelperTest {

    @IsTest
    static void ValidationTest(){
        List<Product2> newProduct = new List<Product2>();
        Product2 a = new Product2();
        a.Name = 'Name a';
        a.ProductCode = 'Prod code 1';

        a.isActiveDailyDeal__c = true;
        a.IsActive = true;
        newProduct.add(a);

        Product2 b = new Product2();
        b.Name = 'Name b';
        b.ProductCode = 'Prod code b';
        b.isActiveDailyDeal__c = true;
        b.DisplayUrl = 'DisplayUrl b';
        b.IsActive = false;
        newProduct.add(b);

        Product2 c = new Product2();
        c.Name = 'Name c';
        c.ProductCode = 'Prod code c';
        c.isActiveDailyDeal__c = false;
        c.IsActive = true;
        newProduct.add(c);

        Product2 d = new Product2();
        d.Name = 'Name d';
        d.ProductCode = 'Prod code d';
        d.DisplayUrl = 'DisplayUrl d';
        d.isActiveDailyDeal__c = false;
        d.IsActive = false;
        newProduct.add(d);

        System.debug('Adding products to product2: ' + newProduct);
        System.debug('Number of added entries: ' + newProduct.size());

        DmlException UnexpectedException;

        Test.startTest();
        try{
            insert newProduct;
        }catch(DmlException e){
            unexpectedException = e;
        }
        Test.stopTest();
        system.assertEquals(null, UnexpectedException);


    }
}
//zeke lots and lots of tdata to be generated,    then inserts the list.    checks if there was an exception thrown by the trigger activation and validation rule happening "before insert"