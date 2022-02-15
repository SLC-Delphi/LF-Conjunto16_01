unit fRanqueadorr_Cjto16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids;

type
  TForm1 = class(TForm)
    Scbx_GABARITO: TScrollBox;
    La_NSorteioRank: TLabel;
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
    Stgr_Base08: TStringGrid;
    Stgr_Base17: TStringGrid;
    Stgr_Estatisticas: TStringGrid;
    Stgr_Sorteios: TStringGrid;
    Bbt_CarregarSorteio15N: TBitBtn;
    Bbt_Rank: TBitBtn;
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
    procedure Bbt_CarregarSort(Sender: TObject);
    procedure Bbt_RankClick(Sender: TObject);
  private
    { Private declarations }
      vcrDivisor1, vcrDivisor2, vcrDivisor3: Currency;
      vaiRankProcessar1: Array [1 .. 10] Of integer;
      vaiRankProcessar2: Array [1 .. 10] Of integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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
End;


procedure TForm1.Bbt_RankClick(Sender: TObject);
var
   viContar17Combinacoes,viContarSorteios, viValorDasCoicidencias, viContarCelulas : integer;
   li_QtdOcorrencias12, li_QtdAtrasados12 : Tlist<String>;
   li_QtdOcorrencias13, li_QtdAtrasados13 : Tlist<String>;
   viUltimoSorteio12, vdbQtdOcorrencias12, vdbPercentualOcorrencias12 : Double;
   viUltimoSorteio13, vdbQtdOcorrencias13, vdbPercentualOcorrencias13 : Double;
begin
   li_QtdOcorrencias12 := Tlist<String>.Create;
   li_QtdAtrasados12 := Tlist<String>.Create;
   li_QtdOcorrencias13 := Tlist<String>.Create;
   li_QtdAtrasados13 := Tlist<String>.Create;
   li_QtdOcorrencias12.Clear;
   li_QtdAtrasados12.Clear;
   for viContar17Combinacoes := 1 to Trunc((Stgr_Base17.RowCount-1)/1) do
   begin
      Stgr_Sorteios.Cells[17, 0] := viContar17Combinacoes.ToString;
      Stgr_Sorteios.Repaint;
      // --> Montar Flags com as combinações
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 18 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base17.Cells[viContarCelulas,viContar17Combinacoes])) ,1]:='V';
      end;
      vdbQtdOcorrencias12 :=0;
      vdbQtdOcorrencias13 :=0;
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
         if viValorDasCoicidencias = 12 then
         begin
            vdbQtdOcorrencias12 := vdbQtdOcorrencias12 + 1;
            viUltimoSorteio12 := viContarSorteios;
         end
         else
         if viValorDasCoicidencias = 13 then
         begin
            vdbQtdOcorrencias13 := vdbQtdOcorrencias13 + 1;
            viUltimoSorteio13 := viContarSorteios;
         end;
      end;
      // --> Estatisticas 12
      vdbPercentualOcorrencias12 := RoundTo((vdbQtdOcorrencias12 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas.Cells[0,viContar17Combinacoes] := viContar17Combinacoes.ToString;
      Stgr_Estatisticas.Cells[1,viContar17Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias12.ToString),5);
      Stgr_Estatisticas.Cells[2,viContar17Combinacoes] := vdbPercentualOcorrencias12.ToString+'%';
      li_QtdOcorrencias12.add( RightStr('0000'+(vdbQtdOcorrencias12.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias12.ToString+'% no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas.Cells[3,viContar17Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias12,-4)).ToString;
      Stgr_Estatisticas.Cells[4,viContar17Combinacoes] := viUltimoSorteio12.ToString;
      Stgr_Estatisticas.Cells[5,viContar17Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio12).ToString,3);
      li_QtdAtrasados12.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio12).ToString,3) + ' no sorteio '+ viUltimoSorteio12.ToString+ ' no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
      // --> Estatísticas 13
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias13 := RoundTo((vdbQtdOcorrencias13 / (Stgr_Sorteios.RowCount-1) *100),-2);
      Stgr_Estatisticas13.Cells[0,viContar17Combinacoes] := viContar17Combinacoes.ToString;
      Stgr_Estatisticas13.Cells[1,viContar17Combinacoes] := RightStr('0000'+(vdbQtdOcorrencias13.ToString),5);
      Stgr_Estatisticas13.Cells[2,viContar17Combinacoes] := vdbPercentualOcorrencias13.ToString+'%';
      li_QtdOcorrencias13.add( RightStr('0000'+(vdbQtdOcorrencias13.ToString),5) + ' equivalente a ' + vdbPercentualOcorrencias13.ToString+'% no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Estatisticas13.Cells[3,viContar17Combinacoes] := ' 1 em '+ (RoundTo((Stgr_Sorteios.RowCount-1) / vdbQtdOcorrencias13,-4)).ToString;
      Stgr_Estatisticas13.Cells[4,viContar17Combinacoes] := viUltimoSorteio13.ToString;
      Stgr_Estatisticas13.Cells[5,viContar17Combinacoes] := RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio13).ToString,3);
      li_QtdAtrasados13.Add(RightStr('00'+((Stgr_Sorteios.RowCount-1) - viUltimoSorteio13).ToString,3) + ' no sorteio '+ viUltimoSorteio13.ToString+ ' no '  + RightStr('0'+viContar17Combinacoes.ToString,2));
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas13.Repaint;

      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 09 DO
      begin
         Stgr_Todos_Numeros.Cells[ (STRtoINT(Stgr_Base08.Cells[viContarCelulas,viContar17Combinacoes])) ,1]:='V';
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
      end;
   end;
   La_NSorteioRank.Caption := 'Número de sorteios apurados:  '+ (Stgr_Sorteios.RowCount-1).ToString;
   li_QtdOcorrencias12.Sort;
   li_QtdAtrasados12.Sort;
   li_QtdOcorrencias13.Sort;
   li_QtdAtrasados13.Sort;
   viContarCelulas :=0;
   for viContar17Combinacoes := (Stgr_Base17.RowCount-1) downto 1 do
   begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] := li_QtdOcorrencias12[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] :=  li_QtdAtrasados12[viContar17Combinacoes-1];
      Stgr_EstatisticasOcorrencias13.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] := li_QtdOcorrencias13[viContar17Combinacoes-1];
      Stgr_EstatisticasSorteiosAtrasados13.Cells[0, Stgr_Base17.RowCount-viContar17Combinacoes] :=  li_QtdAtrasados13[viContar17Combinacoes-1];
   end;
   for viContarCelulas := 1 to 5 do
   begin
      vaiRankProcessar1 [viContarCelulas] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, viContarCelulas],2).ToInteger;
      vaiRankProcessar1 [viContarCelulas+5] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContarCelulas],2).ToInteger;
   end;
   vaiRankProcessar2 [1] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 1],2).ToInteger;
   vaiRankProcessar2 [2] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 2],2).ToInteger;
   vaiRankProcessar2 [3] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 25],2).ToInteger;
   vaiRankProcessar2 [4] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 1],2).ToInteger;
   vaiRankProcessar2 [5] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 2],2).ToInteger;
   vaiRankProcessar2 [6] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 25],2).ToInteger;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasOcorrencias13.RowCount := Stgr_Base17.RowCount;
   Stgr_EstatisticasSorteiosAtrasados13.RowCount := Stgr_Base17.RowCount;
//   Stgr_EstatisticasOcorrencias[0,viContar17Combinacoes] :=
//   Stgr_EstatisticasSorteiosAtrasados[0,viContar17Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias13.Repaint;
   Stgr_EstatisticasSorteiosAtrasados13.Repaint;
   Showmessage('Fim do Rank');
   li_QtdOcorrencias12.DisposeOf;
   li_QtdAtrasados12.DisposeOf;
   li_QtdOcorrencias13.DisposeOf;
   li_QtdAtrasados13.DisposeOf;
end;





end.
