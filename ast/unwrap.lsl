function unwrap(str: String): String
{
    let /"?(<value>.*?)"?/ = str;

    return value or else str;
}
