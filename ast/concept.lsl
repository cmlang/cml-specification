node Concept:
    'abstract'?
    'concept' NAME
    (':' GeneralizationList)?
    (';' | PropertyList)
{
    name = NAME;
    abstract = 'abstract'?;
    elements = PropertyList.Property*;
    generalizations = for name in GeneralizationList.NAME*
        | yield Model.concept[name];
}

node GeneralizationList: NAME (',' NAME)*;
