unit fRanqueadorr_Cjto16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Data.DB, STRUtils, Math,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm1 = class(TForm)
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
    IBQ_COMBINACOES: TIBQuery;
    Ds_E_SORTEIO_15N: TDataSource;
    Ibq_E_SORTEIO_15N: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    Bbt_rank: TBitBtn;
    Bbt_carregarSorteio15N: TBitBtn;
    Label_qtdSorteios: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure Bbt_CarregarSort(Sender: TObject);
    procedure Bbt_rankClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
      vcrDivisor1, vcrDivisor2, vcrDivisor3: Currency;
      vaiRankProcessar1: Array [1 .. 10] Of integer;
      vaiRankProcessar2: Array [1 .. 10] Of integer;
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros();
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.Generics.Collections, System.SysUtils;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   SELF.ClientWidth := 1510;
   SELF.ClientHeight := 600;
   SELF.Top := 57;
   SELF.Left := 6;
   // SELF.Visible := TRUE;
   PreenchimentoInicialPadrao;
end;


Procedure TForm1.Bbt_CarregarSort(Sender: TObject);
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


procedure TForm1.Bbt_rankClick(Sender: TObject);
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
         vsAtrasados := RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio07) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ).ToString,3) ;
      end
      else
      begin
         vsAtrasados := '-'+StringReplace(RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio07) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ).ToString,3),'-','',[]) ;
      end;
      li_QtdAtrasados07.Add( vsAtrasados  +
         ' no sorteio '+ (viUltimoSorteio07 + (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias07,0)) ).ToString +
         ' na linha '
         + RightStr('0'+viContar16Combinacoes.ToString,2));
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
         vsAtrasados := RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio08Base09) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0)) ).ToString,3) ;
      end
      else
      begin
         vsAtrasados := '-'+StringReplace(RightStr('00'+(((Stgr_Sorteios.RowCount-1) - viUltimoSorteio08Base09) -(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0)) ).ToString,3),'-','',[]) ;
      end;
      li_QtdAtrasados08Base09.Add(vsAtrasados  +
         ' no sorteio '+ (viUltimoSorteio08Base09 +(RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias08Base09,0))  ).ToString+
          ' na linha '  + RightStr('0'+viContar16Combinacoes.ToString,2));
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
   viContarCelulas :=0;
   for viContar16Combinacoes := (Stgr_Base16.RowCount-1) downto 1 do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] := li_QtdOcorrencias07[viContar16Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] :=  li_QtdAtrasados07[viContar16Combinacoes-1];
      Stgr_EstatisticasOcorrencias13.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] := li_QtdOcorrencias08Base09[viContar16Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados13.Cells[0, Stgr_Base16.RowCount-viContar16Combinacoes] :=  li_QtdAtrasados08Base09[viContar16Combinacoes-1];
   end;
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




procedure TForm1.Zerar_FLAGTodosNumeros();
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


procedure TForm1.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure TForm1.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;



Procedure TForm1.PreenchimentoInicialPadrao;
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
   Stgr_Base16.Cells[4, 1] := '03';
   Stgr_Base16.Cells[5, 1] := '04';
   Stgr_Base16.Cells[6, 1] := '05';
   Stgr_Base16.Cells[7, 1] := '06';
   Stgr_Base16.Cells[8, 1] := '07';
   Stgr_Base16.Cells[9, 1] := '08';
   Stgr_Base16.Cells[10, 1] := '09';
   Stgr_Base16.Cells[11, 1] := '10';
   Stgr_Base16.Cells[12, 1] := '11';
   Stgr_Base16.Cells[13, 1] := '12';
   Stgr_Base16.Cells[14, 1] := '13';
   Stgr_Base16.Cells[15, 1] := '14';
   Stgr_Base16.Cells[16, 1] := '19';
   Stgr_Base16.Cells[17, 1] := '20';
     Stgr_Base09.Cells[0, 1] := '01';
   Stgr_Base09.Cells[1, 1] := 'V';
   Stgr_Base09.Cells[2, 1] := '15';
   Stgr_Base09.Cells[3, 1] := '16';
   Stgr_Base09.Cells[4, 1] := '17';
   Stgr_Base09.Cells[5, 1] := '18';
   Stgr_Base09.Cells[6, 1] := '21';
   Stgr_Base09.Cells[7, 1] := '22';
   Stgr_Base09.Cells[8, 1] := '23';
   Stgr_Base09.Cells[9, 1] := '24';
   Stgr_Base09.Cells[10, 1] := '25';
  //02
   Stgr_Base16.Cells[0, 2] := '02';
   Stgr_Base16.Cells[1, 2] := 'V';
   Stgr_Base16.Cells[2, 2] := '04';        Stgr_Base16.Cells[3, 2] := '05';
   Stgr_Base16.Cells[4, 2] := '06';        Stgr_Base16.Cells[5, 2] := '07';
   Stgr_Base16.Cells[6, 2] := '08';        Stgr_Base16.Cells[7, 2] := '09';
   Stgr_Base16.Cells[8, 2] := '10';        Stgr_Base16.Cells[9, 2] := '11';
   Stgr_Base16.Cells[10, 2] := '12';       Stgr_Base16.Cells[11, 2] := '13';
   Stgr_Base16.Cells[12, 2] := '14';       Stgr_Base16.Cells[13, 2] := '15';
   Stgr_Base16.Cells[14, 2] := '16';       Stgr_Base16.Cells[15, 2] := '17';
   Stgr_Base16.Cells[16, 2] := '22';       Stgr_Base16.Cells[17, 2] := '23';
      Stgr_Base09.Cells[0, 2] := '02';
   Stgr_Base09.Cells[1, 2] := 'V';
   Stgr_Base09.Cells[2, 2] := '01';
   Stgr_Base09.Cells[3, 2] := '02';
   Stgr_Base09.Cells[4, 2] := '03';
   Stgr_Base09.Cells[5, 2] := '18';
   Stgr_Base09.Cells[6, 2] := '19';
   Stgr_Base09.Cells[7, 2] := '20';
   Stgr_Base09.Cells[8, 2] := '21';
   Stgr_Base09.Cells[9, 2] := '24';
   Stgr_Base09.Cells[10, 2] := '25';
  //03
   Stgr_Base16.Cells[0, 3] := '03';
   Stgr_Base16.Cells[1, 3] := 'V';
   Stgr_Base16.Cells[2, 3]  := '01';
   Stgr_Base16.Cells[3, 3]  := '07';
   Stgr_Base16.Cells[4, 3]  := '08';
   Stgr_Base16.Cells[5, 3]  := '09';
   Stgr_Base16.Cells[6, 3]  := '10';
   Stgr_Base16.Cells[7, 3]  := '11';
   Stgr_Base16.Cells[8, 3]  := '12';
   Stgr_Base16.Cells[9, 3]  := '13';
   Stgr_Base16.Cells[10, 3] := '14';
   Stgr_Base16.Cells[11, 3] := '15';
   Stgr_Base16.Cells[12, 3] := '16';
   Stgr_Base16.Cells[13, 3] := '17';
   Stgr_Base16.Cells[14, 3] := '18';
   Stgr_Base16.Cells[15, 3] := '19';
   Stgr_Base16.Cells[16, 3] := '20';
   Stgr_Base16.Cells[17, 3] := '25';
   Stgr_Base09.Cells[0, 3] := '03';
   Stgr_Base09.Cells[1, 3] := 'V';
   Stgr_Base09.Cells[2, 3] := '02';
   Stgr_Base09.Cells[3, 3] := '03';
   Stgr_Base09.Cells[4, 3] := '04';
   Stgr_Base09.Cells[5, 3] := '05';
   Stgr_Base09.Cells[6, 3] := '06';
   Stgr_Base09.Cells[7, 3] := '21';
   Stgr_Base09.Cells[8, 3] := '22';
   Stgr_Base09.Cells[9, 3] := '23';
   Stgr_Base09.Cells[10, 3] := '24';
   //04
   Stgr_Base16.Cells[0, 4] := '04';
   Stgr_Base16.Cells[1, 4] := 'V';
   Stgr_Base16.Cells[2, 4]  := '03';
   Stgr_Base16.Cells[3, 4]  := '04';
   Stgr_Base16.Cells[4, 4]  := '10';
   Stgr_Base16.Cells[5, 4]  := '11';
   Stgr_Base16.Cells[6, 4]  := '12';
   Stgr_Base16.Cells[7, 4]  := '13';
   Stgr_Base16.Cells[8, 4]  := '14';
   Stgr_Base16.Cells[9, 4]  := '15';
   Stgr_Base16.Cells[10, 4] := '16';
   Stgr_Base16.Cells[11, 4] := '17';
   Stgr_Base16.Cells[12, 4] := '18';
   Stgr_Base16.Cells[13, 4] := '19';
   Stgr_Base16.Cells[14, 4] := '20';
   Stgr_Base16.Cells[15, 4] := '21';
   Stgr_Base16.Cells[16, 4] := '22';
   Stgr_Base16.Cells[17, 4] := '23';
   Stgr_Base09.Cells[0, 4] := '04';
   Stgr_Base09.Cells[1, 4] := 'V';
   Stgr_Base09.Cells[2, 4] := '01';
   Stgr_Base09.Cells[3, 4] := '02';
   Stgr_Base09.Cells[4, 4] := '05';
   Stgr_Base09.Cells[5, 4] := '06';
   Stgr_Base09.Cells[6, 4] := '07';
   Stgr_Base09.Cells[7, 4] := '08';
   Stgr_Base09.Cells[8, 4] := '09';
   Stgr_Base09.Cells[9, 4] := '24';
   Stgr_Base09.Cells[10, 4] := '25';
   //05
   Stgr_Base16.Cells[0, 5] := '05';
   Stgr_Base16.Cells[1, 5] := 'V';
   Stgr_Base16.Cells[2, 5]  := '01';
   Stgr_Base16.Cells[3, 5]  := '06';
   Stgr_Base16.Cells[4, 5]  := '07';
   Stgr_Base16.Cells[5, 5]  := '13';
   Stgr_Base16.Cells[6, 5]  := '14';
   Stgr_Base16.Cells[7, 5]  := '15';
   Stgr_Base16.Cells[8, 5]  := '16';
   Stgr_Base16.Cells[9, 5]  := '17';
   Stgr_Base16.Cells[10, 5] := '18';
   Stgr_Base16.Cells[11, 5] := '19';
   Stgr_Base16.Cells[12, 5] := '20';
   Stgr_Base16.Cells[13, 5] := '21';
   Stgr_Base16.Cells[14, 5] := '22';
   Stgr_Base16.Cells[15, 5] := '23';
   Stgr_Base16.Cells[16, 5] := '24';
   Stgr_Base16.Cells[17, 5] := '25';
   Stgr_Base09.Cells[0, 5] := '05';
   Stgr_Base09.Cells[1, 5] := 'V';
   Stgr_Base09.Cells[2, 5] := '02';
   Stgr_Base09.Cells[3, 5] := '03';
   Stgr_Base09.Cells[4, 5] := '04';
   Stgr_Base09.Cells[5, 5] := '05';
   Stgr_Base09.Cells[6, 5] := '08';
   Stgr_Base09.Cells[7, 5] := '09';
   Stgr_Base09.Cells[8, 5] := '10';
   Stgr_Base09.Cells[9, 5] := '11';
   Stgr_Base09.Cells[10, 5] := '12';
   //06
   Stgr_Base16.Cells[0, 6] := '06';
   Stgr_Base16.Cells[1, 6] := 'V';
   Stgr_Base16.Cells[2, 6]  := '01';
   Stgr_Base16.Cells[3, 6]  := '02';
   Stgr_Base16.Cells[4, 6]  := '03';
   Stgr_Base16.Cells[5, 6]  := '04';
   Stgr_Base16.Cells[6, 6]  := '09';
   Stgr_Base16.Cells[7, 6]  := '10';
   Stgr_Base16.Cells[8, 6]  := '16';
   Stgr_Base16.Cells[9, 6]  := '17';
   Stgr_Base16.Cells[10, 6] := '18';
   Stgr_Base16.Cells[11, 6] := '19';
   Stgr_Base16.Cells[12, 6] := '20';
   Stgr_Base16.Cells[13, 6] := '21';
   Stgr_Base16.Cells[14, 6] := '22';
   Stgr_Base16.Cells[15, 6] := '23';
   Stgr_Base16.Cells[16, 6] := '24';
   Stgr_Base16.Cells[17, 6] := '25';
   Stgr_Base09.Cells[0, 6] := '06';
   Stgr_Base09.Cells[1, 6] := 'V';
   Stgr_Base09.Cells[2, 6] := '05';
   Stgr_Base09.Cells[3, 6] := '06';
   Stgr_Base09.Cells[4, 6] := '07';
   Stgr_Base09.Cells[5, 6] := '08';
   Stgr_Base09.Cells[6, 6] := '11';
   Stgr_Base09.Cells[7, 6] := '12';
   Stgr_Base09.Cells[8, 6] := '13';
   Stgr_Base09.Cells[9, 6] := '14';
   Stgr_Base09.Cells[10, 6] := '15';
   //07
   Stgr_Base16.Cells[0, 7] := '07';
   Stgr_Base16.Cells[1, 7] := 'V';
   Stgr_Base16.Cells[2, 7]  := '01';
   Stgr_Base16.Cells[3, 7]  := '02';
   Stgr_Base16.Cells[4, 7]  := '03';
   Stgr_Base16.Cells[5, 7]  := '04';
   Stgr_Base16.Cells[6, 7]  := '05';
   Stgr_Base16.Cells[7, 7]  := '06';
   Stgr_Base16.Cells[8, 7]  := '07';
   Stgr_Base16.Cells[9, 7]  := '12';
   Stgr_Base16.Cells[10, 7] := '13';
   Stgr_Base16.Cells[11, 7] := '19';
   Stgr_Base16.Cells[12, 7] := '20';
   Stgr_Base16.Cells[13, 7] := '21';
   Stgr_Base16.Cells[14, 7] := '22';
   Stgr_Base16.Cells[15, 7] := '23';
   Stgr_Base16.Cells[16, 7] := '24';
   Stgr_Base16.Cells[17, 7] := '25';
   Stgr_Base09.Cells[0, 7] := '07';
   Stgr_Base09.Cells[1, 7] := 'V';
   Stgr_Base09.Cells[2, 7] := '08';
   Stgr_Base09.Cells[3, 7] := '09';
   Stgr_Base09.Cells[4, 7] := '10';
   Stgr_Base09.Cells[5, 7] := '11';
   Stgr_Base09.Cells[6, 7] := '14';
   Stgr_Base09.Cells[7, 7] := '15';
   Stgr_Base09.Cells[8, 7] := '16';
   Stgr_Base09.Cells[9, 7] := '17';
   Stgr_Base09.Cells[10, 7] := '18';
   //09
   Stgr_Base16.Cells[0, 8] := '08';
   Stgr_Base16.Cells[1, 8] := 'V';
   Stgr_Base16.Cells[2, 8]  := '01';
   Stgr_Base16.Cells[3, 8]  := '02';
   Stgr_Base16.Cells[4, 8]  := '03';
   Stgr_Base16.Cells[5, 8]  := '04';
   Stgr_Base16.Cells[6, 8]  := '05';
   Stgr_Base16.Cells[7, 8]  := '06';
   Stgr_Base16.Cells[8, 8]  := '07';
   Stgr_Base16.Cells[9, 8]  := '08';
   Stgr_Base16.Cells[10, 8] := '09';
   Stgr_Base16.Cells[11, 8] := '10';
   Stgr_Base16.Cells[12, 8] := '15';
   Stgr_Base16.Cells[13, 8] := '16';
   Stgr_Base16.Cells[14, 8] := '22';
   Stgr_Base16.Cells[15, 8] := '23';
   Stgr_Base16.Cells[16, 8] := '24';
   Stgr_Base16.Cells[17, 8] := '25';
   Stgr_Base09.Cells[0, 8] := '08';
   Stgr_Base09.Cells[1, 8] := 'V';
   Stgr_Base09.Cells[2, 8] := '11';
   Stgr_Base09.Cells[3, 8] := '12';
   Stgr_Base09.Cells[4, 8] := '13';
   Stgr_Base09.Cells[5, 8] := '14';
   Stgr_Base09.Cells[6, 8] := '17';
   Stgr_Base09.Cells[7, 8] := '18';
   Stgr_Base09.Cells[8, 8] := '19';
   Stgr_Base09.Cells[9, 8] := '20';
   Stgr_Base09.Cells[10, 8] := '21';
   //09
   Stgr_Base16.Cells[0, 9] := '09';
   Stgr_Base16.Cells[1, 9] := 'V';
   Stgr_Base16.Cells[2, 9]  := '01';
   Stgr_Base16.Cells[3, 9]  := '02';
   Stgr_Base16.Cells[4, 9]  := '03';
   Stgr_Base16.Cells[5, 9]  := '04';
   Stgr_Base16.Cells[6, 9]  := '05';
   Stgr_Base16.Cells[7, 9]  := '06';
   Stgr_Base16.Cells[8, 9]  := '07';
   Stgr_Base16.Cells[9, 9]  := '08';
   Stgr_Base16.Cells[10, 9] := '09';
   Stgr_Base16.Cells[11, 9] := '10';
   Stgr_Base16.Cells[12, 9] := '11';
   Stgr_Base16.Cells[13, 9] := '12';
   Stgr_Base16.Cells[14, 9] := '13';
   Stgr_Base16.Cells[15, 9] := '18';
   Stgr_Base16.Cells[16, 9] := '19';
   Stgr_Base16.Cells[17, 9] := '25';
   Stgr_Base09.Cells[0, 9] := '09';
   Stgr_Base09.Cells[1, 9] := 'V';
   Stgr_Base09.Cells[2, 9] := '14';
   Stgr_Base09.Cells[3, 9] := '15';
   Stgr_Base09.Cells[4, 9] := '16';
   Stgr_Base09.Cells[5, 9] := '17';
   Stgr_Base09.Cells[6, 9] := '20';
   Stgr_Base09.Cells[7, 9] := '21';
   Stgr_Base09.Cells[8, 9] := '22';
   Stgr_Base09.Cells[9, 9] := '23';
   Stgr_Base09.Cells[10, 9] := '24';
   //10
   Stgr_Base16.Cells[0, 10] := '10';
   Stgr_Base16.Cells[1, 10] := 'V';
   Stgr_Base16.Cells[2, 10]  := '03';
   Stgr_Base16.Cells[3, 10]  := '04';
   Stgr_Base16.Cells[4, 10]  := '05';
   Stgr_Base16.Cells[5, 10]  := '06';
   Stgr_Base16.Cells[6, 10]  := '07';
   Stgr_Base16.Cells[7, 10]  := '08';
   Stgr_Base16.Cells[8, 10]  := '09';
   Stgr_Base16.Cells[9, 10]  := '10';
   Stgr_Base16.Cells[10, 10] := '11';
   Stgr_Base16.Cells[11, 10] := '12';
   Stgr_Base16.Cells[12, 10] := '13';
   Stgr_Base16.Cells[13, 10] := '14';
   Stgr_Base16.Cells[14, 10] := '15';
   Stgr_Base16.Cells[15, 10] := '16';
   Stgr_Base16.Cells[16, 10] := '21';
   Stgr_Base16.Cells[17, 10] := '22';
   Stgr_Base09.Cells[0, 10] := '10';
   Stgr_Base09.Cells[1, 10] := 'V';
   Stgr_Base09.Cells[2, 10] := '01';
   Stgr_Base09.Cells[3, 10] := '02';
   Stgr_Base09.Cells[4, 10] := '17';
   Stgr_Base09.Cells[5, 10] := '18';
   Stgr_Base09.Cells[6, 10] := '19';
   Stgr_Base09.Cells[7, 10] := '20';
   Stgr_Base09.Cells[8, 10] := '23';
   Stgr_Base09.Cells[9, 10] := '24';
   Stgr_Base09.Cells[10, 10] := '25';
   //11
   Stgr_Base16.Cells[0, 11] := '11';
   Stgr_Base16.Cells[1, 11] := 'V';
   Stgr_Base16.Cells[2, 11]  := '06';
   Stgr_Base16.Cells[3, 11]  := '07';
   Stgr_Base16.Cells[4, 11]  := '08';
   Stgr_Base16.Cells[5, 11]  := '09';
   Stgr_Base16.Cells[6, 11]  := '10';
   Stgr_Base16.Cells[7, 11]  := '11';
   Stgr_Base16.Cells[8, 11]  := '12';
   Stgr_Base16.Cells[9, 11]  := '13';
   Stgr_Base16.Cells[10, 11] := '14';
   Stgr_Base16.Cells[11, 11] := '15';
   Stgr_Base16.Cells[12, 11] := '16';
   Stgr_Base16.Cells[13, 11] := '17';
   Stgr_Base16.Cells[14, 11] := '18';
   Stgr_Base16.Cells[15, 11] := '19';
   Stgr_Base16.Cells[16, 11] := '24';
   Stgr_Base16.Cells[17, 11] := '25';
   Stgr_Base09.Cells[0, 11] := '11';
   Stgr_Base09.Cells[1, 11] := 'V';
   Stgr_Base09.Cells[2, 11] := '01';
   Stgr_Base09.Cells[3, 11] := '02';
   Stgr_Base09.Cells[4, 11] := '03';
   Stgr_Base09.Cells[5, 11] := '04';
   Stgr_Base09.Cells[6, 11] := '05';
   Stgr_Base09.Cells[7, 11] := '20';
   Stgr_Base09.Cells[8, 11] := '21';
   Stgr_Base09.Cells[9, 11] := '22';
   Stgr_Base09.Cells[10, 11] := '23';
   //12
   Stgr_Base16.Cells[0, 12] := '12';
   Stgr_Base16.Cells[1, 12] := 'V';
   Stgr_Base16.Cells[2, 12]  := '01';
   Stgr_Base16.Cells[3, 12]  := '02';
   Stgr_Base16.Cells[4, 12]  := '03';
   Stgr_Base16.Cells[5, 12]  := '04';
   Stgr_Base16.Cells[6, 12]  := '05';
   Stgr_Base16.Cells[7, 12]  := '06';
   Stgr_Base16.Cells[8, 12]  := '07';
   Stgr_Base16.Cells[9, 12]  := '08';
   Stgr_Base16.Cells[10, 12] := '18';
   Stgr_Base16.Cells[11, 12] := '19';
   Stgr_Base16.Cells[12, 12] := '20';
   Stgr_Base16.Cells[13, 12] := '21';
   Stgr_Base16.Cells[14, 12] := '22';
   Stgr_Base16.Cells[15, 12] := '23';
   Stgr_Base16.Cells[16, 12] := '24';
   Stgr_Base16.Cells[17, 12] := '25';
   Stgr_Base09.Cells[0, 12] := '12';
   Stgr_Base09.Cells[1, 12] := 'V';
   Stgr_Base09.Cells[2, 12] := '09';
   Stgr_Base09.Cells[3, 12] := '10';
   Stgr_Base09.Cells[4, 12] := '11';
   Stgr_Base09.Cells[5, 12] := '12';
   Stgr_Base09.Cells[6, 12] := '13';
   Stgr_Base09.Cells[7, 12] := '14';
   Stgr_Base09.Cells[8, 12] := '15';
   Stgr_Base09.Cells[9, 12] := '16';
   Stgr_Base09.Cells[10, 12] := '17';
   //13
   Stgr_Base16.Cells[0, 13] := '13';
   Stgr_Base16.Cells[1, 13] := 'V';
   Stgr_Base16.Cells[2, 13]  := '01';
   Stgr_Base16.Cells[3, 13]  := '02';
   Stgr_Base16.Cells[4, 13]  := '03';
   Stgr_Base16.Cells[5, 13]  := '04';
   Stgr_Base16.Cells[6, 13]  := '05';
   Stgr_Base16.Cells[7, 13]  := '06';
   Stgr_Base16.Cells[8, 13]  := '07';
   Stgr_Base16.Cells[9, 13]  := '08';
   Stgr_Base16.Cells[10, 13] := '09';
   Stgr_Base16.Cells[11, 13] := '10';
   Stgr_Base16.Cells[12, 13] := '11';
   Stgr_Base16.Cells[13, 13] := '21';
   Stgr_Base16.Cells[14, 13] := '22';
   Stgr_Base16.Cells[15, 13] := '23';
   Stgr_Base16.Cells[16, 13] := '24';
   Stgr_Base16.Cells[17, 13] := '25';
   Stgr_Base09.Cells[0, 13] := '13';
   Stgr_Base09.Cells[1, 13] := 'V';
   Stgr_Base09.Cells[2, 13] := '12';
   Stgr_Base09.Cells[3, 13] := '13';
   Stgr_Base09.Cells[4, 13] := '14';
   Stgr_Base09.Cells[5, 13] := '15';
   Stgr_Base09.Cells[6, 13] := '16';
   Stgr_Base09.Cells[7, 13] := '17';
   Stgr_Base09.Cells[8, 13] := '18';
   Stgr_Base09.Cells[9, 13] := '19';
   Stgr_Base09.Cells[10, 13] := '20';
   //14
   Stgr_Base16.Cells[0, 14] := '14';
   Stgr_Base16.Cells[1, 14] := 'V';
   Stgr_Base16.Cells[2, 14]  := '01';
   Stgr_Base16.Cells[3, 14]  := '02';
   Stgr_Base16.Cells[4, 14]  := '03';
   Stgr_Base16.Cells[5, 14]  := '04';
   Stgr_Base16.Cells[6, 14]  := '05';
   Stgr_Base16.Cells[7, 14]  := '06';
   Stgr_Base16.Cells[8, 14]  := '07';
   Stgr_Base16.Cells[9, 14]  := '08';
   Stgr_Base16.Cells[10, 14] := '09';
   Stgr_Base16.Cells[11, 14] := '10';
   Stgr_Base16.Cells[12, 14] := '11';
   Stgr_Base16.Cells[13, 14] := '12';
   Stgr_Base16.Cells[14, 14] := '13';
   Stgr_Base16.Cells[15, 14] := '14';
   Stgr_Base16.Cells[16, 14] := '24';
   Stgr_Base16.Cells[17, 14] := '25';
   Stgr_Base09.Cells[0, 14] := '14';
   Stgr_Base09.Cells[1, 14] := 'V';
   Stgr_Base09.Cells[2, 14] := '15';
   Stgr_Base09.Cells[3, 14] := '16';
   Stgr_Base09.Cells[4, 14] := '17';
   Stgr_Base09.Cells[5, 14] := '18';
   Stgr_Base09.Cells[6, 14] := '19';
   Stgr_Base09.Cells[7, 14] := '20';
   Stgr_Base09.Cells[8, 14] := '21';
   Stgr_Base09.Cells[9, 14] := '22';
   Stgr_Base09.Cells[10, 14] := '23';
   //15
   Stgr_Base16.Cells[0, 15] := '15';
   Stgr_Base16.Cells[1, 15] := 'V';
   Stgr_Base16.Cells[2, 15]  := '02';
   Stgr_Base16.Cells[3, 15]  := '03';
   Stgr_Base16.Cells[4, 15]  := '04';
   Stgr_Base16.Cells[5, 15]  := '05';
   Stgr_Base16.Cells[6, 15]  := '06';
   Stgr_Base16.Cells[7, 15]  := '07';
   Stgr_Base16.Cells[8, 15]  := '08';
   Stgr_Base16.Cells[9, 15]  := '09';
   Stgr_Base16.Cells[10, 15] := '10';
   Stgr_Base16.Cells[11, 15] := '11';
   Stgr_Base16.Cells[12, 15] := '12';
   Stgr_Base16.Cells[13, 15] := '13';
   Stgr_Base16.Cells[14, 15] := '14';
   Stgr_Base16.Cells[15, 15] := '15';
   Stgr_Base16.Cells[16, 15] := '16';
   Stgr_Base16.Cells[17, 15] := '17';
   Stgr_Base09.Cells[0, 15] := '15';
   Stgr_Base09.Cells[1, 15] := 'V';
   Stgr_Base09.Cells[2, 15] := '01';
   Stgr_Base09.Cells[3, 15] := '18';
   Stgr_Base09.Cells[4, 15] := '19';
   Stgr_Base09.Cells[5, 15] := '20';
   Stgr_Base09.Cells[6, 15] := '21';
   Stgr_Base09.Cells[7, 15] := '22';
   Stgr_Base09.Cells[8, 15] := '23';
   Stgr_Base09.Cells[9, 15] := '24';
   Stgr_Base09.Cells[10, 15] := '25';

   Stgr_Base16.RowCount := 16;
   Stgr_Base09.RowCount := 16;
   Stgr_Base17VF.RowCount := 16;
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
   Stgr_EstatisticasSorteiosAtrasados.Cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   Stgr_EstatisticasSorteiosAtrasados13.cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   Stgr_Estatisticas13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados13.Height := Scbx_GABARITO.Height - 55;
end;


end.
