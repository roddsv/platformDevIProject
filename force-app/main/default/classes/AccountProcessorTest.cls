@isTest
public class AccountProcessorTest {
	@isTest
    public static void testNoOfContacts(){
        Account a = new Account();
        a.Name = 'Test Account';
        insert a;
        
        Contact c = new Contact();
        c.FirstName = 'Rodrigo';
        c.LastName = 'Soares';
        c.AccountId = a.Id;
        
        Contact c2 = new Contact();
        c2.FirstName = 'Elia';
        c2.LastName = 'de Prisco';
        c2.AccountId = a.Id;
        
        List<Id> acctIds = new List<Id>();
        acctIds.add(a.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(acctIds);
        Test.stopTest();
    }
}