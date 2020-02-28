PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  Dos;
VAR
  QueryString: STRING;
BEGIN
  QueryString := GetEnv('QUERY_STRING');
  WRITELN;
  IF (QueryString = 'lanterns=1')
  THEN
    WRITELN('The british are coming by sea.')
  ELSE
    IF (QueryString = 'lanterns=2')
    THEN
      WRITELN('The british are coming by land.')
    ELSE
      WRITELN('Sarah didn''t say.')
END.
