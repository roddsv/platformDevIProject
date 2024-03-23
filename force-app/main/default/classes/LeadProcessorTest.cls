@isTest
public class LeadProcessorTest {
	
    @testSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0;i < 200; i++) {
            Lead lead = new Lead(LastName = 'Test '+i,Company='Test company', Status='Open - Not Contacted' );
            leads.add(lead);
        }
       
        insert leads;
    	}
    
    	static testMethod void ProcessLeads_Test() {
        	Test.startTest();
        	LeadProcessor lp = new LeadProcessor();
            Id batchId = Database.executeBatch(lp, 200);
        	Test.stopTest();
            
            List<Lead> leads = [Select Id, LeadSource FROM Lead WHERE LeadSource='Dreamforce'];
            System.assertEquals(200, leads.size());
    	}
    }