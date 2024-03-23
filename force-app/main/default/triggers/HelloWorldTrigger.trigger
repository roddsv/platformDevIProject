trigger HelloWorldTrigger on Account (before insert) {
    for(Account a : Trigger.new) {
        a.Description = 'New description';
    }
    
    System.debug('Trigger ran successfully!');
}