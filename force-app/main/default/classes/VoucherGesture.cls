public without sharing class VoucherGesture {
    // aplying discount
    public static void applyDiscount(Voucher__c vouchers) {
        List<Voucher__c> result = new List<Voucher__c>();
        for (Voucher__c v : vouchers){
            v.discount__c = 40;
            result.add(v);
            
        }  
        update result; 
    }
    
}