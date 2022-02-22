unit DefineConjunto16_;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, StrUtils, System.ImageList, Vcl.ImgList,
  VCLTee.TeCanvas;

type
  TFrm_defineCjunto16 = class(TForm)
    Label36: TLabel;
    MEM_COMBINACOES_TODAS: TMemo;
    pa_topo: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    Memo_Combinacoes_Todas: TMemo;
    pgc_AbasPrincipais: TPageControl;
    TabSheet_definirCj16: TTabSheet;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_TodosNumerosP17: TStringGrid;
    Ibq_E_SORTEIO_15N: TIBQuery;
    Ds_E_SORTEIO_15N: TDataSource;
    IBQ_COMBINACOES: TIBQuery;
    IBTransaction1: TIBTransaction;
    pa_preparar: TPanel;
    La_MensagensPreparar: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    bbt_PrepararOk: TBitBtn;
    bbt_PrepararVoltar: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    pa_fimAnalisador: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    LA_rQTD_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label50: TLabel;
    La_total100Repetidos: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    pa_BarraLateral: TPanel;
    pa_menuGerar_20p11: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    bbt_gerarOk: TBitBtn;
    bbt_gerarVoltar: TBitBtn;
    pa_Status: TPanel;
    pa_gerar: TPanel;
    bt_preparar: TButton;
    pa_Gerador6cj20p11: TPanel;
    pa_Gabarito6cj20p11: TPanel;
    pa_Resultado6cj20p11: TPanel;
    scbx_gabarito6cj20p11: TScrollBox;
    Label7: TLabel;
    bt_gerar: TButton;
    ckbx_GerarCompleto: TCheckBox;
    Label74: TLabel;
    Pgbr_naoRepetidos1: TProgressBar;
    BitBtn_BlocoDeNotas1: TBitBtn;
    ScrollBox_resultado: TScrollBox;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    IBDatabase1: TIBDatabase;
    Memo_base16: TMemo;
    Label3: TLabel;
    Memo_serie8Linha01: TMemo;
    Memo_serie8Linha02: TMemo;
    Label1: TLabel;
    Label4: TLabel;
    Memo_seri8Linha03: TMemo;
    Memo_seri8Linha04: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Memo_seri8Linha05: TMemo;
    Label8: TLabel;
    Memo_seri8Linha06: TMemo;
    Memo_seri8Linha07: TMemo;
    Label9: TLabel;
    Label10: TLabel;
    Memo_seri8Linha08: TMemo;
    Label11: TLabel;
    Memo_seri8Linha09: TMemo;
    Memo_seri8Linha10: TMemo;
    Label12: TLabel;
    Label13: TLabel;
    Memo_seri8Linha11: TMemo;
    Memo_seri8Linha12: TMemo;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Memo_seri8Linha14: TMemo;
    Memo_seri8Linha13: TMemo;
    Label18: TLabel;
    Memo_seri8Linha15: TMemo;
    Stgr_bloco12: TStringGrid;
    Stgr_blocoSobra: TStringGrid;
    BitBtn_BlocoDeNota2: TBitBtn;
    TabSheet_combinacoes07: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel6: TPanel;
    Panel7: TPanel;
    ScrollBox1: TScrollBox;
    Label20: TLabel;
    Memo_blocosLinha01: TMemo;
    Memo_blocosLinha02: TMemo;
    Memo_blocosLinha03: TMemo;
    Panel8: TPanel;
    ScrollBox2: TScrollBox;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    stgr_combinacoes7Primeira: TStringGrid;
    stgr_combinacoes7Segunda: TStringGrid;
    stgr_combinacoes7Coincidencias: TStringGrid;
    stgr_Linha1: TStringGrid;
    stgr_Linha2: TStringGrid;
    stgr_Linha3: TStringGrid;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Memo_blocosLinha05: TMemo;
    Memo_blocosLinha04: TMemo;
    Label22: TLabel;
    Label23: TLabel;
    Memo_blocosLinha06: TMemo;
    Label24: TLabel;
    Memo_blocosLinha07: TMemo;
    Memo_blocosLinha08: TMemo;
    Label25: TLabel;
    Memo_blocosLinha09: TMemo;
    Label26: TLabel;
    Label27: TLabel;
    Memo_blocosLinha10: TMemo;
    Memo_blocosLinha11: TMemo;
    Label28: TLabel;
    Label29: TLabel;
    Memo_blocosLinha12: TMemo;
    Memo_blocosLinha13: TMemo;
    Label30: TLabel;
    Memo_blocosLinha14: TMemo;
    Label31: TLabel;
    Label32: TLabel;
    Memo_blocosLinha15: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_gerarSequenciasClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure bbt_gerarOkClick(Sender: TObject);
    procedure bbt_gerarVoltarClick(Sender: TObject);
    procedure bt_prepararClick(Sender: TObject);
    procedure bbt_PrepararVoltarClick(Sender: TObject);
    procedure bbt_PrepararOkClick(Sender: TObject);
    procedure bt_gerarClick(Sender: TObject);
    procedure BitBtn_BlocoDeNotas1Click(Sender: TObject);
    procedure BitBtn_BlocoDeNota2Click(Sender: TObject);
  private
    viDivisorSalvar1 : integer;
    viDivisorAtualizar1 : integer;
    viTime1 : integer;
    procedure PreenchimentoInicialPadrao;
    procedure Zerar_FLAGTodosNumeros;
    procedure Falso_Linha1TodosNumeros;
    procedure Falso_Linha2TodosNumeros;
    procedure Falso_Linha3TodosNumeros;
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure LerComb12;
    procedure BlocoDeNotas1;
    procedure ReconstroiTela;
    procedure GerarComb12;
    procedure BlocoDeNotas2;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_defineCjunto16: TFrm_defineCjunto16;

implementation

{$R *.dfm}


procedure TFrm_defineCjunto16.FormCreate(Sender: TObject);
begin
   SELF.ClientWidth := 1505;
   SELF.ClientHeight := 750;
   SELF.Top := 15;
   SELF.Left := 5;
   // SELF.Visible := TRUE;
   Bbt_CLOSE.Left := SELF.ClientWidth - 35;
   Scbx_gabarito6cj20p11.Visible := True;
   Pa_INICIAL.Enabled := TRUE;
   Pa_INICIAL.Left := 520;
   Pa_INICIAL.Top := 160;
   Zerar_FLAGTodosNumeros();
   PreenchimentoInicialPadrao;
   bt_gerar.Enabled := False;
     pa_FimAnalisador.Visible := False;
     pa_FimAnalisador.Left := 9500;
end;


procedure TFrm_defineCjunto16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   TRY
      BEGIN
         Ibq_COMBINACOES.Close;
         IBDatabase1.Close;
      END
   EXCEPT
      //
   END; // TRY
end;



procedure TFrm_defineCjunto16.Bbt_gerarSequenciasClick(Sender: TObject);
begin
//
end;





procedure TFrm_defineCjunto16.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
end;


     procedure TFrm_defineCjunto16.BitBtn_BlocoDeNota2Click(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
   BlocoDeNotas2();
end;

procedure TFrm_defineCjunto16.BitBtn_BlocoDeNotas1Click(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
   BlocoDeNotas1();
end;

procedure TFrm_defineCjunto16.BlocoDeNotas1;
var
   viContar: integer;
   vcQuery, vsComb1, vsCombUltima, vcTitulo, vcSubTitulo, vsGrupo1, vsGrupoUltimo: String;
Begin
   vcTitulo := '{ Definir Conjunto 16 }';
   vcSubTitulo := '';
   Memo_Combinacoes_Todas.Clear;
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + (Stgr_bloco12.RowCount-1).ToString);
//   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   viContar := 1;
   vsCombUltima := '00';
   vsGrupoUltimo := ' ';
   WHILE (viContar < Stgr_bloco12.RowCount) DO
   BEGIN
      vsComb1 := Stgr_bloco12.Cells[01, viContar];
      if vsComb1.Trim <> vsCombUltima.Trim then
      begin
         Memo_Combinacoes_Todas.Lines.Add(#13'==================================================');
         Memo_Combinacoes_Todas.Lines.Add(#13+ Memo_base16.Lines.Strings[Stgr_bloco12.Cells[01, viContar].ToInteger]);
         vsCombUltima := vsComb1;
      end;
      vsGrupo1 := Stgr_bloco12.Cells[02, viContar];
      if vsGrupo1.Trim <> vsGrupoUltimo.Trim then
      begin
         Memo_Combinacoes_Todas.Lines.Add(#13+ Stgr_bloco12.Cells[02, viContar].ToUpper);
         vsGrupoUltimo := vsGrupo1;
      end;
      Memo_Combinacoes_Todas.Lines.Add('=Linhas: ' + Stgr_bloco12.Cells[15, viContar]+ '');
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add( '    '+
         Stgr_bloco12.Cells[03, viContar] + ' ' +
         Stgr_bloco12.Cells[04, viContar] + ' ' +
         Stgr_bloco12.Cells[05, viContar] + ' ' +
         Stgr_bloco12.Cells[06, viContar] + ' ' +
         Stgr_bloco12.Cells[07, viContar] + ' ' +
         Stgr_bloco12.Cells[08, viContar] );
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('    '+
         Stgr_bloco12.Cells[09, viContar] + ' ' +
         Stgr_bloco12.Cells[10, viContar] + ' ' +
         Stgr_bloco12.Cells[11, viContar] + ' ' +
         Stgr_bloco12.Cells[12, viContar] + ' ' +
         Stgr_bloco12.Cells[13, viContar] + ' ' +
         Stgr_bloco12.Cells[14, viContar] );
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('   Sobram: '+
         Stgr_blocoSobra.Cells[01, viContar] + ' ' +
         Stgr_blocoSobra.Cells[02, viContar] + ' ' +
         Stgr_blocoSobra.Cells[03, viContar] + ' ' +
         Stgr_blocoSobra.Cells[04, viContar] + ' ' +
         Stgr_blocoSobra.Cells[05, viContar] + ' ' +
         Stgr_blocoSobra.Cells[06, viContar] );
      viContar := viContar +1;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CxLotoFacil\Definir_Conjunto_16.TXT');
    winExec('Notepad.exe C:\CxLotoFacil\Definir_Conjunto_16.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\CxLotoFacil\Definir_Conjunto_16.TXT');
End;

procedure TFrm_defineCjunto16.BlocoDeNotas2;
var
   viContar: integer;
   vcQuery, vsComb1, vsCombUltima, vcTitulo, vcSubTitulo, vsGrupo1, vsGrupoUltimo: String;
Begin
   vcTitulo := '{ Definir Conjunto 16 }';
   vcSubTitulo := '';
   Memo_Combinacoes_Todas.Clear;
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + (Stgr_bloco12.RowCount-1).ToString);
//   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   viContar := 1;
   vsCombUltima := '00';
   vsGrupoUltimo := ' ';
   WHILE (viContar < Stgr_bloco12.RowCount) DO
   BEGIN
      vsComb1 := Stgr_bloco12.Cells[01, viContar];
      if vsComb1.Trim <> vsCombUltima.Trim then
      begin
         Memo_Combinacoes_Todas.Lines.Add(#13+ copy(Memo_base16.Lines.Strings[Stgr_bloco12.Cells[01, viContar].ToInteger],1,2));
         Memo_Combinacoes_Todas.Lines.Add(copy(Memo_base16.Lines.Strings[Stgr_bloco12.Cells[01, viContar].ToInteger],4,60).Trim);
         vsCombUltima := vsComb1;
      end;
//      vsGrupo1 := Stgr_bloco12.Cells[02, viContar];
//      if vsGrupo1.Trim <> vsGrupoUltimo.Trim then
//      begin
//         Memo_Combinacoes_Todas.Lines.Add(#13+ Stgr_bloco12.Cells[02, viContar].ToUpper);
//         vsGrupoUltimo := vsGrupo1;
//      end;
//      Memo_Combinacoes_Todas.Lines.Add('=Linhas: ' + Stgr_bloco12.Cells[15, viContar]+ '');
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add(#13+''+
         Stgr_bloco12.Cells[03, viContar] + ' ' +
         Stgr_bloco12.Cells[04, viContar] + ' ' +
         Stgr_bloco12.Cells[05, viContar] + ' ' +
         Stgr_bloco12.Cells[06, viContar] + ' ' +
         Stgr_bloco12.Cells[07, viContar] + ' ' +
         Stgr_bloco12.Cells[08, viContar] );
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add(''+
         Stgr_bloco12.Cells[09, viContar] + ' ' +
         Stgr_bloco12.Cells[10, viContar] + ' ' +
         Stgr_bloco12.Cells[11, viContar] + ' ' +
         Stgr_bloco12.Cells[12, viContar] + ' ' +
         Stgr_bloco12.Cells[13, viContar] + ' ' +
         Stgr_bloco12.Cells[14, viContar] );
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add(''+
         Stgr_blocoSobra.Cells[01, viContar] + ' ' +
         Stgr_blocoSobra.Cells[02, viContar] + ' ' +
         Stgr_blocoSobra.Cells[03, viContar] + ' ' +
         Stgr_blocoSobra.Cells[04, viContar] + ' ' +
         Stgr_blocoSobra.Cells[05, viContar] + ' ' +
         Stgr_blocoSobra.Cells[06, viContar] );
      viContar := viContar +1;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CxLotoFacil\Definir_Conjunto_16_BlocoDeNotas2.TXT');
    winExec('Notepad.exe C:\CxLotoFacil\Definir_Conjunto_16_BlocoDeNotas2.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\CxLotoFacil\Definir_Conjunto_16_BlocoDeNotas2.TXT');
End;


procedure TFrm_defineCjunto16.bt_prepararClick(Sender: TObject);
begin
   pa_preparar.Left := 210;
   pa_preparar.Top := 80;
   pa_preparar.Enabled := True;
   pa_preparar.Visible := True;
   bt_preparar.Enabled := False;
end;



procedure TFrm_defineCjunto16.bbt_PrepararOkClick(Sender: TObject);
begin
   Pgbr_naoRepetidos1.Position := 0 ;
   Pgbr_naoRepetidos1.Repaint;
//   Try
//      IBQ_Combinacoes.SQL.Clear;
//      IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_16_DEF (ORIGEM VARCHAR(2) COLLATE PT_BR), ORIGEM GRUPO(4) COLLATE PT_BR), DADOS_12 VARCHAR(25) COLLATE PT_BR), DADOS_SOBRA VARCHAR(23) COLLATE PT_BR);') ;
//      IBQ_Combinacoes.ExecSQL;
//      IBQ_Combinacoes.SQL.Clear;
//      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
//      IBQ_Combinacoes.ExecSQL;
//      IBQ_Combinacoes.Transaction.StartTransaction;
//      IBQ_Combinacoes.Transaction.Commit;
//      IBQ_Combinacoes.Transaction.StartTransaction;
//   Except
//      IBQ_Combinacoes.SQL.Clear;
//      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_16_DEF;')  ;
//      IBQ_Combinacoes.ExecSQL;
//      IBQ_Combinacoes.SQL.Clear;
//      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
//      IBQ_Combinacoes.ExecSQL ;
//      IBQ_Combinacoes.Transaction.StartTransaction;
//      IBQ_Combinacoes.Transaction.Commit;
//      IBQ_Combinacoes.Transaction.StartTransaction;
//   End;
   sleep (1500);
   showmessage('Preparar concluído');
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
   bt_gerar.Enabled := True;
end;


procedure TFrm_defineCjunto16.bbt_PrepararVoltarClick(Sender: TObject);
begin
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
end;



procedure TFrm_defineCjunto16.bt_gerarClick(Sender: TObject);
begin
   pa_menuGerar_20p11.Left := 680;
   pa_menuGerar_20p11.Top := 190;
//   pa_menuGerar_20p11.Height := 286;
   ckbx_GerarCompleto.Checked := False;
   bbt_gerarOk.Repaint;
   bbt_gerarVoltar.Repaint;
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := True;
   pa_menuGerar_20p11.Repaint;
end;


procedure TFrm_defineCjunto16.bbt_gerarOkClick(Sender: TObject);
var
   vsQuery : String;
begin
   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' +TimeToStr(Time);
   GerarComb12;
   vsQuery := 'fim deste processamento - por enquanto';
   
   LA_gFIM_GERAR.Caption := DateToStr(Date) +' - ' + TimeToStr(Time);
   LA_rQTD_COMB.Caption :=(stgr_bloco12.RowCount-1).ToString;
//   vsQuery := vsQuery + 'select count(ORIGEM ||GRUPO ||DADOS_12) as QTD ';
//   vsQuery := vsQuery + 'from CJTO_16_DEF';
//   Self.Ibq_COMBINACOES.SQL.Clear;
//   Self.Ibq_COMBINACOES.SQL.Add(vsQuery);
//   Self.Ibq_COMBINACOES.Prepare;
//   Self.Ibq_COMBINACOES.Open;
//   La_total100Repetidos.Caption := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsString;
   pa_FimAnalisador.Visible := True;
   pa_FimAnalisador.Left := 690;
   showmessage(vsQuery);
end;


procedure TFrm_defineCjunto16.ReconstroiTela;
begin
  Frm_defineCjunto16.WindowState := wsMinimized;
  Frm_defineCjunto16.WindowState := wsNormal;
  pgc_AbasPrincipais.Repaint;
  pa_BarraLateral.Repaint;
  pa_Gerador6cj20p11.Repaint;
  sleep(95);
end;


Procedure TFrm_defineCjunto16.GerarComb12();
Var
   viLinhas, viContadorBase, viComb1, viComb2, viContarColunas, ViContarCelulas, viLinhasMemo : integer;
   vsiGrupo : Smallint;
Begin
   viLinhas := 1;
   viLinhasMemo := 1;
   for viContadorBase := 1 to Memo_base16.Lines.Count-1 do
   begin
      for viComb1 := 1 to 3 do
      begin
         for viComb2 := viComb1+1 to 4 do
         begin
            for vsiGrupo := 0 to 1 do
            begin
               Stgr_bloco12.Cells[00, viLinhas + vsiGrupo*6] := (viLinhas+ vsiGrupo*6).ToString;
               Stgr_bloco12.Cells[01, viLinhas + vsiGrupo*6] := RightStr('0'+viContadorBase.ToString,2);
               if vsiGrupo= 0  then
                  Stgr_bloco12.Cells[02, viLinhas + vsiGrupo*6] := 'Grupo 1 '
               else
                  Stgr_bloco12.Cells[02, viLinhas + vsiGrupo*6] := 'Grupo:2 ';
               Stgr_bloco12.Cells[15, viLinhas + vsiGrupo*6] := (viComb1+(vsiGrupo*4)).ToString + ' / ' + (viComb2+(vsiGrupo*4)).ToString;
               Stgr_blocoSobra.Cells[00, viLinhas + vsiGrupo*6] := (viLinhas+ vsiGrupo*6).ToString;
               case Copy((Memo_base16.Lines.Strings[viContadorBase]),1,2).ToInteger of
                  1:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);

   //                  Stgr_bloco12.Cells[02, viLinhas + vsiGrupo] := ' g2 ';
   //                  Stgr_bloco12.Cells[03, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),04,2);
   //                  Stgr_bloco12.Cells[04, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),07,2);
   //                  Stgr_bloco12.Cells[05, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),10,2);
   //                  Stgr_bloco12.Cells[06, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),13,2);
   //                  Stgr_bloco12.Cells[07, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),16,2);
   //                  Stgr_bloco12.Cells[08, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),19,2);
   //
   //                  Stgr_bloco12.Cells[09, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),04,2);
   //                  Stgr_bloco12.Cells[10, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),07,2);
   //                  Stgr_bloco12.Cells[11, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),10,2);
   //                  Stgr_bloco12.Cells[12, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),13,2);
   //                  Stgr_bloco12.Cells[13, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),16,2);
   //                  Stgr_bloco12.Cells[14, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),19,2);
                  end;
                  2:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_serie8Linha02.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  3:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha03.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  4:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha04.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  5:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha05.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  6:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha06.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  7:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha07.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  8:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha08.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  9:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha09.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  10:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha10.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  11:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha11.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  12:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha12.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  13:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha13.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  14:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha14.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
                  15:
                  begin
                     Stgr_bloco12.Cells[03, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb1+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[04, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb1+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[05, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb1+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[06, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb1+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[07, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb1+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[08, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb1+(vsiGrupo*4)]),19,2);

                     Stgr_bloco12.Cells[09, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb2+(vsiGrupo*4)]),04,2);
                     Stgr_bloco12.Cells[10, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb2+(vsiGrupo*4)]),07,2);
                     Stgr_bloco12.Cells[11, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb2+(vsiGrupo*4)]),10,2);
                     Stgr_bloco12.Cells[12, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb2+(vsiGrupo*4)]),13,2);
                     Stgr_bloco12.Cells[13, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb2+(vsiGrupo*4)]),16,2);
                     Stgr_bloco12.Cells[14, viLinhas + vsiGrupo*6] := Copy((Memo_seri8Linha15.Lines.Strings[viComb2+(vsiGrupo*4)]),19,2);
                  end;
               end;// Case
//               Falso_Linha1TodosNumeros;
//               for viContarColunas := 03 to 14 do
//               begin
//                  Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_bloco12.Cells[viContarColunas,viLinhas + vsiGrupo*6]),1] := 'V';
//               end;
//               for viContarColunas := 11 to 14 do
//               begin
//                  Stgr_bloco12.Cells[viContarColunas,viLinhas + vsiGrupo] := '00';
//               end;
//               ViContarCelulas := 1;
//               FOR viContarColunas :=1 TO 25 DO
//               BEGIN
//                  IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') THEN
//                  BEGIN
//                       Stgr_bloco12.Cells [ViContarCelulas+2, viLinhas + vsiGrupo*6] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
//                       ViContarCelulas := ViContarCelulas+1;
//                  END; // IF (STRGR_TODOS_NUMEROS
//               END; // FOR viContarColunas

               Falso_Linha1TodosNumeros;
               Falso_Linha2TodosNumeros;
               for viContarColunas := 01 to 16 do
               begin
                  Stgr_Todos_Numeros.Cells[STRtoINT(  Copy((Memo_base16.Lines.Strings[viContadorBase]),viContarColunas*3+1,2)  ),1] := 'V';
               end;
               for viContarColunas := 03 to 14 do
               begin
                  Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_bloco12.Cells[viContarColunas,viLinhas + vsiGrupo*6]),2] := 'V';
               end;
               for viContarColunas := 5 to 6 do
               begin
                  Stgr_blocoSobra.Cells[viContarColunas,viLinhas + vsiGrupo*6] := '';
               end;
               ViContarCelulas := 1;
               FOR viContarColunas :=1 TO 25 DO
               BEGIN
                  IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarColunas,2]='F') THEN
                  BEGIN
                       Stgr_blocoSobra.Cells [ViContarCelulas, viLinhas + vsiGrupo*6] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
                       ViContarCelulas := ViContarCelulas+1;
                  END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR viContarColunas
            end;
            viLinhas := viLinhas + 1;
         end;
      end;
      viLinhas := viLinhas + 6;
      Stgr_bloco12.RowCount := viLinhas;
      Stgr_blocoSobra.RowCount := viLinhas;
   end;
   Stgr_bloco12.RowCount := viLinhas;
   Stgr_blocoSobra.RowCount := viLinhas;
End;



Procedure TFrm_defineCjunto16.LerComb12();
Var
   viLinhas, viTotal, viContarLinhas, viQtdLinhasLer1: integer;
   vcQuery: String;
Begin
//
End;


procedure TFrm_defineCjunto16.bbt_gerarVoltarClick(Sender: TObject);
begin
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := False;
   pa_menuGerar_20p11.Repaint;
end;


// ===================================================================
procedure TFrm_defineCjunto16.Zerar_FLAGTodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.ToString;
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
  end;
end;


procedure TFrm_defineCjunto16.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure TFrm_defineCjunto16.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;


procedure TFrm_defineCjunto16.Falso_Linha3TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
  end;
end;


function TFrm_defineCjunto16.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;




Procedure TFrm_defineCjunto16.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   Stgr_bloco12.ColWidths[02] := 66;
   Stgr_bloco12.ColWidths[15] := 40;
   Stgr_bloco12.Height := ScrollBox_resultado.Height - 35;
   Stgr_bloco12.Repaint;
   Stgr_blocoSobra.Height := ScrollBox_resultado.Height - 35;
   Stgr_blocoSobra.Repaint;

   stgr_Linha1.Height := ScrollBox_resultado.Height - 35;
   stgr_Linha1.Repaint;
   stgr_Linha2.Height := ScrollBox_resultado.Height - 35;
   stgr_Linha2.Repaint;
   stgr_Linha3.Height := ScrollBox_resultado.Height - 35;
   stgr_Linha3.Repaint;
   stgr_combinacoes7Primeira.Height := ScrollBox_resultado.Height - 35;
   stgr_combinacoes7Primeira.Repaint;
   stgr_combinacoes7Segunda.Height := ScrollBox_resultado.Height - 35;
   stgr_combinacoes7Segunda.Repaint;
   stgr_combinacoes7Coincidencias.Height := ScrollBox_resultado.Height - 35;
   stgr_combinacoes7Coincidencias.Repaint;
end;



end.
