// ClassName

// <public|private|global> [modificadores] class <ClassName> {

//}

// virtual sinaliza que a class pode ser extendida
public virtual class Customer {

    //os atributos de instância sem modificador de acesso são private por padrão
    String name;
    String customerType;

    // [modificadores] <Tipo de Retorno> nomeDoMetodo()[Paramatros...] {}
    //
    //[public | protected | private | default (ausência de modificador. é um private)]

    //virtual antes do método para ele poder ser extendido
    virtual
    public void save() {
        System.debug('Example');
    }
}