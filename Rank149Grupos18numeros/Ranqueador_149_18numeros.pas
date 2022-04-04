Unit Ranqueador_149_18numeros;

Interface

Uses
   Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Data.DB, STRUtils, Math,
   IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ExtCtrls, Vcl.ComCtrls,
   System.DateUtils,  System.Generics.Collections;

Type
   Tfrm_Ranqueador149Com18numeros = Class(TForm)
      IBQ_COMBINACOES: TIBQuery;
      Ds_E_SORTEIO_15N: TDataSource;
      Ibq_E_SORTEIO_15N: TIBQuery;
      IBTransaction1: TIBTransaction;
      IBDatabase1: TIBDatabase;
      Label1: TLabel;
    pgc_AbasPrincipais: TPageControl;
    tbs_Ranqueador149: TTabSheet;
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
    Stgr_Base18: TStringGrid;
      Stgr_Estatisticas: TStringGrid;
      Stgr_Sorteios: TStringGrid;
      Stgr_EstatisticasOcorrencias: TStringGrid;
      Stgr_EstatisticasSorteiosAtrasados: TStringGrid;
      Stgr_EstatisticasOcorrencias13: TStringGrid;
      Stgr_EstatisticasSorteiosAtrasados13: TStringGrid;
      Stgr_Estatisticas13: TStringGrid;
      Stgr_Base17VF: TStringGrid;
      Stgr_TodosNumerosP17: TStringGrid;
      stgr_excluiFixar_BaseL4Ac4: TStringGrid;
      stgr_excluiFixar_BaseL4Ac3: TStringGrid;
      stgr_excluiFixar_BaseL4Ac2: TStringGrid;
      stgr_excluiFixar_BaseL5Ac3: TStringGrid;
      stgr_excluiFixar_BaseL5Ac2: TStringGrid;
      stgr_excluiFixar_BaseL5Ac1: TStringGrid;
      Bbt_rank: TBitBtn;
      Bbt_carregarSorteio15N: TBitBtn;
    Stgr_Todos_Numeros: TStringGrid;
    Mem_Bloco149: TMemo;
      Procedure Bbt_CarregarSort(Sender: TObject);
      Procedure Bbt_rankClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
    procedure rb_gerarcomb01Ate08Click(Sender: TObject);
   Private
      { Private declarations }
      vcrDivisor1, vcrDivisor2, vcrDivisor3: Currency;
      vsiInicioLinhas1, vsiTerminoLinhas1: smallint;
      liS_15Sorteados: Tlist<String>;
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros();
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
    procedure CarregarGridCom149;
   Public
      { Public declarations }
   End;

Var
   frm_Ranqueador149Com18numeros: Tfrm_Ranqueador149Com18numeros;

Implementation

Uses
  System.SysUtils;

{$R *.dfm}

Procedure Tfrm_Ranqueador149Com18numeros.FormCreate(Sender: TObject);
Begin
   SELF.ClientWidth := 1499;
   SELF.ClientHeight := 645;
   SELF.Top := 57;
   SELF.Left := 6;
   // SELF.Visible := TRUE;
   Zerar_FLAGTodosNumeros;
   PreenchimentoInicialPadrao;

End;

Procedure Tfrm_Ranqueador149Com18numeros.Bbt_CarregarSort(Sender: TObject);
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
   Label_qtdSorteios.Caption := (viContar1 - 1).toString;
   ShowMessage('Ok');
End;


Procedure Tfrm_Ranqueador149Com18numeros.Bbt_rankClick(Sender: TObject);
Var
   viContar16Combinacoes, viContarSorteios, viValorDasCoicidencias, viContarCelulas: integer;
   li_QtdOcorrencias08, li_QtdAtrasados08: Tlist<String>;
   li_QtdOcorrencias08Base09, li_QtdAtrasados08Base09: Tlist<String>;
   viUltimoSorteio08, vdbQtdOcorrencias08, vdbPercentualOcorrencias08: Double;
   viUltimoSorteio08Base09, vdbQtdOcorrencias08Base09, vdbPercentualOcorrencias08Base09: Double;
   vsAtrasados: String;
   vtiInicio, viTermino: TDateTime;
Begin
   li_QtdOcorrencias08 := Tlist<String>.Create;
   li_QtdAtrasados08 := Tlist<String>.Create;
   li_QtdOcorrencias08Base09 := Tlist<String>.Create;
   li_QtdAtrasados08Base09 := Tlist<String>.Create;
   li_QtdOcorrencias08.Clear;
   li_QtdAtrasados08.Clear;
   vtiInicio := Now();
   For viContar16Combinacoes := 1 To Trunc((Stgr_Base18.RowCount - 1) / 1) Do
   Begin
      Stgr_Sorteios.Cells[17, 0] := viContar16Combinacoes.toString;
      Stgr_Sorteios.Repaint;
      // --> Montar Flags com as combina��es
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 1 TO 18 DO
      Begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Base18.Cells[viContarCelulas, viContar16Combinacoes].Trim)),
           1] := 'V';
      End;
      vdbQtdOcorrencias08 := 0;
      vdbQtdOcorrencias08Base09 := 0;
      For viContarSorteios := 1 To Trunc((Stgr_Sorteios.RowCount - 1) / 1) Do
      Begin
         // --> Montar Flags com os sorteios
         Falso_Linha2TodosNumeros();
         FOR viContarCelulas := 1 TO 15 DO
         Begin
            Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sorteios.Cells[viContarCelulas, viContarSorteios])),
              2] := 'V';
         End;
         viValorDasCoicidencias := 0;
         FOR viContarCelulas := 1 TO 25 DO
         Begin
            If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = 'V' Then
               If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = Stgr_Todos_Numeros.Cells
                 [viContarCelulas, 2] Then
                  viValorDasCoicidencias := viValorDasCoicidencias + 1;
            Stgr_Sorteios.Cells[17, viContarSorteios] := viValorDasCoicidencias.toString;
         End;
         If viValorDasCoicidencias = 8 Then
         Begin
            vdbQtdOcorrencias08 := vdbQtdOcorrencias08 + 1;
            viUltimoSorteio08 := viContarSorteios;
         End;
      End;
      // --> Estatisticas 08
      vdbPercentualOcorrencias08 := RoundTo((vdbQtdOcorrencias08 / (Stgr_Sorteios.RowCount - 1) * 100), -2);
      Stgr_Estatisticas.Cells[0, viContar16Combinacoes] := viContar16Combinacoes.toString;
      Stgr_Estatisticas.Cells[1, viContar16Combinacoes] :=
        RightStr('0000' + (vdbQtdOcorrencias08.toString), 5);
      Stgr_Estatisticas.Cells[2, viContar16Combinacoes] := vdbPercentualOcorrencias08.toString + '%';
      li_QtdOcorrencias08.add(RightStr('0000' + (vdbQtdOcorrencias08.toString), 5) + ' equivalente a ' +
        LeftStr((vdbPercentualOcorrencias08.toString) + '00000', 5) + '% com média de: 1 em ' +
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08, -4)).toString + ' na LINHA: ' +
        RightStr('0' + viContar16Combinacoes.toString, 2));
      Stgr_Estatisticas.Cells[3, viContar16Combinacoes] := ' 1 em ' +
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08, -4)).toString;
      Stgr_Estatisticas.Cells[4, viContar16Combinacoes] := viUltimoSorteio08.toString;
      Stgr_Estatisticas.Cells[5, viContar16Combinacoes] :=
        RightStr('00' + ((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08).toString, 3);
      If (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08) -
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08, 0))) >= 0 Then
      Begin
         vsAtrasados := RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08) -
           (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08, 0))).toString, 3) +
           ' concursos atrasados';
      End
      Else
      Begin
         vsAtrasados := '.faltam ' +
           StringReplace(RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08) -
           (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08, 0))).toString, 3), '-', '', []) +
           ' para 1 atraso';
      End;
              li_QtdAtrasados08.add(vsAtrasados + ' na linha ' + RightStr('0' + viContar16Combinacoes.toString, 2) +
                 ' no sorteio ' + (viUltimoSorteio08 + (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08, 0))
                 ).toString);
               Stgr_Sorteios.Repaint;
               Stgr_Estatisticas.Repaint;
//               Falso_Linha1TodosNumeros();
//               FOR viContarCelulas := 2 TO 10 DO
//               Begin
//                  Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Base09.Cells[viContarCelulas, viContar16Combinacoes])),
//                    1] := 'V';
//               End;
//               For viContarSorteios := 1 To Trunc((Stgr_Sorteios.RowCount - 1) / 1) Do
//               Begin
//                  // --> Montar Flags com os sorteios
//                  Falso_Linha2TodosNumeros();
//                  FOR viContarCelulas := 1 TO 15 DO
//                  Begin
//                     Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sorteios.Cells[viContarCelulas, viContarSorteios])),
//                       2] := 'V';
//                  End;
//                  viValorDasCoicidencias := 0;
//                  FOR viContarCelulas := 1 TO 25 DO
//                  Begin
//                     If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = 'V' Then
//                        If Stgr_Todos_Numeros.Cells[viContarCelulas, 1] = Stgr_Todos_Numeros.Cells
//                          [viContarCelulas, 2] Then
//                           viValorDasCoicidencias := viValorDasCoicidencias + 1;
//                     Stgr_Sorteios.Cells[18, viContarSorteios] := viValorDasCoicidencias.toString;
//                  End;
//                  If viValorDasCoicidencias = 08 Then
//                  Begin
//                     vdbQtdOcorrencias08Base09 := vdbQtdOcorrencias08Base09 + 1;
//                     viUltimoSorteio08Base09 := viContarSorteios;
//                  End;
//               End;
//               // --> Estat�sticas 08
//               // --> Montar Flags com as combina��es
//               vdbPercentualOcorrencias08Base09 :=
//                 RoundTo((vdbQtdOcorrencias08Base09 / (Stgr_Sorteios.RowCount - 1) * 100), -2);
//               Stgr_Estatisticas13.Cells[0, viContar16Combinacoes] := viContar16Combinacoes.toString;
//               Stgr_Estatisticas13.Cells[1, viContar16Combinacoes] :=
//                 RightStr('0000' + (vdbQtdOcorrencias08Base09.toString), 5);
//               Stgr_Estatisticas13.Cells[2, viContar16Combinacoes] := vdbPercentualOcorrencias08Base09.toString + '%';
//               li_QtdOcorrencias08Base09.add(RightStr('0000' + (vdbQtdOcorrencias08Base09.toString), 5) +
//                 ' equivalente a ' + LeftStr((vdbPercentualOcorrencias08Base09.toString) + '00000', 5) +
//                 '% com m�dia de: 1 em ' + (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, -4))
//                 .toString + ' na LINHA: ' + RightStr('0' + viContar16Combinacoes.toString, 2));
//               Stgr_Estatisticas13.Cells[3, viContar16Combinacoes] := ' 1 em ' +
//                 (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, -4)).toString;
//               Stgr_Estatisticas13.Cells[4, viContar16Combinacoes] := viUltimoSorteio08Base09.toString;
//               Stgr_Estatisticas13.Cells[5, viContar16Combinacoes] :=
//                 RightStr('00' + ((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09).toString, 3);
//
//               If (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09) -
//                 (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, 0))) >= 0 Then
//               Begin
//                  vsAtrasados := RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09) -
//                    (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, 0))).toString, 3) +
//                    ' concursos atrasados';
//               End
//               Else
//               Begin
//                  vsAtrasados := '.faltam ' +
//                    StringReplace(RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09) -
//                    (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, 0))).toString, 3), '-', '', [])
//                    + ' para 1 atraso';
//               End;
//               li_QtdAtrasados08Base09.add(vsAtrasados + ' na linha ' + RightStr('0' + viContar16Combinacoes.toString,
//                 2) + ' no sorteio ' + (viUltimoSorteio08Base09 + (RoundTo((Stgr_Sorteios.RowCount - 1) /
//                 vdbQtdOcorrencias08Base09, 0))).toString);
//               SELF.Repaint;
//               Scbx_GABARITO.Repaint;
//               pgc_AbasPrincipais.Repaint;
//               Stgr_Sorteios.Repaint;
//               Stgr_Estatisticas.Repaint;
   End;
   La_nSorteioRank.Caption := 'Número de sorteios apurados:  ';
   li_QtdOcorrencias08.Sort;
   li_QtdAtrasados08.Sort;
//   li_QtdOcorrencias08Base09.Sort;
//   li_QtdAtrasados08Base09.Sort;
   For viContar16Combinacoes := (Stgr_Base18.RowCount - 1) Downto 1 Do
   Begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base18.RowCount - viContar16Combinacoes] :=
        li_QtdOcorrencias08[viContar16Combinacoes - 1];
//      Stgr_EstatisticasOcorrencias13.Cells[0, Stgr_Base18.RowCount - viContar16Combinacoes] :=
//        li_QtdOcorrencias08Base09[viContar16Combinacoes - 1];
   End;
   For viContar16Combinacoes := (Stgr_Base18.RowCount - 1) Downto 1 Do
   Begin
      If copy(li_QtdAtrasados08[viContar16Combinacoes - 1], 1, 1) <> '.' Then
         Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base18.RowCount - viContar16Combinacoes] :=
           li_QtdAtrasados08[viContar16Combinacoes - 1]
      Else
      Begin
         viContarCelulas := Stgr_Base18.RowCount - viContar16Combinacoes;
         Break;
      End;
   End;
   For viContar16Combinacoes := 1 To (Stgr_Base18.RowCount - 1) Do
   Begin
      If copy(li_QtdAtrasados08[viContar16Combinacoes - 1], 1, 1) = '.' Then
      Begin
         Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContarCelulas] :=
           li_QtdAtrasados08[viContar16Combinacoes - 1];
         viContarCelulas := viContarCelulas + 1;
      End;
   End;

//            For viContar16Combinacoes := (Stgr_Base18.RowCount - 1) Downto 1 Do
//            Begin
//               If copy(li_QtdAtrasados08Base09[viContar16Combinacoes - 1], 1, 1) <> '.' Then
//                  Stgr_EstatisticasSorteiosAtrasados13.Cells[0, Stgr_Base18.RowCount - viContar16Combinacoes] :=
//                    li_QtdAtrasados08Base09[viContar16Combinacoes - 1]
//               Else
//               Begin
//                  viContarCelulas := Stgr_Base18.RowCount - viContar16Combinacoes;
//                  Break;
//               End;
//            End;
//            For viContar16Combinacoes := 1 To (Stgr_Base18.RowCount - 1) Do
//            Begin
//               If copy(li_QtdAtrasados08Base09[viContar16Combinacoes - 1], 1, 1) = '.' Then
//               Begin
//                  Stgr_EstatisticasSorteiosAtrasados13.Cells[0, viContarCelulas] :=
//                    li_QtdAtrasados08Base09[viContar16Combinacoes - 1];
//                  viContarCelulas := viContarCelulas + 1;
//               End;
//            End;
   // for viContarCelulas := 1 to 5 do
   // begin
   // vaiRankProcessar1 [viContarCelulas] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, viContarCelulas],2).ToInteger;
   // vaiRankProcessar1 [viContarCelulas+5] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContarCelulas],2).ToInteger;
   // end;
   // vaiRankProcessar2 [1] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 1],2).ToInteger;
   // vaiRankProcessar2 [2] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 2],2).ToInteger;
   // vaiRankProcessar2 [3] := RightStr(Stgr_EstatisticasOcorrencias.Cells[0, 25],2).ToInteger;
   // vaiRankProcessar2 [4] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 1],2).ToInteger;
   // vaiRankProcessar2 [5] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 2],2).ToInteger;
   // vaiRankProcessar2 [6] := RightStr(Stgr_EstatisticasSorteiosAtrasados.Cells[0, 25],2).ToInteger;
      // Stgr_EstatisticasOcorrencias[0,viContar16Combinacoes] :=
   // Stgr_EstatisticasSorteiosAtrasados[0,viContar16Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias13.Repaint;
   Stgr_EstatisticasSorteiosAtrasados13.Repaint;
   viTermino := Now();
   ShowMessage('Fim do Rank' + #13 + (SecondsBetween(viTermino, vtiInicio)).toString + ' segundos');
   li_QtdOcorrencias08.DisposeOf;
   li_QtdAtrasados08.DisposeOf;
   li_QtdOcorrencias08Base09.DisposeOf;
   li_QtdAtrasados08Base09.DisposeOf;
End;






Procedure Tfrm_Ranqueador149Com18numeros.Zerar_FLAGTodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.toString;
      Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
      Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
   End;
End;

Procedure Tfrm_Ranqueador149Com18numeros.Falso_Linha1TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
   End;
End;

Procedure Tfrm_Ranqueador149Com18numeros.Falso_Linha2TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
   End;
End;



Procedure Tfrm_Ranqueador149Com18numeros.CarregarGridCom149;
Var
   viContar, viContarColunas: integer;
Begin
   for viContar := 1 to Mem_Bloco149.Lines.Count-1 do
   begin
      Stgr_Base18.Cells[0,viContar] := (ViContar).ToString;
      for viContarColunas := 0 to 17 do
      begin
         Stgr_Base18.Cells[viContarColunas+1,viContar] := Copy(Mem_Bloco149.Lines.Strings[viContar],(viContarColunas*3),3);
      end;
   end;
   Stgr_Base18.RowCount := viContar;
   Stgr_Base18.Repaint;
End;


Procedure Tfrm_Ranqueador149Com18numeros.PreenchimentoInicialPadrao;
Var
   viContar: integer;
Begin
   Zerar_FLAGTodosNumeros();
   For viContar := 1 To 18 Do
   Begin
      Stgr_Base18.Cells[viContar, 0] := INTtoSTR(viContar);
   End;
   For viContar := 2 To 10 Do
   Begin
      Stgr_Base09.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   End;
   For viContar := 1 To 49 Do
   Begin
      Stgr_Base17VF.Cells[0, viContar] := INTtoSTR(viContar);
      Stgr_Base17VF.Cells[1, viContar] := 'V';
   End;
   CarregarGridCom149();

   Stgr_Base18.Height := Scbx_GABARITO.Height - 75;
   Stgr_Base09.Height := Scbx_GABARITO.Height - 75;
Mem_Bloco149.Height := Scbx_GABARITO.Height - 85;
   Stgr_Sorteios.Height := Scbx_GABARITO.Height - 75;
  // Stgr_Base18.RowCount := 41;
  // Stgr_Base09.RowCount := 41;

   Stgr_Estatisticas.RowCount := Stgr_Base18.RowCount;
   Stgr_Estatisticas.ColWidths[0] := 50;
   Stgr_Estatisticas.Cells[1, 0] := 'Total de Ocorrências';
   Stgr_Estatisticas.Cells[2, 0] := '% Ocorrências';
   Stgr_Estatisticas.Cells[3, 0] := 'M�dia Ocorr�ncias';
   Stgr_Estatisticas.Cells[4, 0] := '�ltimo Sorteio';
   Stgr_Estatisticas.Cells[5, 0] := 'N�mero de atrasos';
   Stgr_Estatisticas.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados.Height := Scbx_GABARITO.Height - 55;

   Stgr_Estatisticas13.RowCount := 41;
   Stgr_Estatisticas13.ColWidths[0] := 60;
   Stgr_Estatisticas13.Cells[1, 0] := 'Total de Ocorr�ncias';
   Stgr_Estatisticas13.Cells[2, 0] := '% Ocorr�ncias';
   Stgr_Estatisticas13.Cells[3, 0] := 'M�dia Ocorr�ncias';
   Stgr_Estatisticas13.Cells[4, 0] := '�ltimo Sorteio';
   Stgr_Estatisticas13.Cells[5, 0] := 'N�mero de atrasos';
   // Stgr_EstatisticasSorteiosAtrasados.Cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   // Stgr_EstatisticasSorteiosAtrasados13.cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   Stgr_Estatisticas13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados13.Height := Scbx_GABARITO.Height - 55;

  // Stgr_Base17VF.RowCount := 41;
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base18.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base18.RowCount;
   Stgr_EstatisticasOcorrencias13.RowCount := Stgr_Base18.RowCount;
   Stgr_EstatisticasSorteiosAtrasados13.RowCount := Stgr_Base18.RowCount;
   // stgr_10NaoSorteados_Comb1 - colunas fixas:
   // coluna 0 = numeroLinha, 1 = numeroOrigem, 2=numero ac9em16, 3=numero stgr_ac1em9, 4=Flag ac9em16, 5= Flag stgr_ac1em9
End;

procedure Tfrm_Ranqueador149Com18numeros.rb_gerarcomb01Ate08Click(Sender: TObject);
begin
   vsiInicioLinhas1 := 1;
   vsiTerminoLinhas1 := 09;
end;

End.




