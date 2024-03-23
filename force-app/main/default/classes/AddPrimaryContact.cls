public class AddPrimaryContact implements Queueable {
	
    private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact contact, String state){
        this.contact = contact;
        this.state = state;
    }
    
    public void execute(QueueableContext context) {
        List<Account> listAccount = [SELECT Id, Name, (Select Id, FirstName, LastName FROM CONTACTS)
                                    FROM ACCOUNT WHERE BillingState = :state LIMIT 200];
        List<Contact> listContact = new List<Contact>();
        
        for (Account account:ListAccount) {
            Contact cont = contact.clone(false, false, false, false);
            cont.AccountId = account.id;
            listContact.add(contact);
        }
        
        if (listContact.size() > 0) {
            insert listContact;
        }
    }
    
}