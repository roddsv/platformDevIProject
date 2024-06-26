/**
 * @author roddsv
 */
public virtual class AccountRepository {
    //Lembre-se: o virtual te dá poder de extensão
    // crud

    //sempre que for pesquisar algo usar o find - MÉTODO GET
    virtual
    public List<Account> findByName(String name) {
        return [SELECT Id, Name, Type, BillingCity, BillingState, BillingPostalCode, BillingCountry, CreatedDate
        FROM Account
        WHERE Name like :name];
    }

    virtual
    public List<Account> findWithContactsByname (String name) {
        return [SELECT Id, Name, Type, BillingCity, BillingState, BillingPostalCode, BillingCountry, CreatedDate, CreatedBy.Name,
        (SELECT Id, FirstName, LastName FROM Contacts)
        FROM Account
        WHERE Name like :name];
    }

    virtual
    public List<Account> create (List<Account> accounts) {
        insert accounts;
        return accounts;
    }

    virtual
    public List<Account> store (List<Account> accounts) {
        update accounts;
        return accounts;
    }

    virtual
    public void remove (List<Account> accounts) {
        delete accounts;
    }
}