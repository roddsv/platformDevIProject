// SObject
//  
// Account

// Geralmente se tem uma única trigger por objeto
trigger Account on Account (before insert, before update, before delete, after insert, after update, after delete) {

    System.debug('Trigger de Conta adicionada'  + Trigger.operationType);
    
    List<Account> newAccounts = (List<Account>) Trigger.new;
    
    Map<Id, Account> oldAccounts = (Map<Id,Account>) Trigger.oldMap;
    
    System.debug('New Accounts');
    
    System.debug(JSON.serialize(newAccounts));
    
    if (oldAccounts != null && !oldAccounts.isEmpty()) {
        System.debug('Old Accounts');
        System.debug(JSON.serialize(oldAccounts));

    }
    
    System.debug('New Accounts');
}