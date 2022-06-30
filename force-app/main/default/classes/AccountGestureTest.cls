@isTest
public with sharing class AccountGestureTest {
    
    @isTest
    static  void testupdateName() {
        //create account with new name
        Account a = new Account(Name='New account');
        insert a;
        List<Account> result = new List<Account>();
        result.add(a);
        AccountGesture.updateName(result);
        Account b = [SELECT Name FROM updateName WHERE Id =:a.Id];
        System.debug('New name : ' + b.Name);
        System.assertEquals('New account', b.Name, 'diff values');

    }
}