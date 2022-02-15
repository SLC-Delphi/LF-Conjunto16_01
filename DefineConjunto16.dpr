program DefineConjunto16;

uses
  Vcl.Forms,
  DefineConjunto16_ in 'DefineConjunto16_.pas' {TFrm_defineCjunto16};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_defineCjunto16, Frm_defineCjunto16);
  Application.Run;
end.
