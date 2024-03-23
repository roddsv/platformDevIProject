public class LeadProcessor implements Database.Batchable<sObject> {
	
    public Database.QueryLocator start(Database.BatchableContext bc) {
    	return Database.getQueryLocator('SELECT Id, LeadSource FROM LEAD');
    }
    
    public void execute(Database.BatchableContext bc, List<Lead> leadRecords) {
        List<Lead> leadList = new List<Lead>();
        for (Lead lead : leadRecords) {
            lead.LeadSource = 'Dreamforce';
            leadList.add(lead);
        }
        
        update leadList;
    }
    
    public void finish(Database.BatchableContext bc) {
        // sending email or post processing step
        
    }
}