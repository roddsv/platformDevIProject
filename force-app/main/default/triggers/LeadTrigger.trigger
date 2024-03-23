trigger LeadTrigger on Lead (before insert) {
    if (trigger.isBefore && trigger.isInsert) {
        List<Lead> listLead = new List<Lead>();
        for (Lead lead : listLead) {
            
        }
    }
}