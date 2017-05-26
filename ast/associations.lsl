node Association:
    'association' NAME '{' (AssociationEnd ';')* '}'
{
    name = NAME;
    members = AssociationEnd*;
}

node AssociationEnd:
    conceptName=NAME '.' propertyName=NAME (':' type=Type)?;
