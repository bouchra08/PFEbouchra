@isTest
public with sharing class VoucherGestureTest {
    
    @isTest
    static  void testApplyDiscount() {
        Voucher__c v = new Voucher__c(Name='App Builder 1');
        
        insert v;
        List<Voucher__c> result = new List<Voucher__c>();
        result.add(v);
        VoucherGesture.applyDiscount(result);
        // Retrieve the new book
        b = [SELECT Name FROM Voucher__c WHERE Id =:v.Id];
        System.debug('Price after applying discount : ' + v.discount__c);
        System.assertEquals(40, v.discount__c);

    }
}