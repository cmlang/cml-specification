node PropertyList: '{' (Property ';')* '}';

node Property: NAME (':' Type)? ('=' STRING)?
{
    name = NAME;
    value = unwrap(STRING?);
    type = Type?;
}
