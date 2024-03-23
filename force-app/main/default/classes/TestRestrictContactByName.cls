@isTest
public class TestRestrictContactByName {
    @isTest static void Test_insertupdateContact() {
        Contact contact = new Contact();
        contact.LastName = 'INVALIDNAME';
        
        Test.startTest();
        Database.SaveResult result = Database.insert(contact, false);
        Test.stopTest();
    }
}