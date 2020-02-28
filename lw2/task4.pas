PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  Dos;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Value, QueryString: STRING;
  KeyLength, KeyIndex, ValueLength: INTEGER;
BEGIN
  QueryString := GetEnv('QUERY_STRING');
  IF (POS(Key, QueryString) > 0)
  THEN
    BEGIN
      KeyLength := LENGTH(Key);
      KeyIndex := POS(Key, QueryString);
      DELETE(QueryString, 1, KeyIndex + LENGTH(Key));
      IF (POS('&', QueryString) > 0)
      THEN
        ValueLength := POS('&', QueryString) - 1
      ELSE
        ValueLength := LENGTH(QueryString);
      Value := COPY(QueryString, 1, ValueLength);
      IF (Value = '')
      THEN
        Value := 'Parameter is empty'
    END
  ELSE
    Value := CONCAT('ERROR: No such parameter with key - ', Key);
  GetQueryStringParameter := Value
END;

BEGIN
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN;
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN;
  WRITELN('Age: ', GetQueryStringParameter('age'));

END.
