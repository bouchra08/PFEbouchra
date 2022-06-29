@isTest
public with sharing class AccountGestureTest {
    
    @isTest
    static  void testupdateName() {
        Account a = new Account(Name='Class a');
        
        insert a;
        List<Account> result = new List<Account>();
        result.add(a);
        AccountGesture.updateName(result);
        
        b = [SELECT Name FROM updateName WHERE Id =:a.Id];
        System.debug('New name : ' + a.Name);
        System.assertEquals('New account', a.Name);

    }
}