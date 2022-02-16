program RanqueadorConjunto16;

uses
  Vcl.Forms,
  fRanqueadorr_Cjto16 in 'fRanqueadorr_Cjto16.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
