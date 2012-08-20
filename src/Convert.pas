unit Convert;

interface

function FloatToPAChar( value : Extended ): PAnsiChar;
function IntToPAChar( value : Integer ): PAnsiChar;
function StrToPAChar( value : string ): PAnsiChar;

implementation

uses
  System.SysUtils;

function FloatToPAChar( value : Extended ): PAnsiChar;
begin
  Result := PAnsiChar( AnsiString( FloatToStr( value )));
end;

function IntToPAChar( value : Integer ): PAnsiChar;
begin
  Result := PAnsiChar( AnsiString( IntToStr( value )));
end;

function StrToPAChar( value : string ): PAnsiChar;
begin
  Result := PAnsiChar( AnsiString( value ));
end;

end.
