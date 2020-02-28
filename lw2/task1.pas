PROGRAM PrintGlobalVariables(INPUT, OUTPUT);
USES
  GPC;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('REQUEST_METHOD'));
END.
