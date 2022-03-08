program Conjunto16NumerosCom12Linhas;

uses
  Vcl.Forms,
  fRanqueadorr_Cjto16Com12Linhas in 'fRanqueadorr_Cjto16Com12Linhas.pas' {frm_Ranqueador16Com12Linhas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Ranqueador16Com12Linhas, frm_Ranqueador16Com12Linhas);
  Application.Run;
end.
