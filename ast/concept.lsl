node Concept:
    'abstract'?
    'concept' NAME
    (':' AncestorList)?
    (';' | PropertyList)
{
    name = NAME;
    abstract = 'abstract'?;
    elements = PropertyList.Property*;
    directAncestors = for name in AncestorList.NAME*
        | yield Model.concept[name];
}

node AncestorList: NAME (',' NAME)*;
