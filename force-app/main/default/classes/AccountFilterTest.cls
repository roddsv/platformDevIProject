@isTest
public class AccountFilterTest {
    
    @isTest
    static void filterAccountsByDocumentNumberTest() {
        
        List<Account> accounts = new List<Account>();

        accounts.add(new Account (Name = 'Teste 01', DocumentNumber__c = '54570553000109'));
        accounts.add(new Account (Name = 'Teste 02', DocumentNumber__c = '42364324000109'));

        insert accounts;
        AccountFilter filter = new AccountFilter();

        List<Account> filteredAccounts = filter.filterByChangedDocumentNumber(accounts, new Map<Id, Account>());

        //Validação de teste. Todo método de teste deve conter o assert
        System.assertEquals(accounts.size(), filteredAccounts.size());
    }
    
}