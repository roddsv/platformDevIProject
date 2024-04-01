public with sharing class cc2 {
    public List<Account> getAccountsList() {
        return [SELECT Id, Name FROM Account];
    }

    public List<Opportunity> getOpportunitiesList(){
        return [SELECT Id, Name FROM Opportunity];
    }
}