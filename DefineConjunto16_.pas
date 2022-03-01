Unit DefineConjunto16_;

Interface

Uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
   Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, StrUtils, System.ImageList, Vcl.ImgList,
   VCLTee.TeCanvas;

Type
   TFrm_defineCjunto16 = Class(TForm)
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
    pa_barraLateralComb7: TPanel;
      Panel4: TPanel;
      Panel5: TPanel;
      Button_prepararComb7: TButton;
      Button_gerarCombPara7: TButton;
      Panel6: TPanel;
      Panel7: TPanel;
      ScrollBox1: TScrollBox;
      la_blocosLinha01: TLabel;
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
      stgr_Linha1Comb7: TStringGrid;
      stgr_Linha2Comb7: TStringGrid;
      stgr_Linha3Comb7: TStringGrid;
      la_blocosLinha02: TLabel;
      la_blocosLinha03: TLabel;
      la_blocosLinha05: TLabel;
      Memo_blocosLinha05: TMemo;
      Memo_blocosLinha04: TMemo;
      la_blocosLinha04: TLabel;
    la_blocosLinha06: TLabel;
      Memo_blocosLinha06: TMemo;
    la_blocosLinha07: TLabel;
      Memo_blocosLinha07: TMemo;
      Memo_blocosLinha08: TMemo;
    la_blocosLinha08: TLabel;
      Memo_blocosLinha09: TMemo;
    la_blocosLinha09: TLabel;
    la_blocosLinha10: TLabel;
      Memo_blocosLinha10: TMemo;
      Memo_blocosLinha11: TMemo;
    la_blocosLinha11: TLabel;
    la_blocosLinha12: TLabel;
      Memo_blocosLinha12: TMemo;
      Memo_blocosLinha13: TMemo;
    la_blocosLinha13: TLabel;
      Memo_blocosLinha14: TMemo;
    la_blocosLinha14: TLabel;
    la_blocosLinha15: TLabel;
      Memo_blocosLinha15: TMemo;
    pa_fimCombinacoesPara7: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LA_gINICIO_100REPET7: TLabel;
    Label34: TLabel;
    LA_gFIM_GERAR7: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    BitBtn_OkCombinacoesPara7: TBitBtn;
    BitBtn_BNCombinacoesPara7: TBitBtn;
    pa_gerarCombinacoesPara7: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    BitBtn_OKGerarCombinacoesPara7: TBitBtn;
    BitBtn_VoltarCombinacoesPara7: TBitBtn;
    pa_geraCom7Personalizado: TPanel;
    Label26: TLabel;
    cb_CombinacoesPara7PersonalL01: TComboBox;
    cb_CombinacoesPara7PersonalL02: TComboBox;
    Label27: TLabel;
    cb_CombinacoesPara7PersonalL03: TComboBox;
    cb_CombinacoesPara7PersonalL04: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    pa_GerarComb7_Geral: TPanel;
    Label25: TLabel;
    cb_CombinacoesPara7Geral: TComboBox;
    Rb_gerarComb7Geral: TRadioButton;
    Rb_gerarComb7Personalizado: TRadioButton;
    Label30: TLabel;
    cb_CombinacoesPara7PersonalL05: TComboBox;
    Label31: TLabel;
    cb_CombinacoesPara7PersonalL06: TComboBox;
    Label32: TLabel;
    cb_CombinacoesPara7PersonalL07: TComboBox;
    cb_CombinacoesPara7PersonalL14: TComboBox;
    Label33: TLabel;
    cb_CombinacoesPara7PersonalL13: TComboBox;
    Label41: TLabel;
    cb_CombinacoesPara7PersonalL12: TComboBox;
    Label46: TLabel;
    cb_CombinacoesPara7PersonalL11: TComboBox;
    Label48: TLabel;
    cb_CombinacoesPara7PersonalL10: TComboBox;
    Label49: TLabel;
    cb_CombinacoesPara7PersonalL09: TComboBox;
    Label51: TLabel;
    Label52: TLabel;
    cb_CombinacoesPara7PersonalL08: TComboBox;
    Label54: TLabel;
    cb_CombinacoesPara7PersonalL15: TComboBox;
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormCreate(Sender: TObject);
      Procedure Bbt_gerarSequenciasClick(Sender: TObject);
      Procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
      Procedure bbt_gerarOkClick(Sender: TObject);
      Procedure bbt_gerarVoltarClick(Sender: TObject);
      Procedure bt_prepararClick(Sender: TObject);
      Procedure bbt_PrepararVoltarClick(Sender: TObject);
      Procedure bbt_PrepararOkClick(Sender: TObject);
      Procedure bt_gerarClick(Sender: TObject);
      Procedure BitBtn_BlocoDeNotas1Click(Sender: TObject);
      Procedure BitBtn_BlocoDeNota2Click(Sender: TObject);
      Procedure Button_gerarCombPara7Click(Sender: TObject);
      Procedure Button_prepararComb7Click(Sender: TObject);
    procedure BitBtn_OkCombinacoesPara7Click(Sender: TObject);
    procedure BitBtn_BNCombinacoesPara7Click(Sender: TObject);
    procedure BitBtn_VoltarCombinacoesPara7Click(Sender: TObject);
    procedure BitBtn_OKGerarCombinacoesPara7Click(Sender: TObject);
    procedure Rb_gerarComb7PersonalizadoClick(Sender: TObject);
    procedure Rb_gerarComb7GeralClick(Sender: TObject);
   Private
      viDivisorSalvar1: integer;
      viDivisorAtualizar1: integer;
      viTime1: integer;
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha3TodosNumeros;
      Function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
      Procedure LerComb12;
      Procedure BlocoDeNotas1;
      Procedure ReconstroiTela;
      Procedure GerarComb12;
      Procedure BlocoDeNotas2;
      Procedure GerarCombPara7_L1(viBloco1, viColuna: integer);
      Procedure GerarCombPara7_L2(viBloco1, viColuna: integer);
      Procedure GerarCombPara7_L3(viBloco1, viColuna: integer);
      Procedure GerarComb7PrimeiraSegunda(vsLinhaOrigem: String; viBloco1, viColuna: integer);
      Procedure GerarCombPara7_L4(viBloco1, viColuna: integer);
      Procedure GerarCombPara7_L5(viBloco1, viColuna: integer);
      Procedure GerarCombPara7_L6(viBloco1, viColuna: integer);
      Procedure GerarComb7Coincidencias(vsLinhaOrigem: String; viBloco1, viBloco2: integer;
        vsLinhaDesc: String);
    procedure RecontroiTelaComb7Para;
    procedure GerarCombPara7_L07(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L08(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L09(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L10(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L11(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L12(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L13(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L14(viBloco1, viColuna: integer);
    procedure GerarCombPara7_L15(viBloco1, viColuna: integer);
      { Private declarations }
   Public
      { Public declarations }
   End;

Var
   Frm_defineCjunto16: TFrm_defineCjunto16;

Implementation

{$R *.dfm}

Procedure TFrm_defineCjunto16.FormCreate(Sender: TObject);
Begin
   SELF.ClientWidth := 1505;
   SELF.ClientHeight := 750;
   SELF.Top := 15;
   SELF.Left := 5;
   // SELF.Visible := TRUE;
   BBT_CLOSE.Left := SELF.ClientWidth - 35;
   scbx_gabarito6cj20p11.Visible := True;
   PA_INICIAL.Enabled := True;
   PA_INICIAL.Left := 520;
   PA_INICIAL.Top := 160;
   Zerar_FLAGTodosNumeros();
   PreenchimentoInicialPadrao;
   bt_gerar.Enabled := False;
   pa_fimAnalisador.Visible := False;
   pa_fimAnalisador.Left := 9500;
   pa_gerarCombinacoesPara7.Visible := False;
   pa_gerarCombinacoesPara7.Left := 9500;
   pa_fimCombinacoesPara7.Visible := False;
   pa_fimCombinacoesPara7.Left := 9500;
End;


Procedure TFrm_defineCjunto16.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   TRY
      BEGIN
         IBQ_COMBINACOES.Close;
         IBDatabase1.Close;
      END
   EXCEPT
      //
   END; // TRY
End;

Procedure TFrm_defineCjunto16.Bbt_gerarSequenciasClick(Sender: TObject);
Begin
   //
End;

Procedure TFrm_defineCjunto16.BBT_PA_REMOVEUREPETClick(Sender: TObject);
Begin
   pa_fimAnalisador.Visible := False;
End;

Procedure TFrm_defineCjunto16.BitBtn_BlocoDeNota2Click(Sender: TObject);
Begin
   pa_fimAnalisador.Visible := False;
   BlocoDeNotas2();
End;

Procedure TFrm_defineCjunto16.BitBtn_BlocoDeNotas1Click(Sender: TObject);
Begin
   pa_fimAnalisador.Visible := False;
   BlocoDeNotas1();
End;




Procedure TFrm_defineCjunto16.BlocoDeNotas1;
Var
   viContar: integer;
   vcQuery, vsComb1, vsCombUltima, vcTitulo, vcSubTitulo, vsGrupo1, vsGrupoUltimo: String;
Begin
   vcTitulo := '{ Definir Conjunto 16 }';
   vcSubTitulo := '';
   Memo_Combinacoes_Todas.Clear;
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + (Stgr_bloco12.RowCount - 1).ToString);
   // Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   viContar := 1;
   vsCombUltima := '00';
   vsGrupoUltimo := ' ';
   WHILE (viContar < Stgr_bloco12.RowCount) DO
   BEGIN
      vsComb1 := Stgr_bloco12.Cells[01, viContar];
      If vsComb1.Trim <> vsCombUltima.Trim Then
      Begin
         Memo_Combinacoes_Todas.Lines.Add(#13'==================================================');
         Memo_Combinacoes_Todas.Lines.Add(#13 + Memo_base16.Lines.Strings[Stgr_bloco12.Cells[01,
           viContar].ToInteger]);
         vsCombUltima := vsComb1;
      End;
      vsGrupo1 := Stgr_bloco12.Cells[02, viContar];
      If vsGrupo1.Trim <> vsGrupoUltimo.Trim Then
      Begin
         Memo_Combinacoes_Todas.Lines.Add(#13 + Stgr_bloco12.Cells[02, viContar].ToUpper);
         vsGrupoUltimo := vsGrupo1;
      End;
      Memo_Combinacoes_Todas.Lines.Add('=Linhas: ' + Stgr_bloco12.Cells[15, viContar] + '');
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('    ' + Stgr_bloco12.Cells[03, viContar] + ' ' + Stgr_bloco12.Cells
        [04, viContar] + ' ' + Stgr_bloco12.Cells[05, viContar] + ' ' + Stgr_bloco12.Cells[06, viContar] + ' '
        + Stgr_bloco12.Cells[07, viContar] + ' ' + Stgr_bloco12.Cells[08, viContar]);
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('    ' + Stgr_bloco12.Cells[09, viContar] + ' ' + Stgr_bloco12.Cells
        [10, viContar] + ' ' + Stgr_bloco12.Cells[11, viContar] + ' ' + Stgr_bloco12.Cells[12, viContar] + ' '
        + Stgr_bloco12.Cells[13, viContar] + ' ' + Stgr_bloco12.Cells[14, viContar]);
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('   Sobram: ' + Stgr_blocoSobra.Cells[01, viContar] + ' ' +
        Stgr_blocoSobra.Cells[02, viContar] + ' ' + Stgr_blocoSobra.Cells[03, viContar] + ' ' +
        Stgr_blocoSobra.Cells[04, viContar] + ' ' + Stgr_blocoSobra.Cells[05, viContar] + ' ' +
        Stgr_blocoSobra.Cells[06, viContar]);
      viContar := viContar + 1;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CxLotoFacil\Definir_Conjunto_16.TXT');
   winExec('Notepad.exe C:\CxLotoFacil\Definir_Conjunto_16.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13 + #13 + #13 + 'Arquivo está localizado em:' + #13 + #13 +
     'C:\CxLotoFacil\Definir_Conjunto_16.TXT');
End;


Procedure TFrm_defineCjunto16.BlocoDeNotas2;
Var
   viContar: integer;
   vcQuery, vsComb1, vsCombUltima, vcTitulo, vcSubTitulo, vsGrupo1, vsGrupoUltimo: String;
Begin
   vcTitulo := '{ Definir Conjunto 16 }';
   vcSubTitulo := '';
   Memo_Combinacoes_Todas.Clear;
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + (Stgr_bloco12.RowCount - 1).ToString);
   // Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   viContar := 1;
   vsCombUltima := '00';
   vsGrupoUltimo := ' ';
   WHILE (viContar < Stgr_bloco12.RowCount) DO
   BEGIN
      vsComb1 := Stgr_bloco12.Cells[01, viContar];
      If vsComb1.Trim <> vsCombUltima.Trim Then
      Begin
         Memo_Combinacoes_Todas.Lines.Add
           (#13 + copy(Memo_base16.Lines.Strings[Stgr_bloco12.Cells[01, viContar].ToInteger], 1, 2));
         Memo_Combinacoes_Todas.Lines.Add
           (copy(Memo_base16.Lines.Strings[Stgr_bloco12.Cells[01, viContar].ToInteger], 4, 60).Trim);
         vsCombUltima := vsComb1;
      End;
      // vsGrupo1 := Stgr_bloco12.Cells[02, viContar];
      // if vsGrupo1.Trim <> vsGrupoUltimo.Trim then
      // begin
      // Memo_Combinacoes_Todas.Lines.Add(#13+ Stgr_bloco12.Cells[02, viContar].ToUpper);
      // vsGrupoUltimo := vsGrupo1;
      // end;
      // Memo_Combinacoes_Todas.Lines.Add('=Linhas: ' + Stgr_bloco12.Cells[15, viContar]+ '');
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add(#13 + '' + Stgr_bloco12.Cells[03, viContar] + ' ' + Stgr_bloco12.Cells
        [04, viContar] + ' ' + Stgr_bloco12.Cells[05, viContar] + ' ' + Stgr_bloco12.Cells[06, viContar] + ' '
        + Stgr_bloco12.Cells[07, viContar] + ' ' + Stgr_bloco12.Cells[08, viContar]);
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('' + Stgr_bloco12.Cells[09, viContar] + ' ' + Stgr_bloco12.Cells[10,
        viContar] + ' ' + Stgr_bloco12.Cells[11, viContar] + ' ' + Stgr_bloco12.Cells[12, viContar] + ' ' +
        Stgr_bloco12.Cells[13, viContar] + ' ' + Stgr_bloco12.Cells[14, viContar]);
      Memo_Combinacoes_Todas.Lines.LineBreak;
      Memo_Combinacoes_Todas.Lines.Add('' + Stgr_blocoSobra.Cells[01, viContar] + ' ' + Stgr_blocoSobra.Cells
        [02, viContar] + ' ' + Stgr_blocoSobra.Cells[03, viContar] + ' ' + Stgr_blocoSobra.Cells[04, viContar]
        + ' ' + Stgr_blocoSobra.Cells[05, viContar] + ' ' + Stgr_blocoSobra.Cells[06, viContar]);
      viContar := viContar + 1;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CxLotoFacil\Definir_Conjunto_16_BlocoDeNotas2.TXT');
   winExec('Notepad.exe C:\CxLotoFacil\Definir_Conjunto_16_BlocoDeNotas2.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13 + #13 + #13 + 'Arquivo está localizado em:' + #13 + #13 +
     'C:\CxLotoFacil\Definir_Conjunto_16_BlocoDeNotas2.TXT');
End;

Procedure TFrm_defineCjunto16.bt_prepararClick(Sender: TObject);
Begin
   pa_preparar.Left := 210;
   pa_preparar.Top := 80;
   pa_preparar.Enabled := True;
   pa_preparar.Visible := True;
   bt_preparar.Enabled := False;
End;

Procedure TFrm_defineCjunto16.Button_prepararComb7Click(Sender: TObject);
Begin
   Button_gerarCombPara7.Enabled := True;
   sleep(500);
   showmessage('Ok');
End;

Procedure TFrm_defineCjunto16.BitBtn_OkCombinacoesPara7Click(Sender: TObject);
Begin
   pa_fimCombinacoesPara7.Visible := False;
End;



Procedure TFrm_defineCjunto16.BitBtn_BNCombinacoesPara7Click(Sender: TObject);
Var
   viContar: integer;
   vcQuery, vsComb1, vsCombUltima, vcTitulo, vcSubTitulo, vsGrupo1, vsGrupoUltimo: String;
Begin
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CxLotoFacil\Definir_Conjunto_16_BN_Combinacoes7.TXT');
   winExec('Notepad.exe C:\CxLotoFacil\Definir_Conjunto_16_BN_Combinacoes7.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13 + #13 + #13 + 'Arquivo está localizado em:' + #13 + #13 +
     'C:\CxLotoFacil\Definir_Conjunto_16_BN_Combinacoes7.TXT');
End;


procedure TFrm_defineCjunto16.BitBtn_VoltarCombinacoesPara7Click(Sender: TObject);
begin
   pa_gerarCombinacoesPara7.Enabled := True;
   pa_gerarCombinacoesPara7.Visible := False;
   pa_gerarCombinacoesPara7.Repaint;
end;


procedure TFrm_defineCjunto16.BitBtn_OKGerarCombinacoesPara7Click(Sender: TObject);
begin
   pa_gerarCombinacoesPara7.Visible := False;
   pa_gerarCombinacoesPara7.Repaint;
   LA_gINICIO_100REPET7.Caption := DateToStr(Date) + ' - ' + TimeToStr(Time);
   Memo_Combinacoes_Todas.Clear;
   Memo_Combinacoes_Todas.Clear;
   Memo_Combinacoes_Todas.Lines.Add('{ Definir Conjunto 16  -   Combinações de 07 números por blocos}');
   if Rb_gerarComb7Geral.Checked then
      Memo_Combinacoes_Todas.Lines.Add(cb_CombinacoesPara7Geral.Text);
   Memo_Combinacoes_Todas.Lines.Add ('==============================================================');

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
      or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL01.itemIndex=0)or (cb_CombinacoesPara7PersonalL01.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL01.itemIndex=4) or (cb_CombinacoesPara7PersonalL01.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L1(1, 1);
      GerarCombPara7_L1(2, 2);
      GerarComb7Coincidencias('01', 1, 2, la_blocosLinha01.Caption);
      RecontroiTelaComb7Para;
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL01.itemIndex=0)or (cb_CombinacoesPara7PersonalL01.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL01.itemIndex=4) or (cb_CombinacoesPara7PersonalL01.itemIndex=6)
         )         
   then
   begin
      GerarCombPara7_L1(1, 1);
      GerarCombPara7_L1(3, 2);
      GerarComb7Coincidencias('01', 1, 3, la_blocosLinha01.Caption);
      RecontroiTelaComb7Para;
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL01.itemIndex=0)or (cb_CombinacoesPara7PersonalL01.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL01.itemIndex=5) or (cb_CombinacoesPara7PersonalL01.itemIndex=6)
         )         
   then
   begin
      GerarCombPara7_L1(2, 1);
      GerarCombPara7_L1(3, 2);
      GerarComb7Coincidencias('01', 2, 3, la_blocosLinha01.Caption);
      RecontroiTelaComb7Para;
   end;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL02.itemIndex=0)or (cb_CombinacoesPara7PersonalL02.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL02.itemIndex=4) or (cb_CombinacoesPara7PersonalL02.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L2(1,1);
      GerarCombPara7_L2(2,2);
      GerarComb7Coincidencias('02', 1, 2, la_blocosLinha02.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL02.itemIndex=0)or (cb_CombinacoesPara7PersonalL02.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL02.itemIndex=4) or (cb_CombinacoesPara7PersonalL02.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L2(1,1);
      GerarCombPara7_L2(3,2);
      GerarComb7Coincidencias('02', 1, 3, la_blocosLinha02.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL02.itemIndex=0)or (cb_CombinacoesPara7PersonalL02.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL02.itemIndex=5) or (cb_CombinacoesPara7PersonalL02.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L2(2,1);
      GerarCombPara7_L2(3,2);
      GerarComb7Coincidencias('02', 2, 3, la_blocosLinha02.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL03.itemIndex=0)or (cb_CombinacoesPara7PersonalL03.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL03.itemIndex=4) or (cb_CombinacoesPara7PersonalL03.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L3(1, 1);
      GerarCombPara7_L3(2, 2);
      GerarComb7Coincidencias('03', 1, 2, la_blocosLinha03.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL03.itemIndex=0)or (cb_CombinacoesPara7PersonalL03.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL03.itemIndex=4) or (cb_CombinacoesPara7PersonalL03.itemIndex=6)
         )
   then
   begin
      RecontroiTelaComb7Para;
      GerarCombPara7_L3(1, 1);
      GerarCombPara7_L3(3, 2);
      GerarComb7Coincidencias('03', 1, 3, la_blocosLinha03.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL03.itemIndex=0)or (cb_CombinacoesPara7PersonalL03.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL03.itemIndex=5) or (cb_CombinacoesPara7PersonalL03.itemIndex=6)
         )
   then
   begin
      RecontroiTelaComb7Para;
      GerarCombPara7_L3(2, 1);
      GerarCombPara7_L3(3, 2);
      GerarComb7Coincidencias('03', 2, 3, la_blocosLinha03.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL04.itemIndex=0)or (cb_CombinacoesPara7PersonalL04.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL04.itemIndex=4) or (cb_CombinacoesPara7PersonalL04.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L4(1,1);
      GerarCombPara7_L4(2,2);
      GerarComb7Coincidencias('04', 1, 2, la_blocosLinha04.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL04.itemIndex=0)or (cb_CombinacoesPara7PersonalL04.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL04.itemIndex=4) or (cb_CombinacoesPara7PersonalL04.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L4(1,1);
      GerarCombPara7_L4(3,2);
      GerarComb7Coincidencias('04', 1, 3, la_blocosLinha04.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL04.itemIndex=0)or (cb_CombinacoesPara7PersonalL04.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL04.itemIndex=5) or (cb_CombinacoesPara7PersonalL04.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L4(2,1);
      GerarCombPara7_L4(3,2);
      GerarComb7Coincidencias('04', 2, 3, la_blocosLinha04.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL05.itemIndex=0)or (cb_CombinacoesPara7PersonalL05.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL05.itemIndex=4) or (cb_CombinacoesPara7PersonalL05.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L5(1,1);
      GerarCombPara7_L5(2,2);
      GerarComb7Coincidencias('05', 1, 2, la_blocosLinha05.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL05.itemIndex=0)or (cb_CombinacoesPara7PersonalL05.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL05.itemIndex=4) or (cb_CombinacoesPara7PersonalL05.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L5(1,1);
      GerarCombPara7_L5(3,2);
      GerarComb7Coincidencias('05', 1, 3, la_blocosLinha05.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
           or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL05.itemIndex=0)or (cb_CombinacoesPara7PersonalL05.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL05.itemIndex=5) or (cb_CombinacoesPara7PersonalL05.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L5(2,1);
      GerarCombPara7_L5(3,2);
      GerarComb7Coincidencias('05', 2, 3, la_blocosLinha05.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL06.itemIndex=0)or (cb_CombinacoesPara7PersonalL06.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL06.itemIndex=4) or (cb_CombinacoesPara7PersonalL06.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L6(1,1);
      GerarCombPara7_L6(2,2);
      GerarComb7Coincidencias('06', 1, 2, la_blocosLinha06.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL06.itemIndex=0)or (cb_CombinacoesPara7PersonalL06.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL06.itemIndex=4) or (cb_CombinacoesPara7PersonalL06.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L6(1,1);
      GerarCombPara7_L6(3,2);
      GerarComb7Coincidencias('06', 1, 3, la_blocosLinha06.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL06.itemIndex=0)or (cb_CombinacoesPara7PersonalL06.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL06.itemIndex=5) or (cb_CombinacoesPara7PersonalL06.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L6(2,1);
      GerarCombPara7_L6(3,2);
      GerarComb7Coincidencias('06', 2, 3, la_blocosLinha06.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL07.itemIndex=0)or (cb_CombinacoesPara7PersonalL07.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL07.itemIndex=4) or (cb_CombinacoesPara7PersonalL07.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L07(1, 1);
      GerarCombPara7_L07(2, 2);
      GerarComb7Coincidencias('07', 1, 2, la_blocosLinha07.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL07.itemIndex=0)or (cb_CombinacoesPara7PersonalL07.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL07.itemIndex=4) or (cb_CombinacoesPara7PersonalL07.itemIndex=6)
         )
   then
   begin
      RecontroiTelaComb7Para;
      GerarCombPara7_L07(1, 1);
      GerarCombPara7_L07(3, 2);
      GerarComb7Coincidencias('07', 1, 3, la_blocosLinha07.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL07.itemIndex=0)or (cb_CombinacoesPara7PersonalL07.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL07.itemIndex=5) or (cb_CombinacoesPara7PersonalL07.itemIndex=6)
         )
   then
   begin
      RecontroiTelaComb7Para;
      GerarCombPara7_L07(2, 1);
      GerarCombPara7_L07(3, 2);
      GerarComb7Coincidencias('07', 2, 3, la_blocosLinha07.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL08.itemIndex=0)or (cb_CombinacoesPara7PersonalL08.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL08.itemIndex=5) or (cb_CombinacoesPara7PersonalL08.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L08(1,1);
      GerarCombPara7_L08(2,2);
      GerarComb7Coincidencias('08', 1, 2, la_blocosLinha08.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL08.itemIndex=0)or (cb_CombinacoesPara7PersonalL08.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL08.itemIndex=4) or (cb_CombinacoesPara7PersonalL08.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L08(1,1);
      GerarCombPara7_L08(3,2);
      GerarComb7Coincidencias('08', 1, 3, la_blocosLinha08.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL08.itemIndex=0)or (cb_CombinacoesPara7PersonalL08.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL08.itemIndex=5) or (cb_CombinacoesPara7PersonalL08.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L08(2,1);
      GerarCombPara7_L08(3,2);
      GerarComb7Coincidencias('08', 2, 3, la_blocosLinha08.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL09.itemIndex=0)or (cb_CombinacoesPara7PersonalL09.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL09.itemIndex=4) or (cb_CombinacoesPara7PersonalL09.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L09(1,1);
      GerarCombPara7_L09(2,2);
      GerarComb7Coincidencias('09', 1, 2, la_blocosLinha09.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL09.itemIndex=0)or (cb_CombinacoesPara7PersonalL09.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL09.itemIndex=4) or (cb_CombinacoesPara7PersonalL09.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L09(1,1);
      GerarCombPara7_L09(3,2);
      GerarComb7Coincidencias('09', 1, 3, la_blocosLinha09.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL09.itemIndex=0)or (cb_CombinacoesPara7PersonalL09.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL09.itemIndex=5) or (cb_CombinacoesPara7PersonalL09.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L09(2,1);
      GerarCombPara7_L09(3,2);
      GerarComb7Coincidencias('09', 2, 3, la_blocosLinha09.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL10.itemIndex=0)or (cb_CombinacoesPara7PersonalL10.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL10.itemIndex=4) or (cb_CombinacoesPara7PersonalL10.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L10(1,1);
      GerarCombPara7_L10(2,2);
      GerarComb7Coincidencias('10', 1, 2, la_blocosLinha10.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL10.itemIndex=0)or (cb_CombinacoesPara7PersonalL10.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL10.itemIndex=4) or (cb_CombinacoesPara7PersonalL10.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L10(1,1);
      GerarCombPara7_L10(3,2);
      GerarComb7Coincidencias('10', 1, 3, la_blocosLinha10.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL10.itemIndex=0)or (cb_CombinacoesPara7PersonalL10.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL10.itemIndex=5) or (cb_CombinacoesPara7PersonalL10.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L10(2,1);
      GerarCombPara7_L10(3,2);
      GerarComb7Coincidencias('10', 2, 3, la_blocosLinha10.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL11.itemIndex=0)or (cb_CombinacoesPara7PersonalL11.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL11.itemIndex=4) or (cb_CombinacoesPara7PersonalL11.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L11(1,1);
      GerarCombPara7_L11(2,2);
      GerarComb7Coincidencias('11', 1, 2, la_blocosLinha11.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL11.itemIndex=0)or (cb_CombinacoesPara7PersonalL11.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL11.itemIndex=4) or (cb_CombinacoesPara7PersonalL11.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L11(1,1);
      GerarCombPara7_L11(3,2);
      GerarComb7Coincidencias('11', 1, 3, la_blocosLinha11.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL11.itemIndex=0)or (cb_CombinacoesPara7PersonalL11.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL11.itemIndex=5) or (cb_CombinacoesPara7PersonalL11.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L11(2,1);
      GerarCombPara7_L11(3,2);
      GerarComb7Coincidencias('11', 2, 3, la_blocosLinha11.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL12.itemIndex=0)or (cb_CombinacoesPara7PersonalL12.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL12.itemIndex=4) or (cb_CombinacoesPara7PersonalL12.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L12(1,1);
      GerarCombPara7_L12(2,2);
      GerarComb7Coincidencias('12', 1, 2, la_blocosLinha12.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL12.itemIndex=0)or (cb_CombinacoesPara7PersonalL12.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL12.itemIndex=4) or (cb_CombinacoesPara7PersonalL12.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L12(1,1);
      GerarCombPara7_L12(3,2);
      GerarComb7Coincidencias('12', 1, 3, la_blocosLinha12.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL12.itemIndex=0)or (cb_CombinacoesPara7PersonalL12.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL12.itemIndex=5) or (cb_CombinacoesPara7PersonalL12.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L12(2,1);
      GerarCombPara7_L12(3,2);
      GerarComb7Coincidencias('12', 2, 3, la_blocosLinha12.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL13.itemIndex=0)or (cb_CombinacoesPara7PersonalL13.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL13.itemIndex=4) or (cb_CombinacoesPara7PersonalL13.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L13(1,1);
      GerarCombPara7_L13(2,2);
      GerarComb7Coincidencias('13', 1, 2, la_blocosLinha13.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL13.itemIndex=0)or (cb_CombinacoesPara7PersonalL13.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL13.itemIndex=4) or (cb_CombinacoesPara7PersonalL13.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L13(1,1);
      GerarCombPara7_L13(3,2);
      GerarComb7Coincidencias('13', 1, 3, la_blocosLinha13.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL13.itemIndex=0)or (cb_CombinacoesPara7PersonalL13.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL13.itemIndex=5) or (cb_CombinacoesPara7PersonalL13.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L13(2,1);
      GerarCombPara7_L13(3,2);
      GerarComb7Coincidencias('13', 2, 3, la_blocosLinha13.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL14.itemIndex=0)or (cb_CombinacoesPara7PersonalL14.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL14.itemIndex=4) or (cb_CombinacoesPara7PersonalL14.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L14(1,1);
      GerarCombPara7_L14(2,2);
      GerarComb7Coincidencias('14', 1, 2, la_blocosLinha14.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL14.itemIndex=0)or (cb_CombinacoesPara7PersonalL14.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL14.itemIndex=4) or (cb_CombinacoesPara7PersonalL14.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L14(1,1);
      GerarCombPara7_L14(3,2);
      GerarComb7Coincidencias('14', 1, 3, la_blocosLinha14.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL14.itemIndex=0)or (cb_CombinacoesPara7PersonalL14.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL14.itemIndex=5) or (cb_CombinacoesPara7PersonalL14.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L14(2,1);
      GerarCombPara7_L14(3,2);
      GerarComb7Coincidencias('14', 2, 3, la_blocosLinha14.Caption);
   end;
      RecontroiTelaComb7Para;

   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 1)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 5))
      and (
          (cb_CombinacoesPara7PersonalL15.itemIndex=0)or (cb_CombinacoesPara7PersonalL15.itemIndex=1)
          or (cb_CombinacoesPara7PersonalL15.itemIndex=4) or (cb_CombinacoesPara7PersonalL15.itemIndex=5)
         )
   then
   begin
      GerarCombPara7_L15(1,1);
      GerarCombPara7_L15(2,2);
      GerarComb7Coincidencias('15', 1, 2, la_blocosLinha15.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 2)
         or (cb_CombinacoesPara7Geral.ItemIndex = 4) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL15.itemIndex=0)or (cb_CombinacoesPara7PersonalL15.itemIndex=2)
          or (cb_CombinacoesPara7PersonalL15.itemIndex=4) or (cb_CombinacoesPara7PersonalL15.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L15(1,1);
      GerarCombPara7_L15(3,2);
      GerarComb7Coincidencias('15', 1, 3, la_blocosLinha15.Caption);
   end;
   if ((cb_CombinacoesPara7Geral.ItemIndex = 0) or (cb_CombinacoesPara7Geral.ItemIndex = 3)
         or (cb_CombinacoesPara7Geral.ItemIndex = 5) or (cb_CombinacoesPara7Geral.ItemIndex = 6))
      and (
          (cb_CombinacoesPara7PersonalL15.itemIndex=0)or (cb_CombinacoesPara7PersonalL15.itemIndex=3)
          or (cb_CombinacoesPara7PersonalL15.itemIndex=5) or (cb_CombinacoesPara7PersonalL15.itemIndex=6)
         )
   then
   begin
      GerarCombPara7_L15(2,1);
      GerarCombPara7_L15(3,2);
      GerarComb7Coincidencias('15', 2, 3, la_blocosLinha15.Caption);
   end;
   RecontroiTelaComb7Para;

   LA_gFIM_GERAR7.Caption := DateToStr(Date) + ' - ' + TimeToStr(Time);
   showmessage('Ok');
   pa_fimCombinacoesPara7.Left := 200;
   pa_fimCombinacoesPara7.Enabled := True;
   pa_fimCombinacoesPara7.Visible := True;
   pa_fimCombinacoesPara7.Repaint;
end;


Procedure TFrm_defineCjunto16.Button_gerarCombPara7Click(Sender: TObject);
Begin
   try
      Rb_gerarComb7Geral.Checked := True;
      Rb_gerarComb7Personalizado.Checked := True;
      Rb_gerarComb7Geral.Checked := True;
   except
      //
   end;
   pa_gerarCombinacoesPara7.left := 200;
   pa_gerarCombinacoesPara7.Enabled := True;
   pa_gerarCombinacoesPara7.Visible := True;
   pa_gerarCombinacoesPara7.Repaint;
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L1(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '01';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '01';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '01';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '01';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '01';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha01.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('01', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L2(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '02';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '02';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '02';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '02';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '02';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha02.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('02', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L3(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '03';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '03';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '03';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '03';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '03';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha03.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('03', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L4(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '04';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '04';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '04';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '04';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '04';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha04.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('04', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L5(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '05';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '05';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '05';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '05';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '05';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha05.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('05', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L6(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '06';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '06';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '06';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '06';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '06';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha06.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('06', viBloco1, viColuna);
End;



Procedure TFrm_defineCjunto16.GerarCombPara7_L07(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := 1;
   stgr_Linha1Comb7.Repaint;
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '07';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '07';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '07';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '07';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '07';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha07.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('06', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L08(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '08';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '08';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '08';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '08';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '08';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha08.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('08', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L09(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '09';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '09';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '09';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '09';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '09';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha09.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('09', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L10(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '10';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '10';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '10';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '10';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '10';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha10.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('10', viBloco1, viColuna);
End;



Procedure TFrm_defineCjunto16.GerarCombPara7_L11(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '11';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '11';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '11';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '11';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '11';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha11.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('11', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L12(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '12';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '12';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '12';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '12';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '12';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha12.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('12', viBloco1, viColuna);
End;




Procedure TFrm_defineCjunto16.GerarCombPara7_L13(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '13';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '13';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '13';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '13';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '13';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha13.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('13', viBloco1, viColuna);
End;



Procedure TFrm_defineCjunto16.GerarCombPara7_L14(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '14';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '14';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '14';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '14';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '14';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha14.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('14', viBloco1, viColuna);
End;

Procedure TFrm_defineCjunto16.GerarCombPara7_L15(viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viLinhasMemo: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   stgr_Linha1Comb7.RowCount := 2;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.RowCount := 2;
   stgr_Linha2Comb7.Repaint;
   sleep(50);
   viLinhas := 1;
   viLinhasMemo := 1;
   // linha01, bloco 1 e 2
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha1Comb7.Cells[1, viLinhas] := '15';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[1]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[1]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[1]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[4]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[4]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[4]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[7]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[7]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha1Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[7]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   //
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha1Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha1Comb7.Cells[1, viLinhas] := '15';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[1]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[1]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[4]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[4]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha1Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha1Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[7]),
              viComb1 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[7]),
              viComb2 * 3 + 1, 2);
            stgr_Linha1Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha1Comb7.RowCount := viLinhas;
   stgr_Linha1Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 4 Do
   Begin
      For viComb2 := viComb1 + 1 To 5 Do
      Begin
         stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha2Comb7.Cells[1, viLinhas] := '15';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[2]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[2]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[5]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[5]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[8]),
              viComb1 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[8]),
              viComb2 * 3 + 1, 2);
            stgr_Linha2Comb7.Cells[5, viLinhas] := '00';
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   For viComb1 := 0 To 3 Do
   Begin
      For viComb2 := viComb1 + 1 To 4 Do
      Begin
         For viComb3 := viComb2 + 1 To 5 Do
         Begin
            stgr_Linha2Comb7.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_Linha2Comb7.Cells[1, viLinhas] := '15';
            If viBloco1 = 1 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b1';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[2]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[2]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[2]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 2 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b2';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[5]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[5]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[5]),
                 viComb3 * 3 + 1, 2);
            End
            Else If viBloco1 = 3 Then
            Begin
               stgr_Linha2Comb7.Cells[2, viLinhas] := 'b3';
               stgr_Linha2Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[8]),
                 viComb1 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[8]),
                 viComb2 * 3 + 1, 2);
               stgr_Linha2Comb7.Cells[5, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[8]),
                 viComb3 * 3 + 1, 2);
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   stgr_Linha2Comb7.RowCount := viLinhas;
   stgr_Linha2Comb7.Repaint;
   //
   viLinhas := 1;
   For viComb1 := 0 To 2 Do
   Begin
      For viComb2 := viComb1 + 1 To 3 Do
      Begin
         stgr_Linha3Comb7.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_Linha3Comb7.Cells[1, viLinhas] := '15';
         If viBloco1 = 1 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b1';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[3]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[3]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 2 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b2';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[6]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[6]),
              viComb2 * 3 + 1, 2);
         End
         Else If viBloco1 = 3 Then
         Begin
            stgr_Linha3Comb7.Cells[2, viLinhas] := 'b3';
            stgr_Linha3Comb7.Cells[3, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[9]),
              viComb1 * 3 + 1, 2);
            stgr_Linha3Comb7.Cells[4, viLinhas] := copy((Memo_blocosLinha15.Lines.Strings[9]),
              viComb2 * 3 + 1, 2);
         End;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_Linha3Comb7.RowCount := viLinhas;
   stgr_Linha3Comb7.Repaint;
   GerarComb7PrimeiraSegunda('15', viBloco1, viColuna);
End;



Procedure TFrm_defineCjunto16.GerarComb7PrimeiraSegunda(vsLinhaOrigem: String; viBloco1, viColuna: integer);
Var
   viLinhas: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
   viComb1, viComb2, viComb3: integer;
Begin
   // Combinações 07
   viLinhas := 1;
   For viComb1 := 1 To stgr_Linha1Comb7.RowCount - 1 Do
   Begin
      For viComb2 := 1 To stgr_Linha2Comb7.RowCount - 1 Do
      Begin
         For viComb3 := 1 To stgr_Linha3Comb7.RowCount - 1 Do
         Begin
            If viBloco1 = 1 Then
            Begin
               If viColuna = 1 Then
               Begin
                  stgr_combinacoes7Primeira.Cells[0, viLinhas] := viLinhas.ToString;
                  stgr_combinacoes7Primeira.Cells[1, viLinhas] := vsLinhaOrigem;
                  stgr_combinacoes7Primeira.Cells[2, viLinhas] := 'b1';
               End
               Else If viColuna = 2 Then
               Begin
                  stgr_combinacoes7Segunda.Cells[0, viLinhas] := viLinhas.ToString;
                  stgr_combinacoes7Segunda.Cells[1, viLinhas] := vsLinhaOrigem;
                  stgr_combinacoes7Segunda.Cells[2, viLinhas] := 'b1';
               End;
            End
            Else If viBloco1 = 2 Then
            Begin
               If viColuna = 1 Then
               Begin
                  stgr_combinacoes7Primeira.Cells[0, viLinhas] := viLinhas.ToString;
                  stgr_combinacoes7Primeira.Cells[1, viLinhas] := vsLinhaOrigem;
                  stgr_combinacoes7Primeira.Cells[2, viLinhas] := 'b2';
               End
               Else If viColuna = 2 Then
               Begin
                  stgr_combinacoes7Segunda.Cells[0, viLinhas] := viLinhas.ToString;
                  stgr_combinacoes7Segunda.Cells[1, viLinhas] := vsLinhaOrigem;
                  stgr_combinacoes7Segunda.Cells[2, viLinhas] := 'b2';
               End;
            End
            Else If viBloco1 = 3 Then
            Begin
               If viColuna = 1 Then
               Begin
                  stgr_combinacoes7Primeira.Cells[0, viLinhas] := viLinhas.ToString;
                  stgr_combinacoes7Primeira.Cells[1, viLinhas] := vsLinhaOrigem;
                  stgr_combinacoes7Primeira.Cells[2, viLinhas] := 'b3';
               End
               Else If viColuna = 2 Then
               Begin
                  stgr_combinacoes7Segunda.Cells[0, viLinhas] := viLinhas.ToString;
                  stgr_combinacoes7Segunda.Cells[1, viLinhas] := vsLinhaOrigem;
                  stgr_combinacoes7Segunda.Cells[2, viLinhas] := 'b3';
               End;
            End;
            Falso_Linha1TodosNumeros;
            For viContarColunas := 3 To 5 Do
            Begin
               Stgr_Todos_Numeros.Cells[STRtoINT(stgr_Linha1Comb7.Cells[viContarColunas, viComb1]), 1] := 'V';
            End;
            For viContarColunas := 3 To 5 Do
            Begin
               Stgr_Todos_Numeros.Cells[STRtoINT(stgr_Linha2Comb7.Cells[viContarColunas, viComb2]), 1] := 'V';
            End;
            For viContarColunas := 3 To 4 Do
            Begin
               Stgr_Todos_Numeros.Cells[STRtoINT(stgr_Linha3Comb7.Cells[viContarColunas, viComb3]), 1] := 'V';
            End;
            ViContarCelulas := 3;
            For viContarColunas := 1 To 25 Do
            Begin
               If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V')  then
               Begin
                  If viColuna = 1 Then
                  Begin
                     stgr_combinacoes7Primeira.Cells[ViContarCelulas, viLinhas] :=
                       RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
                  End
                  Else If viColuna = 2 Then
                  Begin
                     stgr_combinacoes7Segunda.Cells[ViContarCelulas, viLinhas] :=
                       RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
                  End;
                  ViContarCelulas := ViContarCelulas + 1;
               End;
            End;
            If ViContarCelulas <> 10 Then
               Continue;
            // FOR viContarColunas
            viLinhas := viLinhas + 1;
         End;
      End;
   End;
   If viColuna = 1 Then
   Begin
      stgr_combinacoes7Primeira.RowCount := viLinhas;
      stgr_combinacoes7Primeira.Repaint;
   End
   Else If viColuna = 2 Then
   Begin
      stgr_combinacoes7Segunda.RowCount := viLinhas;
      stgr_combinacoes7Segunda.Repaint;
   End;
End;

Procedure TFrm_defineCjunto16.GerarComb7Coincidencias(vsLinhaOrigem: String; viBloco1, viBloco2: integer; vsLinhaDesc: String);
Var
   viLinhas: integer;
   viContarColunas: integer;
   ViContarCelulas: integer;
   viComb1, viComb2: integer;
   vsCombinacoes : String;
Begin
   viLinhas := 1;
   stgr_combinacoes7Coincidencias.RowCount := 2;
   stgr_combinacoes7Coincidencias.Repaint;
   Memo_Combinacoes_Todas.Lines.Add(#13+vsLinhaDesc + ' Blocos: '+ viBloco1.ToString +' e ' + viBloco2.ToString);
   For viComb1 := 1 To  Trunc((stgr_combinacoes7Primeira.RowCount - 1)/1) Do
   Begin
      For viComb2 := 1 To stgr_combinacoes7Segunda.RowCount - 1 Do
      Begin
         If viComb2 Mod 1800 = 0 Then
         Begin
            stgr_combinacoes7Coincidencias.Cells[00, 00] := viComb1.ToString;
            stgr_combinacoes7Coincidencias.Cells[01, 00] := viComb2.ToString;
            stgr_combinacoes7Coincidencias.Repaint;
         End;
         Falso_Linha1TodosNumeros;
         For viContarColunas := 3 To 9 Do
         Begin
            Stgr_Todos_Numeros.Cells[STRtoINT(stgr_combinacoes7Primeira.Cells[viContarColunas, viComb1]),
              1] := 'V';
         End;
         Falso_Linha2TodosNumeros;
         For viContarColunas := 3 To 9 Do
         Begin
            Stgr_Todos_Numeros.Cells[STRtoINT(stgr_combinacoes7Segunda.Cells[viContarColunas, viComb2]),
              2] := 'V';
         End;
         ViContarCelulas := 4;
         For viContarColunas := 1 To 25 Do
         Begin
            If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') And
              (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') Then
            Begin
               ViContarCelulas := ViContarCelulas + 1;
            End;
         End;
         If ViContarCelulas <= 10 Then  // limite
         Begin
            Continue;
         End;
         ViContarCelulas := 4;
         For viContarColunas := 1 To 25 Do
         Begin
            If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') And
              (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') Then
            Begin
               stgr_combinacoes7Coincidencias.Cells[ViContarCelulas, viLinhas] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
               ViContarCelulas := ViContarCelulas + 1;
            End;
         End;
         vsCombinacoes:= '';
         for ViContarCelulas := 4 to 10 do
         begin
            vsCombinacoes:= vsCombinacoes + stgr_combinacoes7Coincidencias.Cells[ViContarCelulas, viLinhas]+' ';
         end;
         Memo_Combinacoes_Todas.Lines.LineBreak;
         Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes+ ' ');
         // FOR viContarColunas
         stgr_combinacoes7Coincidencias.Cells[00, viLinhas] := viLinhas.ToString;
         stgr_combinacoes7Coincidencias.Cells[01, viLinhas] := vsLinhaOrigem;
         // +' [' +vicomb1.ToString+ ' / ' +vicomb2.ToString+ ']';
         stgr_combinacoes7Coincidencias.Cells[02, viLinhas] := viBloco1.ToString;
         stgr_combinacoes7Coincidencias.Cells[03, viLinhas] := viBloco2.ToString;
         stgr_combinacoes7Coincidencias.Cells[03, 00] := viLinhas.ToString;
         viLinhas := viLinhas + 1;
      End;
      stgr_combinacoes7Coincidencias.RowCount := viLinhas;
      stgr_combinacoes7Coincidencias.Repaint;
   End;
   stgr_combinacoes7Coincidencias.RowCount := viLinhas;
   stgr_combinacoes7Coincidencias.Repaint;
End;

procedure TFrm_defineCjunto16.RecontroiTelaComb7Para;
begin
  Frm_defineCjunto16.WindowState := wsMinimized;
  Frm_defineCjunto16.WindowState := wsNormal;
  pgc_AbasPrincipais.Repaint;
  pa_barraLateralComb7.Repaint;
  pa_Gerador6cj20p11.Repaint;
  sleep(25);
end;


Procedure TFrm_defineCjunto16.bbt_PrepararOkClick(Sender: TObject);
Begin
   Pgbr_naoRepetidos1.Position := 0;
   Pgbr_naoRepetidos1.Repaint;
   // Try
   // IBQ_Combinacoes.SQL.Clear;
   // IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_16_DEF (ORIGEM VARCHAR(2) COLLATE PT_BR), ORIGEM GRUPO(4) COLLATE PT_BR), DADOS_12 VARCHAR(25) COLLATE PT_BR), DADOS_SOBRA VARCHAR(23) COLLATE PT_BR);') ;
   // IBQ_Combinacoes.ExecSQL;
   // IBQ_Combinacoes.SQL.Clear;
   // IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   // IBQ_Combinacoes.ExecSQL;
   // IBQ_Combinacoes.Transaction.StartTransaction;
   // IBQ_Combinacoes.Transaction.Commit;
   // IBQ_Combinacoes.Transaction.StartTransaction;
   // Except
   // IBQ_Combinacoes.SQL.Clear;
   // IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_16_DEF;')  ;
   // IBQ_Combinacoes.ExecSQL;
   // IBQ_Combinacoes.SQL.Clear;
   // IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   // IBQ_Combinacoes.ExecSQL ;
   // IBQ_Combinacoes.Transaction.StartTransaction;
   // IBQ_Combinacoes.Transaction.Commit;
   // IBQ_Combinacoes.Transaction.StartTransaction;
   // End;
   sleep(1500);
   showmessage('Preparar concluído');
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
   bt_gerar.Enabled := True;
End;

Procedure TFrm_defineCjunto16.bbt_PrepararVoltarClick(Sender: TObject);
Begin
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
End;

Procedure TFrm_defineCjunto16.bt_gerarClick(Sender: TObject);
Begin
   pa_menuGerar_20p11.Left := 680;
   pa_menuGerar_20p11.Top := 190;
   // pa_menuGerar_20p11.Height := 286;
   ckbx_GerarCompleto.Checked := False;
   bbt_gerarOk.Repaint;
   bbt_gerarVoltar.Repaint;
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := True;
   pa_menuGerar_20p11.Repaint;
End;

Procedure TFrm_defineCjunto16.bbt_gerarOkClick(Sender: TObject);
Var
   vsQuery: String;
Begin
   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' + TimeToStr(Time);
   GerarComb12;
   vsQuery := 'fim deste processamento - por enquanto';

   LA_gFIM_GERAR.Caption := DateToStr(Date) + ' - ' + TimeToStr(Time);
   LA_rQTD_COMB.Caption := (Stgr_bloco12.RowCount - 1).ToString;
   // vsQuery := vsQuery + 'select count(ORIGEM ||GRUPO ||DADOS_12) as QTD ';
   // vsQuery := vsQuery + 'from CJTO_16_DEF';
   // Self.Ibq_COMBINACOES.SQL.Clear;
   // Self.Ibq_COMBINACOES.SQL.Add(vsQuery);
   // Self.Ibq_COMBINACOES.Prepare;
   // Self.Ibq_COMBINACOES.Open;
   // La_total100Repetidos.Caption := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsString;
   pa_fimAnalisador.Visible := True;
   pa_fimAnalisador.Left := 690;
   showmessage(vsQuery);
End;

procedure TFrm_defineCjunto16.Rb_gerarComb7GeralClick(Sender: TObject);
begin
   pa_GerarComb7_Geral.Enabled := True;
   pa_GerarComb7_Geral.Font.Size := 11;
   pa_GerarComb7_Geral.Font.Style := [];
   pa_GerarComb7_Geral.Font.Color := clBlack;
   pa_GerarComb7_Geral.BorderStyle := bsSingle;
   cb_CombinacoesPara7Geral.ItemIndex := 0;
   pa_geraCom7Personalizado.Enabled := False;
   pa_geraCom7Personalizado.Font.Size := 9;
   pa_geraCom7Personalizado.Font.Style := [fsItalic];
   pa_geraCom7Personalizado.Font.Color := clSilver;
   pa_geraCom7Personalizado.BorderStyle := bsNone;
   cb_CombinacoesPara7PersonalL01.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL02.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL03.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL04.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL05.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL06.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL07.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL08.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL09.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL10.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL11.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL12.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL13.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL14.ItemIndex := 0;
   cb_CombinacoesPara7PersonalL15.ItemIndex := 0;
   try
      cb_CombinacoesPara7Geral.SetFocus;
   except
      //
   end;
end;

procedure TFrm_defineCjunto16.Rb_gerarComb7PersonalizadoClick(Sender: TObject);
begin
   pa_GerarComb7_Geral.Enabled := False;
   pa_GerarComb7_Geral.Font.Size := 9;
   pa_GerarComb7_Geral.Font.Style := [fsItalic];
   pa_GerarComb7_Geral.Font.Color := clSilver;
   pa_GerarComb7_Geral.BorderStyle := bsNone;
   cb_CombinacoesPara7Geral.ItemIndex := 0;
   pa_geraCom7Personalizado.Enabled := True;
   pa_geraCom7Personalizado.Font.Size := 11;
   pa_geraCom7Personalizado.Font.Style := [];
   pa_geraCom7Personalizado.Font.Color := clBlack;
   pa_geraCom7Personalizado.BorderStyle := bsSingle;
   try
      pa_geraCom7Personalizado.SetFocus;
   except
      //
   end;

end;

Procedure TFrm_defineCjunto16.ReconstroiTela;
Begin
   Frm_defineCjunto16.WindowState := wsMinimized;
   Frm_defineCjunto16.WindowState := wsNormal;
   pgc_AbasPrincipais.Repaint;
   pa_BarraLateral.Repaint;
   pa_Gerador6cj20p11.Repaint;
   sleep(95);
End;

Procedure TFrm_defineCjunto16.GerarComb12();
Var
   viLinhas, viContadorBase, viComb1, viComb2, viContarColunas, ViContarCelulas, viLinhasMemo: integer;
   vsiGrupo: Smallint;
Begin
   viLinhas := 1;
   viLinhasMemo := 1;
   For viContadorBase := 1 To Memo_base16.Lines.Count - 1 Do
   Begin
      For viComb1 := 1 To 3 Do
      Begin
         For viComb2 := viComb1 + 1 To 4 Do
         Begin
            For vsiGrupo := 0 To 1 Do
            Begin
               Stgr_bloco12.Cells[00, viLinhas + vsiGrupo * 6] := (viLinhas + vsiGrupo * 6).ToString;
               Stgr_bloco12.Cells[01, viLinhas + vsiGrupo * 6] := RIGHTSTR('0' + viContadorBase.ToString, 2);
               If vsiGrupo = 0 Then
                  Stgr_bloco12.Cells[02, viLinhas + vsiGrupo * 6] := 'Grupo 1 '
               Else
                  Stgr_bloco12.Cells[02, viLinhas + vsiGrupo * 6] := 'Grupo:2 ';
               Stgr_bloco12.Cells[15, viLinhas + vsiGrupo * 6] := (viComb1 + (vsiGrupo * 4)).ToString + ' / '
                 + (viComb2 + (vsiGrupo * 4)).ToString;
               Stgr_blocoSobra.Cells[00, viLinhas + vsiGrupo * 6] := (viLinhas + vsiGrupo * 6).ToString;
               Case copy((Memo_base16.Lines.Strings[viContadorBase]), 1, 2).ToInteger Of
                  1:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha01.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);

                        // Stgr_bloco12.Cells[02, viLinhas + vsiGrupo] := ' g2 ';
                        // Stgr_bloco12.Cells[03, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),04,2);
                        // Stgr_bloco12.Cells[04, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),07,2);
                        // Stgr_bloco12.Cells[05, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),10,2);
                        // Stgr_bloco12.Cells[06, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),13,2);
                        // Stgr_bloco12.Cells[07, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),16,2);
                        // Stgr_bloco12.Cells[08, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb1+4]),19,2);
                        //
                        // Stgr_bloco12.Cells[09, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),04,2);
                        // Stgr_bloco12.Cells[10, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),07,2);
                        // Stgr_bloco12.Cells[11, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),10,2);
                        // Stgr_bloco12.Cells[12, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),13,2);
                        // Stgr_bloco12.Cells[13, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),16,2);
                        // Stgr_bloco12.Cells[14, viLinhas + vsiGrupo] := Copy((Memo_serie8Linha01.Lines.Strings[viComb2+(vsiGrupo*4)+4]),19,2);
                     End;
                  2:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_serie8Linha02.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  3:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha03.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  4:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha04.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  5:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha05.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  6:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha06.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  7:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha07.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  8:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha08.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  9:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha09.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  10:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha10.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  11:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha11.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  12:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha12.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  13:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha13.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  14:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha14.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
                  15:
                     Begin
                        Stgr_bloco12.Cells[03, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[04, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[05, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[06, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[07, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[08, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb1 + (vsiGrupo * 4)]), 19, 2);

                        Stgr_bloco12.Cells[09, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 04, 2);
                        Stgr_bloco12.Cells[10, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 07, 2);
                        Stgr_bloco12.Cells[11, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 10, 2);
                        Stgr_bloco12.Cells[12, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 13, 2);
                        Stgr_bloco12.Cells[13, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 16, 2);
                        Stgr_bloco12.Cells[14, viLinhas + vsiGrupo * 6] :=
                          copy((Memo_seri8Linha15.Lines.Strings[viComb2 + (vsiGrupo * 4)]), 19, 2);
                     End;
               End; // Case
               // Falso_Linha1TodosNumeros;
               // for viContarColunas := 03 to 14 do
               // begin
               // Stgr_Todos_Numeros.Cells[STRtoINT(Stgr_bloco12.Cells[viContarColunas,viLinhas + vsiGrupo*6]),1] := 'V';
               // end;
               // for viContarColunas := 11 to 14 do
               // begin
               // Stgr_bloco12.Cells[viContarColunas,viLinhas + vsiGrupo] := '00';
               // end;
               // ViContarCelulas := 1;
               // FOR viContarColunas :=1 TO 25 DO
               // BEGIN
               // IF (Stgr_Todos_Numeros.Cells[viContarColunas,1]='V') THEN
               // BEGIN
               // Stgr_bloco12.Cells [ViContarCelulas+2, viLinhas + vsiGrupo*6] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContarColunas,0]),2) ;
               // ViContarCelulas := ViContarCelulas+1;
               // END; // IF (STRGR_TODOS_NUMEROS
               // END; // FOR viContarColunas

               Falso_Linha1TodosNumeros;
               Falso_Linha2TodosNumeros;
               For viContarColunas := 01 To 16 Do
               Begin
                  Stgr_Todos_Numeros.Cells[STRtoINT(copy((Memo_base16.Lines.Strings[viContadorBase]),
                    viContarColunas * 3 + 1, 2)), 1] := 'V';
               End;
               For viContarColunas := 03 To 14 Do
               Begin
                  Stgr_Todos_Numeros.Cells
                    [STRtoINT(Stgr_bloco12.Cells[viContarColunas, viLinhas + vsiGrupo * 6]), 2] := 'V';
               End;
               For viContarColunas := 5 To 6 Do
               Begin
                  Stgr_blocoSobra.Cells[viContarColunas, viLinhas + vsiGrupo * 6] := '';
               End;
               ViContarCelulas := 1;
               FOR viContarColunas := 1 TO 25 DO
               BEGIN
                  IF (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') And
                    (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'F') THEN
                  BEGIN
                     Stgr_blocoSobra.Cells[ViContarCelulas, viLinhas + vsiGrupo * 6] :=
                       RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
                     ViContarCelulas := ViContarCelulas + 1;
                  END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR viContarColunas
            End;
            viLinhas := viLinhas + 1;
         End;
      End;
      viLinhas := viLinhas + 6;
      Stgr_bloco12.RowCount := viLinhas;
      Stgr_blocoSobra.RowCount := viLinhas;
   End;
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

Procedure TFrm_defineCjunto16.bbt_gerarVoltarClick(Sender: TObject);
Begin
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := False;
   pa_menuGerar_20p11.Repaint;
End;

// ===================================================================
Procedure TFrm_defineCjunto16.Zerar_FLAGTodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.ToString;
      Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
      Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
      Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
   End;
End;

Procedure TFrm_defineCjunto16.Falso_Linha1TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
   End;
End;

Procedure TFrm_defineCjunto16.Falso_Linha2TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
   End;
End;

Procedure TFrm_defineCjunto16.Falso_Linha3TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
   End;
End;

Function TFrm_defineCjunto16.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
Begin
   If Expressao Then
      Result := ParteTRUE
   Else
      Result := ParteFALSE;
End;

Procedure TFrm_defineCjunto16.PreenchimentoInicialPadrao;
Var
   viContar: integer;
Begin
   Zerar_FLAGTodosNumeros();
   Stgr_bloco12.ColWidths[02] := 66;
   Stgr_bloco12.ColWidths[15] := 40;
   Stgr_bloco12.Height := ScrollBox_resultado.Height - 35;
   Stgr_bloco12.Repaint;
   Stgr_blocoSobra.Height := ScrollBox_resultado.Height - 35;
   Stgr_blocoSobra.Repaint;

   stgr_Linha1Comb7.Height := ScrollBox_resultado.Height - 35;
   stgr_Linha1Comb7.Repaint;
   stgr_Linha2Comb7.Height := ScrollBox_resultado.Height - 35;
   stgr_Linha2Comb7.Repaint;
   stgr_Linha3Comb7.Height := ScrollBox_resultado.Height - 35;
   stgr_Linha3Comb7.Repaint;
   stgr_combinacoes7Primeira.ColWidths[00] := 55;
   stgr_combinacoes7Primeira.Height := ScrollBox_resultado.Height - 35;
   stgr_combinacoes7Primeira.Repaint;
   stgr_combinacoes7Segunda.ColWidths[00] := 55;
   stgr_combinacoes7Segunda.Height := ScrollBox_resultado.Height - 35;
   stgr_combinacoes7Segunda.Repaint;
   stgr_combinacoes7Coincidencias.ColWidths[00] := 50;
   stgr_combinacoes7Coincidencias.ColWidths[01] := 50;
   stgr_combinacoes7Coincidencias.Height := ScrollBox_resultado.Height - 35;
   stgr_combinacoes7Coincidencias.Repaint;
End;

End.
