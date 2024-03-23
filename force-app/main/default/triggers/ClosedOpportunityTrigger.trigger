trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> tasklist = new List<Task>();
    
    for (Opportunity opp: Trigger.new) {
        if(opp.StageName == 'Closed Won') {
            tasklist.add(new Task(Subject = 'Tarefa de Teste de Acompanhamento', WhatId = opp.Id));
        }
    }
    
    if (taskList.size() > 0) {
        insert tasklist;
    }
}