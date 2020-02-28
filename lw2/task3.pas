PROGRAM Greeter(INPUT, OUTPUT);
USES
  Dos;
VAR
  QueryString, UserName: STRING;
  NameLength: INTEGER;
BEGIN
  QueryString := GetEnv('QUERY_STRING');
  WRITELN;
  IF (POS('name=', QueryString) = 1)
  THEN
    BEGIN
      IF (POS('&', QueryString) > 0)
      THEN
        NameLength := LENGTH(QueryString) - POS('&', QueryString) - 1
      ELSE
        NameLength := LENGTH(QueryString);
      UserName := COPY(QueryString, 6, NameLength);
      WRITELN('Hello dear, ', UserName, '!')
    END
  ELSE
    WRITELN('Hello Anonymous!')
END.
