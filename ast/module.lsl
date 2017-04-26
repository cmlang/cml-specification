
node Module: 'module' NAME '{' Import* '}'
{
    name = NAME;
    elements = Import*;
}

node Import: 'import' NAME ';'
{
    name = NAME;
}
