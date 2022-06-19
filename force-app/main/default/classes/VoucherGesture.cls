public without sharing class VoucherGesture {
    // aplying discount
    public static void applyDiscount(Voucher__c vouchers) {
        List<Voucher__c> result = new List<Voucher__c>();
        for (Voucher__c v : vouchers){
            v.discount__c = 40;
            update v;
            
        }
        
        
    }


    public static void applyAddition2(Book__c[] books) {
        List<Book__c> result = new List<Book__c>();
        for (Book__c book :books){
            book.Price__c *= 1.1;
            result.add(book);
        }
        if (Schema.sObjectType.Book__c.fields.Price__c.isUpdateable()) {
            update(result);
        }
        
        
        
        
    }
    
    
}