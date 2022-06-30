public without sharing class AccountGesture {
    
    public static void updateName(List<Account> accounts) {
        List<Account> result = new List<Account>();
        for (Account a : accounts){
            a.Name = 'New account';
            result.add(a);
            
        }  
        update result; 
    }
    
}&
