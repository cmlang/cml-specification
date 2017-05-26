node Association:
    'association' NAME '{' (AssociationEnd ';')* '}'
{
    name = NAME;
    members = AssociationEnd*;
}

node AssociationEnd:
    conceptName=NAME '.' propertyName=NAME (':' type=Type)?
{
    concept = Model.concepts
                ->select(concept.name = conceptName)
                ->first()
    
    property = concept.allProperties
                    ->select(property.name = propertyName)
                    ->first()
}

