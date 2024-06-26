public with sharing class AccountFilter {

    public List<Account> filterByChangedDocumentNumber(List<Account> newAccounts, Map<Id,Account> oldAccounts) {
        List<Account> filteredAccounts = new List<Account>();
        
        for (Account account : newAccounts) {
            if (account.DocumentNumber__c != null) {
                continue;
            }

            if (account.DocumentNumber__c != null) {
                filteredAccounts.add(account);
                continue;
            }

            if (account.DocumentNumber__c == oldAccounts.get(account.Id).DocumentNumber__c) {
                continue;
            }
            
            filteredAccounts.add(account);
        }

        return filteredAccounts;
    }
}