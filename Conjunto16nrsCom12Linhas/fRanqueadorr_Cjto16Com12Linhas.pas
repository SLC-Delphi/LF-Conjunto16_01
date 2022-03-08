unit fRanqueadorr_Cjto16Com12Linhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Data.DB, STRUtils, Math,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_Ranqueador16Com12Linhas = class(TForm)
    IBQ_COMBINACOES: TIBQuery;
    Ds_E_SORTEIO_15N: TDataSource;
    Ibq_E_SORTEIO_15N: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Scbx_GABARITO: TScrollBox;
    La_nSorteioRank: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label54: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label_qtdSorteios: TLabel;
    Label2: TLabel;
    Stgr_Base09: TStringGrid;
    Stgr_Base16: TStringGrid;
    Stgr_Estatisticas: TStringGrid;
    Stgr_Sorteios: TStringGrid;
    Stgr_EstatisticasOcorrencias: TStringGrid;
    Stgr_EstatisticasSorteiosAtrasados: TStringGrid;
    Stgr_EstatisticasOcorrencias13: TStringGrid;
    Stgr_EstatisticasSorteiosAtrasados13: TStringGrid;
    Stgr_Estatisticas13: TStringGrid;
    Stgr_Base17VF: TStringGrid;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_TodosNumerosP17: TStringGrid;
    stgr_excluiFixar_BaseL4Ac4: TStringGrid;
    stgr_excluiFixar_BaseL4Ac3: TStringGrid;
    stgr_excluiFixar_BaseL4Ac2: TStringGrid;
    stgr_excluiFixar_BaseL5Ac3: TStringGrid;
    stgr_excluiFixar_BaseL5Ac2: TStringGrid;
    stgr_excluiFixar_BaseL5Ac1: TStringGrid;
    Bbt_rank: TBitBtn;
    Bbt_carregarSorteio15N: TBitBtn;
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
    Panel6: TPanel;
    Panel7: TPanel;
    ScrollBox1: TScrollBox;
    memoConjunto16: TMemo;
    Panel8: TPanel;
    scrollBox_Resultado: TScrollBox;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    stgr_ac8em9: TStringGrid;
    pa_barraLateralComb7: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button_prepararComb7: TButton;
    btnGerarCombPara7: TButton;
    memoConjunto09: TMemo;
    Memo_conjunto04: TMemo;
    stgr_ac1em9: TStringGrid;
    stgr_ac7em16: TStringGrid;
    procedure Bbt_CarregarSort(Sender: TObject);
    procedure Bbt_rankClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGerarCombPara7Click(Sender: TObject);
    procedure Button_prepararComb7Click(Sender: TObject);
  private
    { Private declarations }
      vcrDivisor1, vcrDivisor2, vcrDivisor3: Currency;
      vaiRankProcessar1: Array [1 .. 10] Of integer;
      vaiRankProcessar2: Array [1 .. 10] Of integer;
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros();
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
    procedure ac8em9;
    procedure ac7em16;
  public
    { Public declarations }
  end;

var
  frm_Ranqueador16Com12Linhas: Tfrm_Ranqueador16Com12Linhas;

implementation

uses
  System.Generics.Collections, System.SysUtils;

{$R *.dfm}

procedure Tfrm_Ranqueador16Com12Linhas.FormCreate(Sender: TObject);
begin
   SELF.ClientWidth := 1435;
   SELF.ClientHeight := 600;
   SELF.Top := 57;
   SELF.Left := 6;
   // SELF.Visible := TRUE;
   Zerar_FLAGTodosNumeros;
   PreenchimentoInicialPadrao;
end;


Procedure Tfrm_Ranqueador16Com12Linhas.Bbt_CarregarSort(Sender: TObject);
VAR
   viContar1: integer;
Begin
   Ibq_E_SORTEIO_15N.Close;
   Ibq_E_SORTEIO_15N.Prepare;
   Ibq_E_SORTEIO_15N.Open;
   Ibq_E_SORTEIO_15N.First;
   viContar1 := 1;
   While NOT(Ibq_E_SORTEIO_15N.Eof) Do
   Begin
      Stgr_Sorteios.Cells[0, viContar1] := Ibq_E_SORTEIO_15N.FieldByName('N_SORTEIO').AsString;
      Stgr_Sorteios.Cells[1, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S01').AsString, 2);
      Stgr_Sorteios.Cells[2, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S02').AsString, 2);
      Stgr_Sorteios.Cells[3, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S03').AsString, 2);
      Stgr_Sorteios.Cells[4, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S04').AsString, 2);
      Stgr_Sorteios.Cells[5, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S05').AsString, 2);
      Stgr_Sorteios.Cells[6, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S06').AsString, 2);
      Stgr_Sorteios.Cells[7, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S07').AsString, 2);
      Stgr_Sorteios.Cells[8, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S08').AsString, 2);
      Stgr_Sorteios.Cells[9, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S09').AsString, 2);
      Stgr_Sorteios.Cells[10, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S10').AsString, 2);
      Stgr_Sorteios.Cells[11, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S11').AsString, 2);
      Stgr_Sorteios.Cells[12, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S12').AsString, 2);
      Stgr_Sorteios.Cells[13, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S13').AsString, 2);
      Stgr_Sorteios.Cells[14, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S14').AsString, 2);
      Stgr_Sorteios.Cells[15, viContar1] := RightStr('0' + Ibq_E_SORTEIO_15N.FieldByName('S15').AsString, 2);
      Stgr_Sorteios.Cells[16, viContar1] := '';
      Stgr_Sorteios.Cells[17, viContar1] := '+0';
      Stgr_Sorteios.Cells[18, viContar1] := '+0';
      Ibq_E_SORTEIO_15N.Next;
      viContar1 := viContar1 + 1;
   End;
   Stgr_Sorteios.RowCount := viContar1;
   Label_qtdSorteios.Caption := (viContar1-1).toString;
   ShowMessage('Ok');
End;


procedure Tfrm_Ranqueador16Com12Linhas.Bbt_rankClick(Sender: TObject);
var
   viContar16Combinacoes,viContarSorteios, viValorDasCoicidencias, viContarCelulas : integer;
   li_QtdOcorrencias07, li_QtdAtrasados07 : Tlist<String>;
   li_QtdOcorrencias08Base09, li_QtdAtrasados08Base09 : Tlist<String>;
   viUltimoSorteio07, vdbQtdOcorrencias07, vdbPercentualOcorrencias07 : Double;
   viUltimoSorteio08Base09, vdbQtdOcorrencias08Base09, vdbPercentualOcorrencias08Base09 : Double;
   vsAtrasados : String;
begin
   li_QtdOcorrencias07 := Tlist<String>.Create;
   li_QtdAtrasados07 := Tlist<String>.Create;
   li_QtdOcorrencias08Base09 := Tlist<String>.Create;
   li_QtdAtrasados08Base09 := Tlist<String>.Create;
   li_QtdOcorrencias07.Clear;
   li_QtdAtrasados07.Clear;
   for viContar16Combinacoes := 1 to Trunc((Stgr_Base16.RowCount-1)/1) do
   begin
      Stgr_Sorteios.Cells[17, 0] := viContar16Combinacoes.ToString;
      Stgr_Sorteios.Repaint;
      // --> Montar Flags com as combinações
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 17 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base16.Cells[viContarCelulas,viContar16Combinacoes])) ,1]:='V';
      end;
      vdbQtdOcorrencias07 :=0;
      vdbQtdOcorrencias08Base09 :=0;
      for viContarSorteios := 1 to Trunc((Stgr_Sorteios.RowCount-1)/1) do
      begin
         // --> Montar Flags com os sorteios
         Falso_Linha2TodosNumeros();
         FOR viContarCelulas := 1 TO 15 DO
         begin
            Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Sorteios.Cells[viContarCelulas,viContarSorteios])) ,2]:='V';
         end;
         viValorDasCoicidencias  := 0;
         FOR viContarCelulas := 1 TO 25 DO
         Begin
            If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = 'V' Then
               If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = Stgr_Todos_Numeros.Cells[viContarCelulas, 2] Then
                  viValorDasCoicidencias := viValorDasCoicidencias + 1;
            Stgr_Sorteios.Cells[17, viContarSorteios] := viValorDasCoicidencias.ToString;
         End;
         if viValorDasCoicidencias = 7 then
         begin
            vdbQtdOcorrencias07 := vdbQtdOcorrencias07 + 1;
            viUltimoSorteio07 := viContarSorteios;
         end ;
      end;
      // --> Estatisticas 07
      vdbPercentualOcorrencias07 := RoundTo((vdbQtdOcorrencias07 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas.Cells[0,viContar16Combinacoes] := viContar16Combinacoes.ToString;
      Stgr_Estatisticas.Cells[1,viContar16Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias07.ToString),5);
      Stgr_Estatisticas.Cells[2,viContar16Combinacoes] := vdbPercentualOcorrencias07.ToString+'%';
      li_QtdOcorrencias07.add( RightStr('0000'+(vdbQtdOcorrencias07.ToString),5) + ' equivalente a '
         +LeftStr((vdbPercentualOcorrencias07.ToString)+'00000',5)  + '% com média de: 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,-4)).ToString
         + ' na LINHA: '  + RightStr('0'+viContar16Combinacoes.ToString,2));
      Stgr_Estatisticas.Cells[3,viContar16Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,-4)).ToString;
      Stgr_Estatisticas.Cells[4,viContar16Combinacoes] := viUltimoSorteio07.ToString;
      Stgr_Estatisticas.Cells[5,viContar16Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio07).ToString,3);
      if (((Stgr_Sorteios.RowCount-1) - viUltimoSorteio07) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ) >= 0 then
      begin
         vsAtrasados := RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio07) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ).ToString,3) + ' concursos atrasados' ;
      end
      else
      begin
         vsAtrasados := '.faltam '+StringReplace(RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio07) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ).ToString,3),'-','',[]) +' para 1 atraso';
      end;
      li_QtdAtrasados07.Add( vsAtrasados  +
         ' na linha '
         + RightStr('0'+viContar16Combinacoes.ToString,2) +
         ' no sorteio '+ (viUltimoSorteio07 + (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ).ToString
         );
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 10 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base09.Cells[viContarCelulas,viContar16Combinacoes])) ,1]:='V';
      end;
      for viContarSorteios := 1 to Trunc((Stgr_Sorteios.RowCount-1)/1) do
      begin
         // --> Montar Flags com os sorteios
         Falso_Linha2TodosNumeros();
         FOR viContarCelulas := 1 TO 15 DO
         begin
            Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Sorteios.Cells[viContarCelulas,viContarSorteios])) ,2]:='V';
         end;
         viValorDasCoicidencias  := 0;
         FOR viContarCelulas := 1 TO 25 DO
         Begin
            If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = 'V' Then
               If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = Stgr_Todos_Numeros.Cells[viContarCelulas, 2] Then
                  viValorDasCoicidencias := viValorDasCoicidencias + 1;
            Stgr_Sorteios.Cells[18, viContarSorteios] := viValorDasCoicidencias.ToString;
         End;
         if viValorDasCoicidencias = 08 then
         begin
            vdbQtdOcorrencias08Base09 := vdbQtdOcorrencias08Base09 + 1;
            viUltimoSorteio08Base09 := viContarSorteios;
         end;
      end;
      // --> Estatísticas 08
      // --> Montar Flags com as combinações
    vdbPercentualOcorrencias08Base09 := RoundTo((vdbQtdOcorrencias08Base09 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas13.Cells[0,viContar16Combinacoes] := viContar16Combinacoes.ToString;
      Stgr_Estatisticas13.Cells[1,viContar16Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias08Base09.ToString),5);
      Stgr_Estatisticas13.Cells[2,viContar16Combinacoes] := vdbPercentualOcorrencias08Base09.ToString+'%';
      li_QtdOcorrencias08Base09.add( RightStr('0000'+(vdbQtdOcorrencias08Base09.ToString),5) + ' equivalente a '
         +LeftStr((vdbPercentualOcorrencias08Base09.ToString)+'00000',5)  + '% com média de: 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,-4)).ToString
         + ' na LINHA: '  + RightStr('0'+viContar16Combinacoes.ToString,2));
      Stgr_Estatisticas13.Cells[3,viContar16Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,-4)).ToString;
      Stgr_Estatisticas13.Cells[4,viContar16Combinacoes] := viUltimoSorteio08Base09.ToString;
      Stgr_Estatisticas13.Cells[5,viContar16Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio08Base09).ToString,3);

      if (((Stgr_Sorteios.RowCount-1) - viUltimoSorteio08Base09) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0)) ) >= 0 then
      begin
         vsAtrasados := RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio08Base09) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0)) ).ToString,3)+ ' concursos atrasados' ;
      end
      else
      begin
         vsAtrasados := '.faltam '+StringReplace(RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio08Base09) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0)) ).ToString,3),'-','',[])+ ' para 1 atraso' ;
      end;
      li_QtdAtrasados08Base09.Add(vsAtrasados  +
         ' na linha '  + RightStr('0'+viContar16Combinacoes.ToString,2) +
         ' no sorteio '+ (viUltimoSorteio08Base09 +(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0))  ).ToString
         );
      Self.Repaint;
      Scbx_GABARITO.Repaint;
      Stgr_Estatisticas.Repaint;
      Stgr_Sorteios.Repaint;
   end;
   La_NSorteioRank.Caption := 'Número de sorteios apurados:  ';
   li_QtdOcorrencias07.Sort;
   li_QtdAtrasados07.Sort;
   li_QtdOcorrencias08Base09.Sort;
   li_QtdAtrasados08Base09.Sort;
   for viContar16Combinacoes := (Stgr_Base16.RowCount-1) downto 1 do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] := li_QtdOcorrencias07[viContar16Combinacoes-1];
      Stgr_EstatisticasOcorrencias13.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] := li_QtdOcorrencias08Base09[viContar16Combinacoes-1];
   end;
   for viContar16Combinacoes := (Stgr_Base16.RowCount-1) downto 1 do
   begin
      if copy(li_QtdAtrasados07[viContar16Combinacoes-1],1,1) <> '.' then
         Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] :=  li_QtdAtrasados07[viContar16Combinacoes-1]
      else
      begin
         viContarCelulas := Stgr_Base16.RowCount-viContar16Combinacoes;
         Break;
      end;
   end;
   for viContar16Combinacoes := 1 to (Stgr_Base16.RowCount-1) do
   begin
      if copy(li_QtdAtrasados07[viContar16Combinacoes-1],1,1) = '.' then
      begin
         Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContarCelulas] :=  li_QtdAtrasados07[viContar16Combinacoes-1];
         viContarCelulas := viContarCelulas + 1;
      end;
   end;

   for viContar16Combinacoes := (Stgr_Base16.RowCount-1) downto 1 do
   begin
      if copy(li_QtdAtrasados08Base09[viContar16Combinacoes-1],1,1) <> '.' then
         Stgr_EstatisticasSorteiosAtrasados13.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] :=  li_QtdAtrasados08Base09[viContar16Combinacoes-1]
      else
      begin
         viContarCelulas := Stgr_Base16.RowCount-viContar16Combinacoes;
         Break;
      end;
   end;
   for viContar16Combinacoes := 1 to (Stgr_Base16.RowCount-1) do
   begin
      if copy(li_QtdAtrasados08Base09[viContar16Combinacoes-1],1,1) = '.' then
      begin
         Stgr_EstatisticasSorteiosAtrasados13.Cells[0, viContarCelulas] :=  li_QtdAtrasados08Base09[viContar16Combinacoes-1];
         viContarCelulas := viContarCelulas + 1;
      end;
   end;
   ShowMessage(viContarCelulas.ToString());
//   for viContarCelulas := 1 to 5 do
//   begin
//      vaiRankProcessar1 [viContarCelulas] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, viContarCelulas],2).ToInteger;
//      vaiRankProcessar1 [viContarCelulas+5] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContarCelulas],2).ToInteger;
//   end;
//   vaiRankProcessar2 [1] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 1],2).ToInteger;
//   vaiRankProcessar2 [2] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 2],2).ToInteger;
//   vaiRankProcessar2 [3] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 25],2).ToInteger;
//   vaiRankProcessar2 [4] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 1],2).ToInteger;
//   vaiRankProcessar2 [5] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 2],2).ToInteger;
//   vaiRankProcessar2 [6] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 25],2).ToInteger;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base16.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base16.RowCount;
   Stgr_EstatisticasOcorrencias13.RowCount := Stgr_Base16.RowCount;
   Stgr_EstatisticasSorteiosAtrasados13.RowCount := Stgr_Base16.RowCount;
//   Stgr_EstatisticasOcorrencias[0,viContar16Combinacoes] :=
//   Stgr_EstatisticasSorteiosAtrasados[0,viContar16Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias13.Repaint;
   Stgr_EstatisticasSorteiosAtrasados13.Repaint;
   Showmessage('Fim do Rank');
   li_QtdOcorrencias07.DisposeOf;
   li_QtdAtrasados07.DisposeOf;
   li_QtdOcorrencias08Base09.DisposeOf;
   li_QtdAtrasados08Base09.DisposeOf;
end;




procedure Tfrm_Ranqueador16Com12Linhas.btnGerarCombPara7Click(Sender: TObject);
begin
   ac8em9;
   ac7em16;
end;


procedure Tfrm_Ranqueador16Com12Linhas.Button_prepararComb7Click(Sender: TObject);
begin
   sleep(1000);
   btnGerarCombPara7.Enabled := True;
end;


procedure Tfrm_Ranqueador16Com12Linhas.ac8em9();
var
   viContadorBase, viComb01 : integer;
   viLinhas, viNumero, viContarColunas, viContarCelulas : integer;
begin
   viLinhas := 1;
   for viContadorBase := 1 To 20 Do
   Begin
      For viComb01 := 1 To 9 Do
      Begin
         Falso_Linha1TodosNumeros;
         For viContarColunas := 1 To 9 Do
         Begin
            if viContarColunas = viComb01 then
            begin
               stgr_ac1em9.Cells[02, viLinhas] := copy((memoConjunto09.Lines.Strings[viContadorBase]), viContarColunas * 3 + 1, 2);
               continue;
            end;
            viNumero := STRtoINT(copy((memoConjunto09.Lines.Strings[viContadorBase]), viContarColunas * 3 + 1, 2));
            Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';

         End;
         viContarCelulas := 1;
         For viContarColunas := 1 To 25 Do
         Begin
            If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') Then
            Begin
               stgr_ac8em9.Cells[viContarCelulas+1, viLinhas] := RightStr('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
               viContarCelulas := viContarCelulas + 1;
            End;
         End;
//         If viContarCelulas <> 9 Then
//            Continue;
         // FOR viContarColunas
         stgr_ac8em9.Cells[00, viLinhas] :=  viLinhas.ToString;
         stgr_ac8em9.Cells[01, viLinhas] := viContadorBase.ToString;
         stgr_ac1em9.Cells[00, viLinhas] :=  viLinhas.ToString;
         stgr_ac1em9.Cells[01, viLinhas] := viContadorBase.ToString;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_ac8em9.RowCount := viLinhas;
   stgr_ac1em9.RowCount := viLinhas;
   stgr_ac8em9.Repaint;
   stgr_ac1em9.Repaint;
End;



procedure Tfrm_Ranqueador16Com12Linhas.ac7em16();
var
   viContadorBase, viComb01, viComb02, viComb03, viComb04, viComb05, viComb06, viComb07 : integer;
   viLinhas, viContarColunas, viContarCelulas, viNumero : integer;
begin
   viLinhas := 1;
   for viContadorBase := 1 To 20 Do
   Begin
      For viComb01 := 1 To 10 Do
      Begin
         For viComb02 := viComb01+1 To 11 Do
         Begin
            For viComb03 := viComb02+1 To 12 Do
            Begin
               For viComb04 := viComb03+1 To 13 Do
               Begin
                  For viComb05 := viComb04+1 To 14 Do
                  Begin
                     For viComb06 := viComb05+1 To 15 Do
                     Begin
                        For viComb07 := viComb06+1 To 16 Do
                        Begin
                           stgr_ac7em16.Cells[02, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb01 * 3 + 1, 2);
                           stgr_ac7em16.Cells[03, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb02 * 3 + 1, 2);
                           stgr_ac7em16.Cells[04, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb03 * 3 + 1, 2);
                           stgr_ac7em16.Cells[05, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb04 * 3 + 1, 2);
                           stgr_ac7em16.Cells[06, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb05 * 3 + 1, 2);
                           stgr_ac7em16.Cells[07, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb06 * 3 + 1, 2);
                           stgr_ac7em16.Cells[08, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb07 * 3 + 1, 2);
                           Falso_Linha1TodosNumeros;
                           For viContarColunas := 2 To 08 Do
                           Begin
                              viNumero := STRtoINT(stgr_ac7em16.Cells[viContarColunas, viLinhas]);
                              Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';
                           End;
                           viContarCelulas := 1;
                           For viContarColunas := 1 To 25 Do
                           Begin
                              If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') Then
                              Begin
                                 stgr_ac7em16.Cells[viContarCelulas+1, viLinhas] := RightStr('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
                                 viContarCelulas := viContarCelulas + 1;
                              End;
                           End;
                           stgr_ac7em16.Cells[00, 0] :=  viContadorBase.ToString;
                           stgr_ac7em16.Cells[00, viLinhas] :=  viLinhas.ToString;
                           stgr_ac7em16.Cells[01, viLinhas] := viContadorBase.ToString;
//                           stgr_ac1em9.Cells[00, viLinhas] :=  viLinhas.ToString;
//                           stgr_ac1em9.Cells[01, viLinhas] := viContadorBase.ToString;
                           viLinhas := viLinhas + 1;
                        End;
                     end;
                  end;
               end;
            end;
         end;
         stgr_ac7em16.RowCount := viLinhas;
         stgr_ac7em16.Repaint;
      End;
   End;
   stgr_ac7em16.RowCount := viLinhas;
End;



procedure Tfrm_Ranqueador16Com12Linhas.Zerar_FLAGTodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.ToString;
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;


procedure Tfrm_Ranqueador16Com12Linhas.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure Tfrm_Ranqueador16Com12Linhas.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;



Procedure Tfrm_Ranqueador16Com12Linhas.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 17 do
   begin
      Stgr_Base16.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   for viContar := 2 to 10 do
   begin
      Stgr_Base09.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   for viContar := 1 to 49 Do
   begin
      Stgr_Base17VF.Cells[0, viContar] := INTtoSTR(viContar);
      Stgr_Base17VF.Cells[1, viContar] := 'V';
   end;
   //01
   Stgr_Base16.Cells[0, 1] := '01';
   Stgr_Base16.Cells[1, 1] := 'V';
   Stgr_Base16.Cells[2, 1] := '01';
   Stgr_Base16.Cells[3, 1] := '02';
   Stgr_Base16.Cells[4, 1] := '05';
   Stgr_Base16.Cells[5, 1] := '07';
   Stgr_Base16.Cells[6, 1] := '08';
   Stgr_Base16.Cells[7, 1] := '10';
   Stgr_Base16.Cells[8, 1] := '11';
   Stgr_Base16.Cells[9, 1] := '12';
   Stgr_Base16.Cells[10, 1] := '14';
   Stgr_Base16.Cells[11, 1] := '15';
   Stgr_Base16.Cells[12, 1] := '16';
   Stgr_Base16.Cells[13, 1] := '18';
   Stgr_Base16.Cells[14, 1] := '20';
   Stgr_Base16.Cells[15, 1] := '21';
   Stgr_Base16.Cells[16, 1] := '23';
   Stgr_Base16.Cells[17, 1] := '25';
     Stgr_Base09.Cells[0, 1] := '01';
   Stgr_Base09.Cells[1, 1] := 'V';
   Stgr_Base09.Cells[2, 1] := '03';
   Stgr_Base09.Cells[3, 1] := '04';
   Stgr_Base09.Cells[4, 1] := '06';
   Stgr_Base09.Cells[5, 1] := '09';
   Stgr_Base09.Cells[6, 1] := '13';
   Stgr_Base09.Cells[7, 1] := '17';
   Stgr_Base09.Cells[8, 1] := '19';
   Stgr_Base09.Cells[9, 1] := '22';
   Stgr_Base09.Cells[10, 1] := '24';
  //02
   Stgr_Base16.Cells[0, 2] := '02';
   Stgr_Base16.Cells[1, 2] := 'V';
   Stgr_Base16.Cells[2, 2] := '02';        Stgr_Base16.Cells[3, 2] := '03';
   Stgr_Base16.Cells[4, 2] := '04';        Stgr_Base16.Cells[5, 2] := '05';
   Stgr_Base16.Cells[6, 2] := '06';        Stgr_Base16.Cells[7, 2] := '08';
   Stgr_Base16.Cells[8, 2] := '11';        Stgr_Base16.Cells[9, 2] := '12';
   Stgr_Base16.Cells[10, 2] := '15';       Stgr_Base16.Cells[11, 2] := '16';
   Stgr_Base16.Cells[12, 2] := '17';       Stgr_Base16.Cells[13, 2] := '18';
   Stgr_Base16.Cells[14, 2] := '21';       Stgr_Base16.Cells[15, 2] := '22';
   Stgr_Base16.Cells[16, 2] := '23';       Stgr_Base16.Cells[17, 2] := '25';
      Stgr_Base09.Cells[0, 2] := '02';
   Stgr_Base09.Cells[1, 2] := 'V';
   Stgr_Base09.Cells[2, 2] := '01';
   Stgr_Base09.Cells[3, 2] := '07';
   Stgr_Base09.Cells[4, 2] := '09';
   Stgr_Base09.Cells[5, 2] := '10';
   Stgr_Base09.Cells[6, 2] := '13';
   Stgr_Base09.Cells[7, 2] := '14';
   Stgr_Base09.Cells[8, 2] := '19';
   Stgr_Base09.Cells[9, 2] := '20';
   Stgr_Base09.Cells[10, 2] := '24';
  //03
   Stgr_Base16.Cells[0, 3] := '03';
   Stgr_Base16.Cells[1, 3] := 'V';
   Stgr_Base16.Cells[2, 3]  := '01';
   Stgr_Base16.Cells[3, 3]  := '03';
   Stgr_Base16.Cells[4, 3]  := '05';
   Stgr_Base16.Cells[5, 3]  := '06';
   Stgr_Base16.Cells[6, 3]  := '10';
   Stgr_Base16.Cells[7, 3]  := '11';
   Stgr_Base16.Cells[8, 3]  := '12';
   Stgr_Base16.Cells[9, 3]  := '13';
   Stgr_Base16.Cells[10, 3] := '14';
   Stgr_Base16.Cells[11, 3] := '16';
   Stgr_Base16.Cells[12, 3] := '17';
   Stgr_Base16.Cells[13, 3] := '18';
   Stgr_Base16.Cells[14, 3] := '19';
   Stgr_Base16.Cells[15, 3] := '20';
   Stgr_Base16.Cells[16, 3] := '21';
   Stgr_Base16.Cells[17, 3] := '22';
   Stgr_Base09.Cells[0, 3] := '03';
   Stgr_Base09.Cells[1, 3] := 'V';
   Stgr_Base09.Cells[2, 3] := '02';
   Stgr_Base09.Cells[3, 3] := '04';
   Stgr_Base09.Cells[4, 3] := '07';
   Stgr_Base09.Cells[5, 3] := '08';
   Stgr_Base09.Cells[6, 3] := '09';
   Stgr_Base09.Cells[7, 3] := '15';
   Stgr_Base09.Cells[8, 3] := '23';
   Stgr_Base09.Cells[9, 3] := '24';
   Stgr_Base09.Cells[10, 3] := '25';
   //04
   Stgr_Base16.Cells[0, 4] := '04';
   Stgr_Base16.Cells[1, 4] := 'V';
   Stgr_Base16.Cells[2, 4]  := '01';
   Stgr_Base16.Cells[3, 4]  := '02';
   Stgr_Base16.Cells[4, 4]  := '05';
   Stgr_Base16.Cells[5, 4]  := '06';
   Stgr_Base16.Cells[6, 4]  := '08';
   Stgr_Base16.Cells[7, 4]  := '10';
   Stgr_Base16.Cells[8, 4]  := '11';
   Stgr_Base16.Cells[9, 4]  := '13';
   Stgr_Base16.Cells[10, 4] := '14';
   Stgr_Base16.Cells[11, 4] := '15';
   Stgr_Base16.Cells[12, 4] := '17';
   Stgr_Base16.Cells[13, 4] := '18';
   Stgr_Base16.Cells[14, 4] := '20';
   Stgr_Base16.Cells[15, 4] := '21';
   Stgr_Base16.Cells[16, 4] := '23';
   Stgr_Base16.Cells[17, 4] := '24';
   Stgr_Base09.Cells[0, 4] := '04';
   Stgr_Base09.Cells[1, 4] := 'V';
   Stgr_Base09.Cells[2, 4] := '03';
   Stgr_Base09.Cells[3, 4] := '04';
   Stgr_Base09.Cells[4, 4] := '07';
   Stgr_Base09.Cells[5, 4] := '09';
   Stgr_Base09.Cells[6, 4] := '12';
   Stgr_Base09.Cells[7, 4] := '16';
   Stgr_Base09.Cells[8, 4] := '19';
   Stgr_Base09.Cells[9, 4] := '22';
   Stgr_Base09.Cells[10, 4] := '25';
   //05
   Stgr_Base16.Cells[0, 5] := '05';
   Stgr_Base16.Cells[1, 5] := 'V';
   Stgr_Base16.Cells[2, 5]  := '03';
   Stgr_Base16.Cells[3, 5]  := '05';
   Stgr_Base16.Cells[4, 5]  := '06';
   Stgr_Base16.Cells[5, 5]  := '07';
   Stgr_Base16.Cells[6, 5]  := '08';
   Stgr_Base16.Cells[7, 5]  := '09';
   Stgr_Base16.Cells[8, 5]  := '10';
   Stgr_Base16.Cells[9, 5]  := '12';
   Stgr_Base16.Cells[10, 5] := '13';
   Stgr_Base16.Cells[11, 5] := '14';
   Stgr_Base16.Cells[12, 5] := '16';
   Stgr_Base16.Cells[13, 5] := '18';
   Stgr_Base16.Cells[14, 5] := '19';
   Stgr_Base16.Cells[15, 5] := '20';
   Stgr_Base16.Cells[16, 5] := '23';
   Stgr_Base16.Cells[17, 5] := '25';
   Stgr_Base09.Cells[0, 5] := '05';
   Stgr_Base09.Cells[1, 5] := 'V';
   Stgr_Base09.Cells[2, 5] := '01';
   Stgr_Base09.Cells[3, 5] := '02';
   Stgr_Base09.Cells[4, 5] := '04';
   Stgr_Base09.Cells[5, 5] := '11';
   Stgr_Base09.Cells[6, 5] := '15';
   Stgr_Base09.Cells[7, 5] := '17';
   Stgr_Base09.Cells[8, 5] := '21';
   Stgr_Base09.Cells[9, 5] := '22';
   Stgr_Base09.Cells[10, 5] := '24';
   //06
   Stgr_Base16.Cells[0, 6] := '06';
   Stgr_Base16.Cells[1, 6] := 'V';
   Stgr_Base16.Cells[2, 6]  := '03';
   Stgr_Base16.Cells[3, 6]  := '05';
   Stgr_Base16.Cells[4, 6]  := '06';
   Stgr_Base16.Cells[5, 6]  := '07';
   Stgr_Base16.Cells[6, 6]  := '08';
   Stgr_Base16.Cells[7, 6]  := '09';
   Stgr_Base16.Cells[8, 6]  := '10';
   Stgr_Base16.Cells[9, 6]  := '11';
   Stgr_Base16.Cells[10, 6] := '12';
   Stgr_Base16.Cells[11, 6] := '14';
   Stgr_Base16.Cells[12, 6] := '17';
   Stgr_Base16.Cells[13, 6] := '19';
   Stgr_Base16.Cells[14, 6] := '20';
   Stgr_Base16.Cells[15, 6] := '21';
   Stgr_Base16.Cells[16, 6] := '22';
   Stgr_Base16.Cells[17, 6] := '24';
   Stgr_Base09.Cells[0, 6] := '06';
   Stgr_Base09.Cells[1, 6] := 'V';
   Stgr_Base09.Cells[2, 6] := '01';
   Stgr_Base09.Cells[3, 6] := '02';
   Stgr_Base09.Cells[4, 6] := '04';
   Stgr_Base09.Cells[5, 6] := '13';
   Stgr_Base09.Cells[6, 6] := '15';
   Stgr_Base09.Cells[7, 6] := '16';
   Stgr_Base09.Cells[8, 6] := '18';
   Stgr_Base09.Cells[9, 6] := '23';
   Stgr_Base09.Cells[10, 6] := '25';
   //07
   Stgr_Base16.Cells[0, 7] := '07';
   Stgr_Base16.Cells[1, 7] := 'V';
   Stgr_Base16.Cells[2, 7]  := '01';
   Stgr_Base16.Cells[3, 7]  := '02';
   Stgr_Base16.Cells[4, 7]  := '05';
   Stgr_Base16.Cells[5, 7]  := '07';
   Stgr_Base16.Cells[6, 7]  := '08';
   Stgr_Base16.Cells[7, 7]  := '09';
   Stgr_Base16.Cells[8, 7]  := '11';
   Stgr_Base16.Cells[9, 7]  := '12';
   Stgr_Base16.Cells[10, 7] := '14';
   Stgr_Base16.Cells[11, 7] := '15';
   Stgr_Base16.Cells[12, 7] := '16';
   Stgr_Base16.Cells[13, 7] := '18';
   Stgr_Base16.Cells[14, 7] := '19';
   Stgr_Base16.Cells[15, 7] := '22';
   Stgr_Base16.Cells[16, 7] := '24';
   Stgr_Base16.Cells[17, 7] := '25';
   Stgr_Base09.Cells[0, 7] := '07';
   Stgr_Base09.Cells[1, 7] := 'V';
   Stgr_Base09.Cells[2, 7] := '03';
   Stgr_Base09.Cells[3, 7] := '04';
   Stgr_Base09.Cells[4, 7] := '06';
   Stgr_Base09.Cells[5, 7] := '10';
   Stgr_Base09.Cells[6, 7] := '13';
   Stgr_Base09.Cells[7, 7] := '17';
   Stgr_Base09.Cells[8, 7] := '20';
   Stgr_Base09.Cells[9, 7] := '21';
   Stgr_Base09.Cells[10, 7] := '23';
   //09
   Stgr_Base16.Cells[0, 8] := '08';
   Stgr_Base16.Cells[1, 8] := 'V';
   Stgr_Base16.Cells[2, 8]  := '01';
   Stgr_Base16.Cells[3, 8]  := '04';
   Stgr_Base16.Cells[4, 8]  := '05';
   Stgr_Base16.Cells[5, 8]  := '07';
   Stgr_Base16.Cells[6, 8]  := '09';
   Stgr_Base16.Cells[7, 8]  := '10';
   Stgr_Base16.Cells[8, 8]  := '12';
   Stgr_Base16.Cells[9, 8]  := '13';
   Stgr_Base16.Cells[10, 8] := '14';
   Stgr_Base16.Cells[11, 8] := '15';
   Stgr_Base16.Cells[12, 8] := '16';
   Stgr_Base16.Cells[13, 8] := '18';
   Stgr_Base16.Cells[14, 8] := '19';
   Stgr_Base16.Cells[15, 8] := '20';
   Stgr_Base16.Cells[16, 8] := '22';
   Stgr_Base16.Cells[17, 8] := '23';
   Stgr_Base09.Cells[0, 8] := '08';
   Stgr_Base09.Cells[1, 8] := 'V';
   Stgr_Base09.Cells[2, 8] := '02';
   Stgr_Base09.Cells[3, 8] := '03';
   Stgr_Base09.Cells[4, 8] := '06';
   Stgr_Base09.Cells[5, 8] := '08';
   Stgr_Base09.Cells[6, 8] := '11';
   Stgr_Base09.Cells[7, 8] := '17';
   Stgr_Base09.Cells[8, 8] := '21';
   Stgr_Base09.Cells[9, 8] := '24';
   Stgr_Base09.Cells[10, 8] := '25';
   //09
   Stgr_Base16.Cells[0, 9] := '09';
   Stgr_Base16.Cells[1, 9] := 'V';
   Stgr_Base16.Cells[2, 9]  := '01';
   Stgr_Base16.Cells[3, 9]  := '02';
   Stgr_Base16.Cells[4, 9]  := '07';
   Stgr_Base16.Cells[5, 9]  := '08';
   Stgr_Base16.Cells[6, 9]  := '09';
   Stgr_Base16.Cells[7, 9]  := '10';
   Stgr_Base16.Cells[8, 9]  := '11';
   Stgr_Base16.Cells[9, 9]  := '12';
   Stgr_Base16.Cells[10, 9] := '14';
   Stgr_Base16.Cells[11, 9] := '15';
   Stgr_Base16.Cells[12, 9] := '16';
   Stgr_Base16.Cells[13, 9] := '17';
   Stgr_Base16.Cells[14, 9] := '18';
   Stgr_Base16.Cells[15, 9] := '20';
   Stgr_Base16.Cells[16, 9] := '23';
   Stgr_Base16.Cells[17, 9] := '25';
   Stgr_Base09.Cells[0, 9] := '09';
   Stgr_Base09.Cells[1, 9] := 'V';
   Stgr_Base09.Cells[2, 9] := '03';
   Stgr_Base09.Cells[3, 9] := '04';
   Stgr_Base09.Cells[4, 9] := '05';
   Stgr_Base09.Cells[5, 9] := '06';
   Stgr_Base09.Cells[6, 9] := '13';
   Stgr_Base09.Cells[7, 9] := '19';
   Stgr_Base09.Cells[8, 9] := '21';
   Stgr_Base09.Cells[9, 9] := '22';
   Stgr_Base09.Cells[10, 9] := '24';
   //10
   Stgr_Base16.Cells[0, 10] := '10';
   Stgr_Base16.Cells[1, 10] := 'V';
   Stgr_Base16.Cells[2, 10]  := '01';
   Stgr_Base16.Cells[3, 10]  := '02';
   Stgr_Base16.Cells[4, 10]  := '03';
   Stgr_Base16.Cells[5, 10]  := '04';
   Stgr_Base16.Cells[6, 10]  := '04';
   Stgr_Base16.Cells[7, 10]  := '06';
   Stgr_Base16.Cells[8, 10]  := '08';
   Stgr_Base16.Cells[9, 10]  := '13';
   Stgr_Base16.Cells[10, 10] := '15';
   Stgr_Base16.Cells[11, 10] := '16';
   Stgr_Base16.Cells[12, 10] := '20';
   Stgr_Base16.Cells[13, 10] := '21';
   Stgr_Base16.Cells[14, 10] := '22';
   Stgr_Base16.Cells[15, 10] := '23';
   Stgr_Base16.Cells[16, 10] := '24';
   Stgr_Base16.Cells[17, 10] := '25';
   Stgr_Base09.Cells[0, 10] := '10';
   Stgr_Base09.Cells[1, 10] := 'V';
   Stgr_Base09.Cells[2, 10] := '07';
   Stgr_Base09.Cells[3, 10] := '09';
   Stgr_Base09.Cells[4, 10] := '10';
   Stgr_Base09.Cells[5, 10] := '11';
   Stgr_Base09.Cells[6, 10] := '12';
   Stgr_Base09.Cells[7, 10] := '14';
   Stgr_Base09.Cells[8, 10] := '17';
   Stgr_Base09.Cells[9, 10] := '18';
   Stgr_Base09.Cells[10, 10] := '19';
   //11
   Stgr_Base16.Cells[0, 11] := '11';
   Stgr_Base16.Cells[1, 11] := 'V';
   Stgr_Base16.Cells[2, 11]  := '02';
   Stgr_Base16.Cells[3, 11]  := '03';
   Stgr_Base16.Cells[4, 11]  := '04';
   Stgr_Base16.Cells[5, 11]  := '06';
   Stgr_Base16.Cells[6, 11]  := '07';
   Stgr_Base16.Cells[7, 11]  := '09';
   Stgr_Base16.Cells[8, 11]  := '11';
   Stgr_Base16.Cells[9, 11]  := '13';
   Stgr_Base16.Cells[10, 11] := '15';
   Stgr_Base16.Cells[11, 11] := '16';
   Stgr_Base16.Cells[12, 11] := '17';
   Stgr_Base16.Cells[13, 11] := '18';
   Stgr_Base16.Cells[14, 11] := '20';
   Stgr_Base16.Cells[15, 11] := '21';
   Stgr_Base16.Cells[16, 11] := '22';
   Stgr_Base16.Cells[17, 11] := '24';
   Stgr_Base09.Cells[0, 11] := '11';
   Stgr_Base09.Cells[1, 11] := 'V';
   Stgr_Base09.Cells[2, 11] := '01';
   Stgr_Base09.Cells[3, 11] := '05';
   Stgr_Base09.Cells[4, 11] := '08';
   Stgr_Base09.Cells[5, 11] := '10';
   Stgr_Base09.Cells[6, 11] := '12';
   Stgr_Base09.Cells[7, 11] := '14';
   Stgr_Base09.Cells[8, 11] := '19';
   Stgr_Base09.Cells[9, 11] := '23';
   Stgr_Base09.Cells[10, 11] := '25';
   //12
   Stgr_Base16.Cells[0, 12] := '12';
   Stgr_Base16.Cells[1, 12] := 'V';
   Stgr_Base16.Cells[2, 12]  := '01';
   Stgr_Base16.Cells[3, 12]  := '03';
   Stgr_Base16.Cells[4, 12]  := '04';
   Stgr_Base16.Cells[5, 12]  := '06';
   Stgr_Base16.Cells[6, 12]  := '08';
   Stgr_Base16.Cells[7, 12]  := '09';
   Stgr_Base16.Cells[8, 12]  := '10';
   Stgr_Base16.Cells[9, 12]  := '13';
   Stgr_Base16.Cells[10, 12] := '15';
   Stgr_Base16.Cells[11, 12] := '16';
   Stgr_Base16.Cells[12, 12] := '18';
   Stgr_Base16.Cells[13, 12] := '19';
   Stgr_Base16.Cells[14, 12] := '20';
   Stgr_Base16.Cells[15, 12] := '21';
   Stgr_Base16.Cells[16, 12] := '22';
   Stgr_Base16.Cells[17, 12] := '24';
   Stgr_Base09.Cells[0, 12] := '12';
   Stgr_Base09.Cells[1, 12] := 'V';
   Stgr_Base09.Cells[2, 12] := '02';
   Stgr_Base09.Cells[3, 12] := '05';
   Stgr_Base09.Cells[4, 12] := '07';
   Stgr_Base09.Cells[5, 12] := '11';
   Stgr_Base09.Cells[6, 12] := '12';
   Stgr_Base09.Cells[7, 12] := '14';
   Stgr_Base09.Cells[8, 12] := '17';
   Stgr_Base09.Cells[9, 12] := '23';
   Stgr_Base09.Cells[10, 12] := '25';


   Stgr_Base16.RowCount := 13;
   Stgr_Base09.RowCount := 13;
   Stgr_Base17VF.RowCount := 13;
   Stgr_Base16.Height := Scbx_GABARITO.Height - 75;
   Stgr_Base09.Height := Scbx_GABARITO.Height - 75;
   Stgr_Sorteios.Height := Scbx_GABARITO.Height - 75;

   Stgr_Estatisticas.ColWidths[0] := 50;
   Stgr_Estatisticas.RowCount := 16;
   Stgr_Estatisticas.Cells[1,0] := 'Total de Ocorrências';
   Stgr_Estatisticas.Cells[2,0] := '% Ocorrências';
   Stgr_Estatisticas.Cells[3,0] := 'Média Ocorrências';
   Stgr_Estatisticas.Cells[4,0] := 'Último Sorteio';
   Stgr_Estatisticas.Cells[5,0] := 'Número de atrasos';
   Stgr_Estatisticas.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados.Height := Scbx_GABARITO.Height - 55;

   Stgr_Estatisticas13.ColWidths[0] := 60;
   Stgr_Estatisticas13.Cells[1,0] := 'Total de Ocorrências';
   Stgr_Estatisticas13.Cells[2,0] := '% Ocorrências';
   Stgr_Estatisticas13.Cells[3,0] := 'Média Ocorrências';
   Stgr_Estatisticas13.Cells[4,0] := 'Último Sorteio';
   Stgr_Estatisticas13.Cells[5,0] := 'Número de atrasos';
//   Stgr_EstatisticasSorteiosAtrasados.Cells[0,0] := 'Qtd Sorteio atrasado decrescente';
//   Stgr_EstatisticasSorteiosAtrasados13.cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   Stgr_Estatisticas13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados13.Height := Scbx_GABARITO.Height - 55;

   stgr_ac8em9.Height := scrollBox_Resultado.Height - 39;
   stgr_ac1em9.Height := scrollBox_Resultado.Height - 39;
   stgr_ac7em16.ColWidths[0] := 60;
   stgr_ac7em16.Height := scrollBox_Resultado.Height - 39;
end;


end.
