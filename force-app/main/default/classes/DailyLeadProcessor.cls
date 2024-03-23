public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext sc) {
        List<Lead> LeadObj = [SELECT Id FROM Lead WHERE LeadSource=null LIMIT 200];
        for (Lead lead:LeadObj) {
            lead.LeadSource = 'Dreamforce';
            update lead;
        }
    }
}