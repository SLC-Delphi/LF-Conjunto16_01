program pRanqueador_149_18numeros;

uses
  Vcl.Forms,
  Ranqueador_149_18numeros in 'Ranqueador_149_18numeros.pas' {frm_Ranqueador149Com18numeros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Ranqueador149Com18numeros, frm_Ranqueador149Com18numeros);
  Application.Run;
end.
