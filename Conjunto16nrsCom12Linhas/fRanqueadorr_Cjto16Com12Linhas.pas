Unit fRanqueadorr_Cjto16Com12Linhas;

Interface

Uses
   Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Data.DB, STRUtils, Math,
   IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ExtCtrls, Vcl.ComCtrls,
   System.DateUtils,  System.Generics.Collections;

Type
   Tfrm_Ranqueador16Com12Linhas = Class(TForm)
      IBQ_COMBINACOES: TIBQuery;
      Ds_E_SORTEIO_15N: TDataSource;
      Ibq_E_SORTEIO_15N: TIBQuery;
      IBTransaction1: TIBTransaction;
      IBDatabase1: TIBDatabase;
      Label1: TLabel;
    pgc_AbasPrincipais: TPageControl;
    tbs_Ranqueador16: TTabSheet;
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
    pa_gerador16Comb1: TPanel;
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
      pa_PrepararGerar1: TPanel;
      Button_prepararComb1: TButton;
      btnGerarComb1: TButton;
      memoConjunto09: TMemo;
      Memo_conjunto04: TMemo;
      stgr_ac1em9: TStringGrid;
      stgr_ac7em16: TStringGrid;
      stgr_ac9em16: TStringGrid;
      pa_fimCombinacoesPara7: TPanel;
      Label17: TLabel;
      Label19: TLabel;
      Label20: TLabel;
    la_totaldeDadosGerados: TLabel;
      Label22: TLabel;
      LA_gINICIO_100REPET7: TLabel;
      Label34: TLabel;
      LA_gFIM_GERAR7: TLabel;
      Label42: TLabel;
    la_totaldeDadosFiltrados: TLabel;
      BitBtn_OkCombinacoesPara7: TBitBtn;
      BitBtn_BNCombinacoesPara7: TBitBtn;
      pa_gerarCombinacoes1: TPanel;
      Label23: TLabel;
      Label24: TLabel;
      BitBtn_OKGerarCombinacoes1: TBitBtn;
      BitBtn_VoltarCombinacoes1: TBitBtn;
      pa_GerarComb1_Geral: TPanel;
      Label25: TLabel;
    cb_Combinacoes1Geral: TComboBox;
      Rb_gerarComb01Ate20: TRadioButton;
      Rb_gerarComb21Ate40: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    stgr_10NaoSorteados_Comb1: TStringGrid;
    Label9: TLabel;
    la_tempoGerar: TLabel;
    pgbr_ac7em16: TProgressBar;
    pgbr_10NaoSorteados_Comb1: TProgressBar;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    pgbr_filtrandoComb1: TProgressBar;
    stgr_15Sorteados_Comb1: TStringGrid;
    Label13: TLabel;
    mem_Sorteados: TMemo;
      Procedure Bbt_CarregarSort(Sender: TObject);
      Procedure Bbt_rankClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure btnGerarComb1Click(Sender: TObject);
      Procedure Button_prepararComb1Click(Sender: TObject);
      Procedure Rb_gerarComb01Ate20Click(Sender: TObject);
      Procedure Rb_gerarComb21Ate40Click(Sender: TObject);
      Procedure BitBtn_OKGerarCombinacoes1Click(Sender: TObject);
      Procedure BitBtn_VoltarCombinacoes1Click(Sender: TObject);
    procedure BitBtn_OkCombinacoesPara7Click(Sender: TObject);
    procedure BitBtn_BNCombinacoesPara7Click(Sender: TObject);
   Private
      { Private declarations }
      vcrDivisor1, vcrDivisor2, vcrDivisor3: Currency;
      vsiInicioLinhas1, vsiTerminoLinhas1: smallint;
      Procedure PreenchimentoInicialPadrao;
      Procedure Zerar_FLAGTodosNumeros();
      Procedure Falso_Linha2TodosNumeros;
      Procedure Falso_Linha1TodosNumeros;
      Procedure ac8em9;
      Procedure ac7em16;
    procedure ac10NaoSorteados_1e9;
    procedure Cj4Todos4NaoSorteados;
    procedure ReconstroiTela;
    procedure MontaMemoBlocoNotasComb1(liS_15Sorteados: Tlist<string>);
   Public
      { Public declarations }
   End;

Var
   frm_Ranqueador16Com12Linhas: Tfrm_Ranqueador16Com12Linhas;

Implementation

Uses
  System.SysUtils;

{$R *.dfm}

Procedure Tfrm_Ranqueador16Com12Linhas.FormCreate(Sender: TObject);
Begin
   SELF.ClientWidth := 1495;
   SELF.ClientHeight := 620;
   SELF.Top := 57;
   SELF.Left := 6;
   // SELF.Visible := TRUE;
   Zerar_FLAGTodosNumeros;
   PreenchimentoInicialPadrao;
   pgbr_ac7em16.Position := 0;
   pgbr_ac7em16.Repaint;
   pgbr_10NaoSorteados_Comb1.Position := 0;
   pgbr_10NaoSorteados_Comb1.Repaint;
   pgbr_filtrandoComb1.Position := 0;
   pgbr_filtrandoComb1.Repaint;
End;

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
   Label_qtdSorteios.Caption := (viContar1 - 1).toString;
   ShowMessage('Ok');
End;

Procedure Tfrm_Ranqueador16Com12Linhas.Bbt_rankClick(Sender: TObject);
Var
   viContar16Combinacoes, viContarSorteios, viValorDasCoicidencias, viContarCelulas: integer;
   li_QtdOcorrencias07, li_QtdAtrasados07: Tlist<String>;
   li_QtdOcorrencias08Base09, li_QtdAtrasados08Base09: Tlist<String>;
   viUltimoSorteio07, vdbQtdOcorrencias07, vdbPercentualOcorrencias07: Double;
   viUltimoSorteio08Base09, vdbQtdOcorrencias08Base09, vdbPercentualOcorrencias08Base09: Double;
   vsAtrasados: String;
   vtiInicio, viTermino: TDateTime;
Begin
   li_QtdOcorrencias07 := Tlist<String>.Create;
   li_QtdAtrasados07 := Tlist<String>.Create;
   li_QtdOcorrencias08Base09 := Tlist<String>.Create;
   li_QtdAtrasados08Base09 := Tlist<String>.Create;
   li_QtdOcorrencias07.Clear;
   li_QtdAtrasados07.Clear;
   vtiInicio := Now();
   For viContar16Combinacoes := 1 To Trunc((Stgr_Base16.RowCount - 1) / 1) Do
   Begin
      Stgr_Sorteios.Cells[17, 0] := viContar16Combinacoes.toString;
      Stgr_Sorteios.Repaint;
      // --> Montar Flags com as combinações
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 17 DO
      Begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Base16.Cells[viContarCelulas, viContar16Combinacoes])),
           1] := 'V';
      End;
      vdbQtdOcorrencias07 := 0;
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
         If viValorDasCoicidencias = 7 Then
         Begin
            vdbQtdOcorrencias07 := vdbQtdOcorrencias07 + 1;
            viUltimoSorteio07 := viContarSorteios;
         End;
      End;
      // --> Estatisticas 07
      vdbPercentualOcorrencias07 := RoundTo((vdbQtdOcorrencias07 / (Stgr_Sorteios.RowCount - 1) * 100), -2);
      Stgr_Estatisticas.Cells[0, viContar16Combinacoes] := viContar16Combinacoes.toString;
      Stgr_Estatisticas.Cells[1, viContar16Combinacoes] :=
        RightStr('0000' + (vdbQtdOcorrencias07.toString), 5);
      Stgr_Estatisticas.Cells[2, viContar16Combinacoes] := vdbPercentualOcorrencias07.toString + '%';
      li_QtdOcorrencias07.add(RightStr('0000' + (vdbQtdOcorrencias07.toString), 5) + ' equivalente a ' +
        LeftStr((vdbPercentualOcorrencias07.toString) + '00000', 5) + '% com média de: 1 em ' +
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias07, -4)).toString + ' na LINHA: ' +
        RightStr('0' + viContar16Combinacoes.toString, 2));
      Stgr_Estatisticas.Cells[3, viContar16Combinacoes] := ' 1 em ' +
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias07, -4)).toString;
      Stgr_Estatisticas.Cells[4, viContar16Combinacoes] := viUltimoSorteio07.toString;
      Stgr_Estatisticas.Cells[5, viContar16Combinacoes] :=
        RightStr('00' + ((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio07).toString, 3);
      If (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio07) -
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias07, 0))) >= 0 Then
      Begin
         vsAtrasados := RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio07) -
           (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias07, 0))).toString, 3) +
           ' concursos atrasados';
      End
      Else
      Begin
         vsAtrasados := '.faltam ' +
           StringReplace(RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio07) -
           (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias07, 0))).toString, 3), '-', '', []) +
           ' para 1 atraso';
      End;
      li_QtdAtrasados07.add(vsAtrasados + ' na linha ' + RightStr('0' + viContar16Combinacoes.toString, 2) +
        ' no sorteio ' + (viUltimoSorteio07 + (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias07, 0))
        ).toString);
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
      Falso_Linha1TodosNumeros();
      FOR viContarCelulas := 2 TO 10 DO
      Begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Base09.Cells[viContarCelulas, viContar16Combinacoes])),
           1] := 'V';
      End;
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
            Stgr_Sorteios.Cells[18, viContarSorteios] := viValorDasCoicidencias.toString;
         End;
         If viValorDasCoicidencias = 08 Then
         Begin
            vdbQtdOcorrencias08Base09 := vdbQtdOcorrencias08Base09 + 1;
            viUltimoSorteio08Base09 := viContarSorteios;
         End;
      End;
      // --> Estatísticas 08
      // --> Montar Flags com as combinações
      vdbPercentualOcorrencias08Base09 :=
        RoundTo((vdbQtdOcorrencias08Base09 / (Stgr_Sorteios.RowCount - 1) * 100), -2);
      Stgr_Estatisticas13.Cells[0, viContar16Combinacoes] := viContar16Combinacoes.toString;
      Stgr_Estatisticas13.Cells[1, viContar16Combinacoes] :=
        RightStr('0000' + (vdbQtdOcorrencias08Base09.toString), 5);
      Stgr_Estatisticas13.Cells[2, viContar16Combinacoes] := vdbPercentualOcorrencias08Base09.toString + '%';
      li_QtdOcorrencias08Base09.add(RightStr('0000' + (vdbQtdOcorrencias08Base09.toString), 5) +
        ' equivalente a ' + LeftStr((vdbPercentualOcorrencias08Base09.toString) + '00000', 5) +
        '% com média de: 1 em ' + (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, -4))
        .toString + ' na LINHA: ' + RightStr('0' + viContar16Combinacoes.toString, 2));
      Stgr_Estatisticas13.Cells[3, viContar16Combinacoes] := ' 1 em ' +
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, -4)).toString;
      Stgr_Estatisticas13.Cells[4, viContar16Combinacoes] := viUltimoSorteio08Base09.toString;
      Stgr_Estatisticas13.Cells[5, viContar16Combinacoes] :=
        RightStr('00' + ((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09).toString, 3);

      If (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09) -
        (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, 0))) >= 0 Then
      Begin
         vsAtrasados := RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09) -
           (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, 0))).toString, 3) +
           ' concursos atrasados';
      End
      Else
      Begin
         vsAtrasados := '.faltam ' +
           StringReplace(RightStr('00' + (((Stgr_Sorteios.RowCount - 1) - viUltimoSorteio08Base09) -
           (RoundTo((Stgr_Sorteios.RowCount - 1) / vdbQtdOcorrencias08Base09, 0))).toString, 3), '-', '', [])
           + ' para 1 atraso';
      End;
      li_QtdAtrasados08Base09.add(vsAtrasados + ' na linha ' + RightStr('0' + viContar16Combinacoes.toString,
        2) + ' no sorteio ' + (viUltimoSorteio08Base09 + (RoundTo((Stgr_Sorteios.RowCount - 1) /
        vdbQtdOcorrencias08Base09, 0))).toString);
      SELF.Repaint;
      Scbx_GABARITO.Repaint;
      pgc_AbasPrincipais.Repaint;
      Stgr_Sorteios.Repaint;
      Stgr_Estatisticas.Repaint;
   End;
   La_nSorteioRank.Caption := 'Número de sorteios apurados:  ';
   li_QtdOcorrencias07.Sort;
   li_QtdAtrasados07.Sort;
   li_QtdOcorrencias08Base09.Sort;
   li_QtdAtrasados08Base09.Sort;
   For viContar16Combinacoes := (Stgr_Base16.RowCount - 1) Downto 1 Do
   Begin
      Stgr_EstatisticasOcorrencias.Cells[0, Stgr_Base16.RowCount - viContar16Combinacoes] :=
        li_QtdOcorrencias07[viContar16Combinacoes - 1];
      Stgr_EstatisticasOcorrencias13.Cells[0, Stgr_Base16.RowCount - viContar16Combinacoes] :=
        li_QtdOcorrencias08Base09[viContar16Combinacoes - 1];
   End;
   For viContar16Combinacoes := (Stgr_Base16.RowCount - 1) Downto 1 Do
   Begin
      If copy(li_QtdAtrasados07[viContar16Combinacoes - 1], 1, 1) <> '.' Then
         Stgr_EstatisticasSorteiosAtrasados.Cells[0, Stgr_Base16.RowCount - viContar16Combinacoes] :=
           li_QtdAtrasados07[viContar16Combinacoes - 1]
      Else
      Begin
         viContarCelulas := Stgr_Base16.RowCount - viContar16Combinacoes;
         Break;
      End;
   End;
   For viContar16Combinacoes := 1 To (Stgr_Base16.RowCount - 1) Do
   Begin
      If copy(li_QtdAtrasados07[viContar16Combinacoes - 1], 1, 1) = '.' Then
      Begin
         Stgr_EstatisticasSorteiosAtrasados.Cells[0, viContarCelulas] :=
           li_QtdAtrasados07[viContar16Combinacoes - 1];
         viContarCelulas := viContarCelulas + 1;
      End;
   End;

   For viContar16Combinacoes := (Stgr_Base16.RowCount - 1) Downto 1 Do
   Begin
      If copy(li_QtdAtrasados08Base09[viContar16Combinacoes - 1], 1, 1) <> '.' Then
         Stgr_EstatisticasSorteiosAtrasados13.Cells[0, Stgr_Base16.RowCount - viContar16Combinacoes] :=
           li_QtdAtrasados08Base09[viContar16Combinacoes - 1]
      Else
      Begin
         viContarCelulas := Stgr_Base16.RowCount - viContar16Combinacoes;
         Break;
      End;
   End;
   For viContar16Combinacoes := 1 To (Stgr_Base16.RowCount - 1) Do
   Begin
      If copy(li_QtdAtrasados08Base09[viContar16Combinacoes - 1], 1, 1) = '.' Then
      Begin
         Stgr_EstatisticasSorteiosAtrasados13.Cells[0, viContarCelulas] :=
           li_QtdAtrasados08Base09[viContar16Combinacoes - 1];
         viContarCelulas := viContarCelulas + 1;
      End;
   End;
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
   Stgr_EstatisticasOcorrencias.RowCount := Stgr_Base16.RowCount;
   Stgr_EstatisticasSorteiosAtrasados.RowCount := Stgr_Base16.RowCount;
   Stgr_EstatisticasOcorrencias13.RowCount := Stgr_Base16.RowCount;
   Stgr_EstatisticasSorteiosAtrasados13.RowCount := Stgr_Base16.RowCount;
   // Stgr_EstatisticasOcorrencias[0,viContar16Combinacoes] :=
   // Stgr_EstatisticasSorteiosAtrasados[0,viContar16Combinacoes] :=
   Stgr_EstatisticasOcorrencias.Repaint;
   Stgr_EstatisticasSorteiosAtrasados.Repaint;
   Stgr_EstatisticasOcorrencias13.Repaint;
   Stgr_EstatisticasSorteiosAtrasados13.Repaint;
   viTermino := Now();
   ShowMessage('Fim do Rank' + #13 + (SecondsBetween(viTermino, vtiInicio)).toString + ' segundos');
   li_QtdOcorrencias07.DisposeOf;
   li_QtdAtrasados07.DisposeOf;
   li_QtdOcorrencias08Base09.DisposeOf;
   li_QtdAtrasados08Base09.DisposeOf;
End;

Procedure Tfrm_Ranqueador16Com12Linhas.BitBtn_VoltarCombinacoes1Click(Sender: TObject);
Begin
   pa_gerarCombinacoes1.Visible := false;
   pa_PrepararGerar1.SetFocus;
End;

Procedure Tfrm_Ranqueador16Com12Linhas.btnGerarComb1Click(Sender: TObject);
Begin
   Rb_gerarComb01Ate20.Checked := false;
   Rb_gerarComb21Ate40.Checked := false;
   pa_gerarCombinacoes1.Top := 55;
   pa_gerarCombinacoes1.Left := 04;
   pa_gerarCombinacoes1.Enabled := true;
   pa_gerarCombinacoes1.Visible := true;
End;


procedure Tfrm_Ranqueador16Com12Linhas.BitBtn_OkCombinacoesPara7Click(Sender: TObject);
begin
   pa_fimCombinacoesPara7.Visible := false;
   pa_PrepararGerar1.SetFocus;
end;

Procedure Tfrm_Ranqueador16Com12Linhas.BitBtn_OKGerarCombinacoes1Click(Sender: TObject);
var
   vtiInicio, viTermino: TDateTime;
Begin
   If (Rb_gerarComb01Ate20.Checked = false) And (Rb_gerarComb21Ate40.Checked = false) Then
   Begin
      // MessageDlg('Escolha as linhas para o processamento',[mtError],[btnYes,btnNo],1);
      ShowMessage('Escolha as linhas para o processamento');
      pa_gerarCombinacoes1.SetFocus;
      Abort
   End;
   pa_gerarCombinacoes1.Visible := false;
   LA_gINICIO_100REPET7.Caption := DateToStr(Date()) + ' - ' +TimeToStr(time);
   vtiInicio := Now;

   ac7em16();
   ac8em9();
   ac10NaoSorteados_1e9();
   if (cb_Combinacoes1Geral.ItemIndex=0) or (cb_Combinacoes1Geral.ItemIndex=3) then
      sleep(1);
   if (cb_Combinacoes1Geral.ItemIndex=1) or (cb_Combinacoes1Geral.ItemIndex=3) then
      Cj4Todos4NaoSorteados();

   pa_fimCombinacoesPara7.Top := 48;
   pa_fimCombinacoesPara7.Left := 10;
   pa_fimCombinacoesPara7.Enabled := true;
   pa_fimCombinacoesPara7.Visible := true;
   LA_gFIM_GERAR7.Caption := DateToStr(Date()) + ' - ' +TimeToStr(time);
   viTermino := Now;
   la_tempoGerar.Caption := (SecondsBetween(viTermino, vtiInicio)).toString + ' segundos'
End;


Procedure Tfrm_Ranqueador16Com12Linhas.Button_prepararComb1Click(Sender: TObject);
Begin
   sleep(1000);
   btnGerarComb1.Enabled := true;
End;


Procedure Tfrm_Ranqueador16Com12Linhas.ac8em9();
Var
   viContadorBase, viComb01: integer;
   viLinhas, viNumero, viContarColunas, viContarCelulas: integer;
Begin
   scrollBox_Resultado.HorzScrollBar.Position := 400;
   scrollBox_Resultado.Repaint;
   viLinhas := 1;
   For viContadorBase := vsiInicioLinhas1 To vsiTerminoLinhas1 Do
   Begin
      For viComb01 := 1 To 9 Do
      Begin
         Falso_Linha1TodosNumeros;
         For viContarColunas := 1 To 9 Do
         Begin
            If viContarColunas = viComb01 Then
            Begin
               stgr_ac1em9.Cells[02, viLinhas] := copy((memoConjunto09.Lines.Strings[viContadorBase]),
                 viContarColunas * 3 + 1, 2);
               continue;
            End;
            viNumero := STRtoINT(copy((memoConjunto09.Lines.Strings[viContadorBase]),
              viContarColunas * 3 + 1, 2));
            Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';

         End;
         viContarCelulas := 1;
         For viContarColunas := 1 To 25 Do
         Begin
            If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') Then
            Begin
               stgr_ac8em9.Cells[viContarCelulas + 1, viLinhas] :=
                 RightStr('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
               viContarCelulas := viContarCelulas + 1;
            End;
         End;
         // If viContarCelulas <> 9 Then
         // Continue;
         // FOR viContarColunas
         stgr_ac8em9.Cells[00, viLinhas] := viLinhas.toString;
         stgr_ac8em9.Cells[01, viLinhas] := viContadorBase.toString;
         stgr_ac1em9.Cells[00, viLinhas] := viLinhas.toString;
         stgr_ac1em9.Cells[01, viLinhas] := viContadorBase.toString;
         viLinhas := viLinhas + 1;
      End;
   End;
   stgr_ac8em9.RowCount := viLinhas;
   stgr_ac1em9.RowCount := viLinhas;
   stgr_ac8em9.Repaint;
   stgr_ac1em9.Repaint;
   ReconstroiTela();
End;


Procedure Tfrm_Ranqueador16Com12Linhas.ac7em16();
Var
   viContadorBase, viComb01, viComb02, viComb03, viComb04, viComb05, viComb06, viComb07: integer;
   viLinhas, viContarColunas, viContarCelulas, viNumero: integer;
Begin
   pgbr_ac7em16.Position := 0;
   pgbr_ac7em16.Repaint;
   scrollBox_Resultado.HorzScrollBar.Position := 0;
   scrollBox_Resultado.Repaint;
   viLinhas := 1;
   For viContadorBase := vsiInicioLinhas1 To vsiTerminoLinhas1 Do
   Begin
      For viComb01 := 1 To Trunc(10 / 1) Do // - /5
      Begin
         stgr_ac7em16.Cells[00, 0] := viContadorBase.toString;
         stgr_ac7em16.Repaint;
         For viComb02 := viComb01 + 1 To Trunc(11 / 1) Do  // - /3
         Begin
            For viComb03 := viComb02 + 1 To 12 Do
            Begin
               For viComb04 := viComb03 + 1 To 13 Do
               Begin
                  For viComb05 := viComb04 + 1 To 14 Do
                  Begin
                     For viComb06 := viComb05 + 1 To 15 Do
                     Begin
                        For viComb07 := viComb06 + 1 To Trunc(16/1) Do  // - /1.5
                        Begin
                           stgr_ac7em16.Cells[02, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb01 * 3 + 1, 2);
                           stgr_ac7em16.Cells[03, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb02 * 3 + 1, 2);
                           stgr_ac7em16.Cells[04, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb03 * 3 + 1, 2);
                           stgr_ac7em16.Cells[05, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb04 * 3 + 1, 2);
                           stgr_ac7em16.Cells[06, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb05 * 3 + 1, 2);
                           stgr_ac7em16.Cells[07, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb06 * 3 + 1, 2);
                           stgr_ac7em16.Cells[08, viLinhas] := copy((memoConjunto16.Lines.Strings[viContadorBase]), viComb07 * 3 + 1, 2);
                           Falso_Linha1TodosNumeros;
                           Falso_Linha2TodosNumeros;
                           For viContarColunas := 2 To 08 Do
                           Begin
                              viNumero := STRtoINT(stgr_ac7em16.Cells[viContarColunas, viLinhas]);
                              Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';
                           End;
                           For viContarColunas := 1 To 16 Do
                           Begin
                              viNumero := STRtoINT(copy((memoConjunto16.Lines.Strings[viContadorBase]), viContarColunas * 3 + 1, 2));
                              Stgr_Todos_Numeros.Cells[viNumero, 2] := 'V';
                           End;
                           viContarCelulas := 1;
                           viNumero := 0;
                           For viContarColunas := 1 To 25 Do
                           Begin
                              if  (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') then
                                 viNumero := viNumero + 1;
                              If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'F') and (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') Then
                              Begin
                                 stgr_ac9em16.Cells[viContarCelulas + 1, viLinhas] :=
                                   RightStr('0' + (copy((memoConjunto16.Lines.Strings[viContadorBase]), viNumero * 3 + 1, 2)), 2);
                                 viContarCelulas := viContarCelulas + 1;
                              End;
                           End;
                           stgr_ac7em16.Cells[00, viLinhas] := viLinhas.toString;
                           stgr_ac7em16.Cells[01, viLinhas] := viContadorBase.toString;
                           stgr_ac9em16.Cells[00, viLinhas] := viLinhas.toString;
                           stgr_ac9em16.Cells[01, viLinhas] := viContadorBase.toString;
                           viLinhas := viLinhas + 1;
                        End;
                     End;
                  End;
               End;
            End;
         End;
         pgbr_ac7em16.Position := Trunc((viContadorBase/vsiTerminoLinhas1)*100);
         pgbr_ac7em16.Repaint;
         stgr_ac7em16.RowCount := viLinhas;
         stgr_ac7em16.Repaint;
         stgr_ac9em16.RowCount := viLinhas;
         stgr_ac9em16.Repaint;
      End;
   End;
   pgbr_ac7em16.Position := 100;
   pgbr_ac7em16.Repaint;
   stgr_ac7em16.RowCount := viLinhas;
   stgr_ac7em16.Repaint;
   stgr_ac9em16.RowCount := viLinhas;
   stgr_ac9em16.Repaint;
   ReconstroiTela();
End;

Procedure Tfrm_Ranqueador16Com12Linhas.ac10NaoSorteados_1e9();
Var
   viContadorBase, viComb01, viComb02: integer;
   viLinhas, viContarColunas, viContarCelulas: integer;
Begin
   pgbr_10NaoSorteados_Comb1.Position := 0;
   pgbr_10NaoSorteados_Comb1.Repaint;
   scrollBox_Resultado.HorzScrollBar.Position := 970;
   scrollBox_Resultado.Repaint;
   viLinhas := 1;
   For viContadorBase := vsiInicioLinhas1 To vsiTerminoLinhas1 Do
   Begin
      stgr_10NaoSorteados_Comb1.Cells[00, 00] := viContadorBase.toString;
      stgr_10NaoSorteados_Comb1.Repaint;
      For viComb01 := 1 To stgr_ac9em16.RowCount-1 Do
      Begin
         if (stgr_ac9em16.Cells[01,viComb01].ToInteger) <> viContadorBase then
            continue;
         For viComb02 := 1 To stgr_ac1em9.RowCount-1 Do
         Begin
            if (stgr_ac9em16.Cells[01,viComb01].ToInteger) <> (stgr_ac1em9.Cells[01,viComb02].ToInteger) then
               continue;
            stgr_10NaoSorteados_Comb1.Cells[00, viLinhas] := viLinhas.toString;
            stgr_10NaoSorteados_Comb1.Cells[01, viLinhas] := viContadorBase.toString;
            stgr_10NaoSorteados_Comb1.Cells[02, viLinhas] := viComb01.toString;
            stgr_10NaoSorteados_Comb1.Cells[03, viLinhas] := viComb02.toString;
            stgr_10NaoSorteados_Comb1.Cells[04, viLinhas] := '-';
            stgr_10NaoSorteados_Comb1.Cells[05, viLinhas] := '-';
            stgr_15Sorteados_Comb1.Cells[00, viLinhas] := viLinhas.toString;
            stgr_15Sorteados_Comb1.Cells[01, viLinhas] := viContadorBase.toString;
            stgr_15Sorteados_Comb1.Cells[02, viLinhas] := viComb01.toString;
            stgr_15Sorteados_Comb1.Cells[03, viLinhas] := viComb02.toString;
            stgr_15Sorteados_Comb1.Cells[04, viLinhas] := '-';
            stgr_15Sorteados_Comb1.Cells[05, viLinhas] := '-';
            for viContarColunas := 1 to 9 do
            begin
               stgr_10NaoSorteados_Comb1.Cells[05+viContarColunas, viLinhas] := stgr_ac9em16.Cells[01+viContarColunas,viComb01];
            end;
            stgr_10NaoSorteados_Comb1.Cells[15, viLinhas] := stgr_ac1em9.Cells[02,viComb02];
            for viContarColunas := 1 to 7 do
            begin
               stgr_15Sorteados_Comb1.Cells[05+viContarColunas, viLinhas] := stgr_ac7em16.Cells[01+viContarColunas,viComb01];
            end;
            for viContarColunas := 1 to 8 do
            begin
               stgr_15Sorteados_Comb1.Cells[12+viContarColunas, viLinhas] := stgr_ac8em9.Cells[01+viContarColunas,viComb02];
            end;
            viLinhas := viLinhas + 1;
         End;
      End;
      pgbr_10NaoSorteados_Comb1.Position := Trunc((viContadorBase/vsiTerminoLinhas1)*100);
      pgbr_10NaoSorteados_Comb1.Repaint;
      stgr_10NaoSorteados_Comb1.RowCount := viLinhas;
      stgr_10NaoSorteados_Comb1.Repaint;
      stgr_15Sorteados_Comb1.RowCount := viLinhas;
      stgr_15Sorteados_Comb1.Repaint;
   End;
   pgbr_10NaoSorteados_Comb1.Position := 100;
   pgbr_10NaoSorteados_Comb1.Repaint;
   stgr_10NaoSorteados_Comb1.RowCount := viLinhas;
   stgr_10NaoSorteados_Comb1.Repaint;
   stgr_15Sorteados_Comb1.RowCount := viLinhas;
   stgr_15Sorteados_Comb1.Repaint;
   ReconstroiTela();
End;

   // Cj4 n. onde todos os 4 Não sorteados
Procedure Tfrm_Ranqueador16Com12Linhas.Cj4Todos4NaoSorteados();
Var
   viContadorBase, viContar_conjunto04: integer;
   viLinhas, viContarColunas, viContarCelulas, viNumero: integer;
   vsFlag1, vsFlag2, vsSorteados : string;
   liS_15Sorteados: Tlist<String>;
Begin
   liS_15Sorteados:= Tlist<String>.Create;
   pgbr_filtrandoComb1.Position := 0;
   pgbr_filtrandoComb1.Repaint;
   scrollBox_Resultado.HorzScrollBar.Position := 1170;
   scrollBox_Resultado.Repaint;
   viLinhas := 1;
   For viContadorBase := 1 To stgr_10NaoSorteados_Comb1.RowCount-1 Do
   Begin
      if viContadorBase mod 25  = 0 then
      begin
         stgr_10NaoSorteados_Comb1.Cells[0, 0]:= IntToStr(viContadorBase);
         stgr_10NaoSorteados_Comb1.Repaint;
         pgbr_filtrandoComb1.Position := Trunc((viContadorBase/(stgr_10NaoSorteados_Comb1.RowCount-1))*100);
         pgbr_filtrandoComb1.Repaint;
      end;
      vsFlag1:= 'F';
      vsFlag2:= 'F';
      For viContar_conjunto04 := 1 To 20 do
      Begin
         // primeira ocorrencia
         if (vsflag1='V') and (vsFlag2='V')Then
         begin
            Continue;
         end;
         Falso_Linha1TodosNumeros;
         Falso_Linha2TodosNumeros;
         For viContarColunas := 6 To 14 Do
         Begin
            viNumero := STRtoINT(stgr_10NaoSorteados_Comb1.Cells[viContarColunas, viContadorBase]);
            Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';
         End;
         For viContarColunas := 1 To 4 Do
         Begin
            viNumero := STRtoINT(copy((Memo_conjunto04.Lines.Strings[viContar_conjunto04]), viContarColunas * 3 + 1, 2));
            Stgr_Todos_Numeros.Cells[viNumero, 2] := 'V';
         End;
         viContarCelulas := 0;
         For viContarColunas := 1 To 25 Do
         Begin
            If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') and (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') Then
            Begin
               viContarCelulas := viContarCelulas + 1;
            End;
         End;
         If viContarCelulas = 3 Then
            vsFlag1 := 'V';
         stgr_10NaoSorteados_Comb1.Cells[04, viContadorBase] := vsFlag1;
         // ocorrencia no último
         Falso_Linha1TodosNumeros;
         Falso_Linha2TodosNumeros;
            viNumero := STRtoINT(stgr_10NaoSorteados_Comb1.Cells[15, viContadorBase]);
            Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';
         For viContarColunas := 1 To 4 Do
         Begin
            viNumero := STRtoINT(copy((Memo_conjunto04.Lines.Strings[viContar_conjunto04]), viContarColunas * 3 + 1, 2));
            Stgr_Todos_Numeros.Cells[viNumero, 2] := 'V';
         End;
         viContarCelulas := 0;
         For viContarColunas := 1 To 25 Do
         Begin
            If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') and (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') Then
            Begin
               viContarCelulas := viContarCelulas + 1;
            End;
         End;
         If viContarCelulas = 1 Then
            vsFlag2 := 'V';
         stgr_10NaoSorteados_Comb1.Cells[05, viContadorBase] := vsFlag2;
      End;
      Falso_Linha1TodosNumeros;
      Falso_Linha2TodosNumeros;
      For viContarColunas := 6 To 15 Do
      Begin
         viNumero := STRtoINT(stgr_10NaoSorteados_Comb1.Cells[viContarColunas, viContadorBase]);
         Stgr_Todos_Numeros.Cells[viNumero, 1] := 'V';
      End;
      For viContarColunas := 6 To 20 Do
      Begin
         viNumero := STRtoINT(stgr_15Sorteados_Comb1.Cells[viContarColunas, viContadorBase]);
         Stgr_Todos_Numeros.Cells[viNumero, 2] := 'V';
      End;
      viContarCelulas := 6;
      For viContarColunas := 1 To 25 Do
      Begin
         If (Stgr_Todos_Numeros.Cells[viContarColunas, 1] = 'V') Then
         Begin
            stgr_10NaoSorteados_Comb1.Cells[ViContarCelulas, viContadorBase] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
            viContarCelulas := viContarCelulas + 1;
         End;
      End;
      viContarCelulas := 6;
      vsSorteados := '';
      For viContarColunas := 1 To 25 Do
      Begin
         If (Stgr_Todos_Numeros.Cells[viContarColunas, 2] = 'V') Then
         Begin
            stgr_15Sorteados_Comb1.Cells[ViContarCelulas, viContadorBase] := RIGHTSTR('0' + (Stgr_Todos_Numeros.Cells[viContarColunas, 0]), 2);
            vsSorteados := vsSorteados+stgr_15Sorteados_Comb1.Cells[ViContarCelulas, viContadorBase] + ' ';
            viContarCelulas := viContarCelulas + 1;
         End;
      End;
      if (vsflag1='V') and (vsFlag2='V')Then
         liS_15Sorteados.Add(vsSorteados);
   End;
   liS_15Sorteados.Sort;
   MontaMemoBlocoNotasComb1(liS_15Sorteados);
   pgbr_filtrandoComb1.Position := 100;
   pgbr_filtrandoComb1.Repaint;
   la_totaldeDadosGerados.Caption := (stgr_10NaoSorteados_Comb1.RowCount-1).ToString;
   la_totaldeDadosFiltrados.Caption := (liS_15Sorteados.Count-1).ToString;
   ReconstroiTela();
End;


procedure Tfrm_Ranqueador16Com12Linhas.BitBtn_BNCombinacoesPara7Click(Sender: TObject);
begin
   mem_Sorteados.Lines.SaveToFile('C:\CXLOTOFACIL\25_Conjuntos_16por9_Comb1.TXT');
   winExec('Notepad.exe C:\CXLOTOFACIL\25_Conjuntos_16por9_Comb1.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\CXLOTOFACIL\25_Conjuntos_16por9_Comb1.TXT');
end;


procedure Tfrm_Ranqueador16Com12Linhas.ReconstroiTela;
begin
  frm_Ranqueador16Com12Linhas.WindowState := wsMinimized;
  frm_Ranqueador16Com12Linhas.WindowState := wsNormal;
  pgc_AbasPrincipais.Repaint;
  pa_barraLateralComb7.Repaint;
  pgbr_ac7em16.Repaint;
  pgbr_10NaoSorteados_Comb1.Repaint;
  pgbr_filtrandoComb1.Repaint;
  pa_gerador16Comb1.Repaint;
  sleep(99);
end;

procedure Tfrm_Ranqueador16Com12Linhas.MontaMemoBlocoNotasComb1(liS_15Sorteados: Tlist<string>);
var
  viContadorBase: Integer;
  vcTitulo, vcSubTitulo : String;
begin
   vcTitulo := 'Resultado dos números gerados a partir dos Conjuntos de 16 x 9 números';
   if Rb_gerarComb01Ate20.Checked then
      vcSubTitulo := Rb_gerarComb01Ate20.Caption;
   if Rb_gerarComb21Ate40.Checked then
      vcSubTitulo := Rb_gerarComb21Ate40.Caption;
   vcSubTitulo := vcSubTitulo+#13+cb_Combinacoes1Geral.Text;
   mem_Sorteados.Clear;
   mem_Sorteados.Lines.Add(vcTitulo);
   mem_Sorteados.Lines.Add(vcSubTitulo);
   mem_Sorteados.Lines.Add('TOTAL: ' + INTtoSTR(liS_15Sorteados.Count-1));
   mem_Sorteados.Lines.Add('----------------------------');
   for viContadorBase := 1 to liS_15Sorteados.Count-1 do
   begin
      mem_Sorteados.Lines.Add(liS_15Sorteados[viContadorBase]);
   end;
   mem_Sorteados.Repaint;
end;




Procedure Tfrm_Ranqueador16Com12Linhas.Zerar_FLAGTodosNumeros();
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

Procedure Tfrm_Ranqueador16Com12Linhas.Falso_Linha1TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
   End;
End;

Procedure Tfrm_Ranqueador16Com12Linhas.Falso_Linha2TodosNumeros();
Var
   viContar: integer;
Begin
   For viContar := 1 To 25 Do
   Begin
      Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
   End;
End;

Procedure Tfrm_Ranqueador16Com12Linhas.PreenchimentoInicialPadrao;
Var
   viContar: integer;
Begin
   Zerar_FLAGTodosNumeros();
   For viContar := 2 To 17 Do
   Begin
      Stgr_Base16.Cells[viContar, 0] := INTtoSTR(viContar - 1);
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
   // 01
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
   // 02
   Stgr_Base16.Cells[0, 2] := '02';
   Stgr_Base16.Cells[1, 2] := 'V';
   Stgr_Base16.Cells[2, 2] := '02';
   Stgr_Base16.Cells[3, 2] := '03';
   Stgr_Base16.Cells[4, 2] := '04';
   Stgr_Base16.Cells[5, 2] := '05';
   Stgr_Base16.Cells[6, 2] := '06';
   Stgr_Base16.Cells[7, 2] := '08';
   Stgr_Base16.Cells[8, 2] := '11';
   Stgr_Base16.Cells[9, 2] := '12';
   Stgr_Base16.Cells[10, 2] := '15';
   Stgr_Base16.Cells[11, 2] := '16';
   Stgr_Base16.Cells[12, 2] := '17';
   Stgr_Base16.Cells[13, 2] := '18';
   Stgr_Base16.Cells[14, 2] := '21';
   Stgr_Base16.Cells[15, 2] := '22';
   Stgr_Base16.Cells[16, 2] := '23';
   Stgr_Base16.Cells[17, 2] := '25';
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
   // 03
   Stgr_Base16.Cells[0, 3] := '03';
   Stgr_Base16.Cells[1, 3] := 'V';
   Stgr_Base16.Cells[2, 3] := '01';
   Stgr_Base16.Cells[3, 3] := '03';
   Stgr_Base16.Cells[4, 3] := '05';
   Stgr_Base16.Cells[5, 3] := '06';
   Stgr_Base16.Cells[6, 3] := '10';
   Stgr_Base16.Cells[7, 3] := '11';
   Stgr_Base16.Cells[8, 3] := '12';
   Stgr_Base16.Cells[9, 3] := '13';
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
   // 04
   Stgr_Base16.Cells[0, 4] := '04';
   Stgr_Base16.Cells[1, 4] := 'V';
   Stgr_Base16.Cells[2, 4] := '01';
   Stgr_Base16.Cells[3, 4] := '02';
   Stgr_Base16.Cells[4, 4] := '05';
   Stgr_Base16.Cells[5, 4] := '06';
   Stgr_Base16.Cells[6, 4] := '08';
   Stgr_Base16.Cells[7, 4] := '10';
   Stgr_Base16.Cells[8, 4] := '11';
   Stgr_Base16.Cells[9, 4] := '13';
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
   // 05
   Stgr_Base16.Cells[0, 5] := '05';
   Stgr_Base16.Cells[1, 5] := 'V';
   Stgr_Base16.Cells[2, 5] := '03';
   Stgr_Base16.Cells[3, 5] := '05';
   Stgr_Base16.Cells[4, 5] := '06';
   Stgr_Base16.Cells[5, 5] := '07';
   Stgr_Base16.Cells[6, 5] := '08';
   Stgr_Base16.Cells[7, 5] := '09';
   Stgr_Base16.Cells[8, 5] := '10';
   Stgr_Base16.Cells[9, 5] := '12';
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
   // 06
   Stgr_Base16.Cells[0, 6] := '06';
   Stgr_Base16.Cells[1, 6] := 'V';
   Stgr_Base16.Cells[2, 6] := '03';
   Stgr_Base16.Cells[3, 6] := '05';
   Stgr_Base16.Cells[4, 6] := '06';
   Stgr_Base16.Cells[5, 6] := '07';
   Stgr_Base16.Cells[6, 6] := '08';
   Stgr_Base16.Cells[7, 6] := '09';
   Stgr_Base16.Cells[8, 6] := '10';
   Stgr_Base16.Cells[9, 6] := '11';
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
   // 07
   Stgr_Base16.Cells[0, 7] := '07';
   Stgr_Base16.Cells[1, 7] := 'V';
   Stgr_Base16.Cells[2, 7] := '01';
   Stgr_Base16.Cells[3, 7] := '02';
   Stgr_Base16.Cells[4, 7] := '05';
   Stgr_Base16.Cells[5, 7] := '07';
   Stgr_Base16.Cells[6, 7] := '08';
   Stgr_Base16.Cells[7, 7] := '09';
   Stgr_Base16.Cells[8, 7] := '11';
   Stgr_Base16.Cells[9, 7] := '12';
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
   // 09
   Stgr_Base16.Cells[0, 8] := '08';
   Stgr_Base16.Cells[1, 8] := 'V';
   Stgr_Base16.Cells[2, 8] := '01';
   Stgr_Base16.Cells[3, 8] := '04';
   Stgr_Base16.Cells[4, 8] := '05';
   Stgr_Base16.Cells[5, 8] := '07';
   Stgr_Base16.Cells[6, 8] := '09';
   Stgr_Base16.Cells[7, 8] := '10';
   Stgr_Base16.Cells[8, 8] := '12';
   Stgr_Base16.Cells[9, 8] := '13';
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
   // 09
   Stgr_Base16.Cells[0, 9] := '09';
   Stgr_Base16.Cells[1, 9] := 'V';
   Stgr_Base16.Cells[2, 9] := '01';
   Stgr_Base16.Cells[3, 9] := '02';
   Stgr_Base16.Cells[4, 9] := '07';
   Stgr_Base16.Cells[5, 9] := '08';
   Stgr_Base16.Cells[6, 9] := '09';
   Stgr_Base16.Cells[7, 9] := '10';
   Stgr_Base16.Cells[8, 9] := '11';
   Stgr_Base16.Cells[9, 9] := '12';
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
   // 10
   Stgr_Base16.Cells[0, 10] := '10';
   Stgr_Base16.Cells[1, 10] := 'V';
   Stgr_Base16.Cells[2, 10] := '01';
   Stgr_Base16.Cells[3, 10] := '02';
   Stgr_Base16.Cells[4, 10] := '03';
   Stgr_Base16.Cells[5, 10] := '04';
   Stgr_Base16.Cells[6, 10] := '05';
   Stgr_Base16.Cells[7, 10] := '06';
   Stgr_Base16.Cells[8, 10] := '08';
   Stgr_Base16.Cells[9, 10] := '13';
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
   // 11
   Stgr_Base16.Cells[0, 11] := '11';
   Stgr_Base16.Cells[1, 11] := 'V';
   Stgr_Base16.Cells[2, 11] := '02';
   Stgr_Base16.Cells[3, 11] := '03';
   Stgr_Base16.Cells[4, 11] := '04';
   Stgr_Base16.Cells[5, 11] := '06';
   Stgr_Base16.Cells[6, 11] := '07';
   Stgr_Base16.Cells[7, 11] := '09';
   Stgr_Base16.Cells[8, 11] := '11';
   Stgr_Base16.Cells[9, 11] := '13';
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
   // 12
   Stgr_Base16.Cells[0, 12] := '12';
   Stgr_Base16.Cells[1, 12] := 'V';
   Stgr_Base16.Cells[2, 12] := '01';
   Stgr_Base16.Cells[3, 12] := '03';
   Stgr_Base16.Cells[4, 12] := '04';
   Stgr_Base16.Cells[5, 12] := '06';
   Stgr_Base16.Cells[6, 12] := '08';
   Stgr_Base16.Cells[7, 12] := '09';
   Stgr_Base16.Cells[8, 12] := '10';
   Stgr_Base16.Cells[9, 12] := '13';
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
   // 13
   Stgr_Base16.Cells[0, 13] := '13';
   Stgr_Base16.Cells[1, 13] := 'V';
   Stgr_Base16.Cells[2, 13] := '01';
   Stgr_Base16.Cells[3, 13] := '03';
   Stgr_Base16.Cells[4, 13] := '05';
   Stgr_Base16.Cells[5, 13] := '06';
   Stgr_Base16.Cells[6, 13] := '07';
   Stgr_Base16.Cells[7, 13] := '08';
   Stgr_Base16.Cells[8, 13] := '12';
   Stgr_Base16.Cells[9, 13] := '13';
   Stgr_Base16.Cells[10, 13] := '14';
   Stgr_Base16.Cells[11, 13] := '15';
   Stgr_Base16.Cells[12, 13] := '18';
   Stgr_Base16.Cells[13, 13] := '19';
   Stgr_Base16.Cells[14, 13] := '20';
   Stgr_Base16.Cells[15, 13] := '21';
   Stgr_Base16.Cells[16, 13] := '22';
   Stgr_Base16.Cells[17, 13] := '24';
   Stgr_Base09.Cells[0, 13] := '13';
   Stgr_Base09.Cells[1, 13] := 'V';
   Stgr_Base09.Cells[2, 13] := '02';
   Stgr_Base09.Cells[3, 13] := '04';
   Stgr_Base09.Cells[4, 13] := '09';
   Stgr_Base09.Cells[5, 13] := '10';
   Stgr_Base09.Cells[6, 13] := '11';
   Stgr_Base09.Cells[7, 13] := '16';
   Stgr_Base09.Cells[8, 13] := '17';
   Stgr_Base09.Cells[9, 13] := '23';
   Stgr_Base09.Cells[10, 13] := '25';
   // 14
   Stgr_Base16.Cells[0, 14] := '14';
   Stgr_Base16.Cells[1, 14] := 'V';
   Stgr_Base16.Cells[2, 14] := '02';
   Stgr_Base16.Cells[3, 14] := '03';
   Stgr_Base16.Cells[4, 14] := '04';
   Stgr_Base16.Cells[5, 14] := '06';
   Stgr_Base16.Cells[6, 14] := '09';
   Stgr_Base16.Cells[7, 14] := '10';
   Stgr_Base16.Cells[8, 14] := '11';
   Stgr_Base16.Cells[9, 14] := '12';
   Stgr_Base16.Cells[10, 14] := '13';
   Stgr_Base16.Cells[11, 14] := '15';
   Stgr_Base16.Cells[12, 14] := '16';
   Stgr_Base16.Cells[13, 14] := '19';
   Stgr_Base16.Cells[14, 14] := '20';
   Stgr_Base16.Cells[15, 14] := '21';
   Stgr_Base16.Cells[16, 14] := '22';
   Stgr_Base16.Cells[17, 14] := '25';
   Stgr_Base09.Cells[0, 14] := '14';
   Stgr_Base09.Cells[1, 14] := 'V';
   Stgr_Base09.Cells[2, 14] := '01';
   Stgr_Base09.Cells[3, 14] := '05';
   Stgr_Base09.Cells[4, 14] := '07';
   Stgr_Base09.Cells[5, 14] := '08';
   Stgr_Base09.Cells[6, 14] := '14';
   Stgr_Base09.Cells[7, 14] := '17';
   Stgr_Base09.Cells[8, 14] := '18';
   Stgr_Base09.Cells[9, 14] := '23';
   Stgr_Base09.Cells[10, 14] := '24';
   // 15
   Stgr_Base16.Cells[0, 15] := '15';
   Stgr_Base16.Cells[1, 15] := 'V';
   Stgr_Base16.Cells[2, 15] := '01';
   Stgr_Base16.Cells[3, 15] := '02';
   Stgr_Base16.Cells[4, 15] := '04';
   Stgr_Base16.Cells[5, 15] := '07';
   Stgr_Base16.Cells[6, 15] := '10';
   Stgr_Base16.Cells[7, 15] := '11';
   Stgr_Base16.Cells[8, 15] := '12';
   Stgr_Base16.Cells[9, 15] := '13';
   Stgr_Base16.Cells[10, 15] := '14';
   Stgr_Base16.Cells[11, 15] := '16';
   Stgr_Base16.Cells[12, 15] := '17';
   Stgr_Base16.Cells[13, 15] := '18';
   Stgr_Base16.Cells[14, 15] := '19';
   Stgr_Base16.Cells[15, 15] := '20';
   Stgr_Base16.Cells[16, 15] := '21';
   Stgr_Base16.Cells[17, 15] := '23';
   Stgr_Base09.Cells[0, 15] := '15';
   Stgr_Base09.Cells[1, 15] := 'V';
   Stgr_Base09.Cells[2, 15] := '03';
   Stgr_Base09.Cells[3, 15] := '05';
   Stgr_Base09.Cells[4, 15] := '06';
   Stgr_Base09.Cells[5, 15] := '08';
   Stgr_Base09.Cells[6, 15] := '09';
   Stgr_Base09.Cells[7, 15] := '15';
   Stgr_Base09.Cells[8, 15] := '22';
   Stgr_Base09.Cells[9, 15] := '24';
   Stgr_Base09.Cells[10, 15] := '25';
   // 16
   Stgr_Base16.Cells[0, 16] := '16';
   Stgr_Base16.Cells[1, 16] := 'V';
   Stgr_Base16.Cells[2, 16] := '02';
   Stgr_Base16.Cells[3, 16] := '03';
   Stgr_Base16.Cells[4, 16] := '04';
   Stgr_Base16.Cells[5, 16] := '06';
   Stgr_Base16.Cells[6, 16] := '08';
   Stgr_Base16.Cells[7, 16] := '09';
   Stgr_Base16.Cells[8, 16] := '10';
   Stgr_Base16.Cells[9, 16] := '13';
   Stgr_Base16.Cells[10, 16] := '14';
   Stgr_Base16.Cells[11, 16] := '15';
   Stgr_Base16.Cells[12, 16] := '17';
   Stgr_Base16.Cells[13, 16] := '18';
   Stgr_Base16.Cells[14, 16] := '19';
   Stgr_Base16.Cells[15, 16] := '22';
   Stgr_Base16.Cells[16, 16] := '23';
   Stgr_Base16.Cells[17, 16] := '25';
   Stgr_Base09.Cells[0, 16] := '16';
   Stgr_Base09.Cells[1, 16] := 'V';
   Stgr_Base09.Cells[2, 16] := '01';
   Stgr_Base09.Cells[3, 16] := '05';
   Stgr_Base09.Cells[4, 16] := '07';
   Stgr_Base09.Cells[5, 16] := '11';
   Stgr_Base09.Cells[6, 16] := '12';
   Stgr_Base09.Cells[7, 16] := '16';
   Stgr_Base09.Cells[8, 16] := '20';
   Stgr_Base09.Cells[9, 16] := '21';
   Stgr_Base09.Cells[10, 16] := '24';
   // 17
   Stgr_Base16.Cells[0, 17] := '17';
   Stgr_Base16.Cells[1, 17] := 'V';
   Stgr_Base16.Cells[2, 17] := '01';
   Stgr_Base16.Cells[3, 17] := '02';
   Stgr_Base16.Cells[4, 17] := '04';
   Stgr_Base16.Cells[5, 17] := '05';
   Stgr_Base16.Cells[6, 17] := '08';
   Stgr_Base16.Cells[7, 17] := '09';
   Stgr_Base16.Cells[8, 17] := '10';
   Stgr_Base16.Cells[9, 17] := '12';
   Stgr_Base16.Cells[10, 17] := '14';
   Stgr_Base16.Cells[11, 17] := '15';
   Stgr_Base16.Cells[12, 17] := '17';
   Stgr_Base16.Cells[13, 17] := '20';
   Stgr_Base16.Cells[14, 17] := '21';
   Stgr_Base16.Cells[15, 17] := '22';
   Stgr_Base16.Cells[16, 17] := '23';
   Stgr_Base16.Cells[17, 17] := '25';
   Stgr_Base09.Cells[0, 17] := '17';
   Stgr_Base09.Cells[1, 17] := 'V';
   Stgr_Base09.Cells[2, 17] := '03';
   Stgr_Base09.Cells[3, 17] := '06';
   Stgr_Base09.Cells[4, 17] := '07';
   Stgr_Base09.Cells[5, 17] := '11';
   Stgr_Base09.Cells[6, 17] := '13';
   Stgr_Base09.Cells[7, 17] := '16';
   Stgr_Base09.Cells[8, 17] := '18';
   Stgr_Base09.Cells[9, 17] := '19';
   Stgr_Base09.Cells[10, 17] := '24';
   // 18
   Stgr_Base16.Cells[0, 18] := '18';
   Stgr_Base16.Cells[1, 18] := 'V';
   Stgr_Base16.Cells[2, 18] := '01';
   Stgr_Base16.Cells[3, 18] := '03';
   Stgr_Base16.Cells[4, 18] := '04';
   Stgr_Base16.Cells[5, 18] := '07';
   Stgr_Base16.Cells[6, 18] := '08';
   Stgr_Base16.Cells[7, 18] := '09';
   Stgr_Base16.Cells[8, 18] := '11';
   Stgr_Base16.Cells[9, 18] := '12';
   Stgr_Base16.Cells[10, 18] := '13';
   Stgr_Base16.Cells[11, 18] := '15';
   Stgr_Base16.Cells[12, 18] := '16';
   Stgr_Base16.Cells[13, 18] := '18';
   Stgr_Base16.Cells[14, 18] := '20';
   Stgr_Base16.Cells[15, 18] := '22';
   Stgr_Base16.Cells[16, 18] := '24';
   Stgr_Base16.Cells[17, 18] := '25';
   Stgr_Base09.Cells[0, 18] := '18';
   Stgr_Base09.Cells[1, 18] := 'V';
   Stgr_Base09.Cells[2, 18] := '02';
   Stgr_Base09.Cells[3, 18] := '05';
   Stgr_Base09.Cells[4, 18] := '06';
   Stgr_Base09.Cells[5, 18] := '10';
   Stgr_Base09.Cells[6, 18] := '14';
   Stgr_Base09.Cells[7, 18] := '17';
   Stgr_Base09.Cells[8, 18] := '19';
   Stgr_Base09.Cells[9, 18] := '21';
   Stgr_Base09.Cells[10, 18] := '23';
   // 19
   Stgr_Base16.Cells[0, 19] := '19';
   Stgr_Base16.Cells[1, 19] := 'V';
   Stgr_Base16.Cells[2, 19] := '01';
   Stgr_Base16.Cells[3, 19] := '02';
   Stgr_Base16.Cells[4, 19] := '06';
   Stgr_Base16.Cells[5, 19] := '07';
   Stgr_Base16.Cells[6, 19] := '10';
   Stgr_Base16.Cells[7, 19] := '11';
   Stgr_Base16.Cells[8, 19] := '12';
   Stgr_Base16.Cells[9, 19] := '13';
   Stgr_Base16.Cells[10, 19] := '14';
   Stgr_Base16.Cells[11, 19] := '15';
   Stgr_Base16.Cells[12, 19] := '16';
   Stgr_Base16.Cells[13, 19] := '17';
   Stgr_Base16.Cells[14, 19] := '18';
   Stgr_Base16.Cells[15, 19] := '19';
   Stgr_Base16.Cells[16, 19] := '23';
   Stgr_Base16.Cells[17, 19] := '24';
   Stgr_Base09.Cells[0, 19] := '19';
   Stgr_Base09.Cells[1, 19] := 'V';
   Stgr_Base09.Cells[2, 19] := '03';
   Stgr_Base09.Cells[3, 19] := '04';
   Stgr_Base09.Cells[4, 19] := '05';
   Stgr_Base09.Cells[5, 19] := '08';
   Stgr_Base09.Cells[6, 19] := '09';
   Stgr_Base09.Cells[7, 19] := '20';
   Stgr_Base09.Cells[8, 19] := '21';
   Stgr_Base09.Cells[9, 19] := '22';
   Stgr_Base09.Cells[10, 19] := '25';
   // 20
   Stgr_Base16.Cells[0, 20] := '20';
   Stgr_Base16.Cells[1, 20] := 'V';
   Stgr_Base16.Cells[2, 20] := '01';
   Stgr_Base16.Cells[3, 20] := '02';
   Stgr_Base16.Cells[4, 20] := '03';
   Stgr_Base16.Cells[5, 20] := '06';
   Stgr_Base16.Cells[6, 20] := '07';
   Stgr_Base16.Cells[7, 20] := '09';
   Stgr_Base16.Cells[8, 20] := '12';
   Stgr_Base16.Cells[9, 20] := '13';
   Stgr_Base16.Cells[10, 20] := '14';
   Stgr_Base16.Cells[11, 20] := '15';
   Stgr_Base16.Cells[12, 20] := '17';
   Stgr_Base16.Cells[13, 20] := '18';
   Stgr_Base16.Cells[14, 20] := '20';
   Stgr_Base16.Cells[15, 20] := '22';
   Stgr_Base16.Cells[16, 20] := '24';
   Stgr_Base16.Cells[17, 20] := '25';
   Stgr_Base09.Cells[0, 20] := '20';
   Stgr_Base09.Cells[1, 20] := 'V';
   Stgr_Base09.Cells[2, 20] := '04';
   Stgr_Base09.Cells[3, 20] := '05';
   Stgr_Base09.Cells[4, 20] := '08';
   Stgr_Base09.Cells[5, 20] := '10';
   Stgr_Base09.Cells[6, 20] := '11';
   Stgr_Base09.Cells[7, 20] := '16';
   Stgr_Base09.Cells[8, 20] := '19';
   Stgr_Base09.Cells[9, 20] := '21';
   Stgr_Base09.Cells[10, 20] := '23';
   // 21
   Stgr_Base16.Cells[0, 21] := '21';
   Stgr_Base16.Cells[1, 21] := 'V';
   Stgr_Base16.Cells[2, 21] := '01';
   Stgr_Base16.Cells[3, 21] := '04';
   Stgr_Base16.Cells[4, 21] := '05';
   Stgr_Base16.Cells[5, 21] := '07';
   Stgr_Base16.Cells[6, 21] := '08';
   Stgr_Base16.Cells[7, 21] := '09';
   Stgr_Base16.Cells[8, 21] := '10';
   Stgr_Base16.Cells[9, 21] := '12';
   Stgr_Base16.Cells[10, 21] := '13';
   Stgr_Base16.Cells[11, 21] := '14';
   Stgr_Base16.Cells[12, 21] := '16';
   Stgr_Base16.Cells[13, 21] := '18';
   Stgr_Base16.Cells[14, 21] := '21';
   Stgr_Base16.Cells[15, 21] := '22';
   Stgr_Base16.Cells[16, 21] := '23';
   Stgr_Base16.Cells[17, 21] := '25';
   Stgr_Base09.Cells[0, 21] := '21';
   Stgr_Base09.Cells[1, 21] := 'V';
   Stgr_Base09.Cells[2, 21] := '02';
   Stgr_Base09.Cells[3, 21] := '03';
   Stgr_Base09.Cells[4, 21] := '06';
   Stgr_Base09.Cells[5, 21] := '11';
   Stgr_Base09.Cells[6, 21] := '15';
   Stgr_Base09.Cells[7, 21] := '17';
   Stgr_Base09.Cells[8, 21] := '19';
   Stgr_Base09.Cells[9, 21] := '20';
   Stgr_Base09.Cells[10, 21] := '24';
   // 22
   Stgr_Base16.Cells[0, 22] := '22';
   Stgr_Base16.Cells[1, 22] := 'V';
   Stgr_Base16.Cells[2, 22] := '01';
   Stgr_Base16.Cells[3, 22] := '03';
   Stgr_Base16.Cells[4, 22] := '04';
   Stgr_Base16.Cells[5, 22] := '05';
   Stgr_Base16.Cells[6, 22] := '06';
   Stgr_Base16.Cells[7, 22] := '08';
   Stgr_Base16.Cells[8, 22] := '09';
   Stgr_Base16.Cells[9, 22] := '10';
   Stgr_Base16.Cells[10, 22] := '13';
   Stgr_Base16.Cells[11, 22] := '16';
   Stgr_Base16.Cells[12, 22] := '19';
   Stgr_Base16.Cells[13, 22] := '20';
   Stgr_Base16.Cells[14, 22] := '22';
   Stgr_Base16.Cells[15, 22] := '23';
   Stgr_Base16.Cells[16, 22] := '24';
   Stgr_Base16.Cells[17, 22] := '25';
   Stgr_Base09.Cells[0, 22] := '22';
   Stgr_Base09.Cells[1, 22] := 'V';
   Stgr_Base09.Cells[2, 22] := '02';
   Stgr_Base09.Cells[3, 22] := '07';
   Stgr_Base09.Cells[4, 22] := '11';
   Stgr_Base09.Cells[5, 22] := '12';
   Stgr_Base09.Cells[6, 22] := '14';
   Stgr_Base09.Cells[7, 22] := '15';
   Stgr_Base09.Cells[8, 22] := '17';
   Stgr_Base09.Cells[9, 22] := '18';
   Stgr_Base09.Cells[10, 22] := '21';
   // 23
   Stgr_Base16.Cells[0, 23] := '23';
   Stgr_Base16.Cells[1, 23] := 'V';
   Stgr_Base16.Cells[2, 23] := '01';
   Stgr_Base16.Cells[3, 23] := '02';
   Stgr_Base16.Cells[4, 23] := '03';
   Stgr_Base16.Cells[5, 23] := '05';
   Stgr_Base16.Cells[6, 23] := '06';
   Stgr_Base16.Cells[7, 23] := '08';
   Stgr_Base16.Cells[8, 23] := '11';
   Stgr_Base16.Cells[9, 23] := '12';
   Stgr_Base16.Cells[10, 23] := '15';
   Stgr_Base16.Cells[11, 23] := '17';
   Stgr_Base16.Cells[12, 23] := '18';
   Stgr_Base16.Cells[13, 23] := '19';
   Stgr_Base16.Cells[14, 23] := '20';
   Stgr_Base16.Cells[15, 23] := '22';
   Stgr_Base16.Cells[16, 23] := '24';
   Stgr_Base16.Cells[17, 23] := '25';
   Stgr_Base09.Cells[0, 23] := '23';
   Stgr_Base09.Cells[1, 23] := 'V';
   Stgr_Base09.Cells[2, 23] := '04';
   Stgr_Base09.Cells[3, 23] := '07';
   Stgr_Base09.Cells[4, 23] := '09';
   Stgr_Base09.Cells[5, 23] := '10';
   Stgr_Base09.Cells[6, 23] := '13';
   Stgr_Base09.Cells[7, 23] := '14';
   Stgr_Base09.Cells[8, 23] := '16';
   Stgr_Base09.Cells[9, 23] := '21';
   Stgr_Base09.Cells[10, 23] := '23';
   // 24
   Stgr_Base16.Cells[0, 24] := '24';
   Stgr_Base16.Cells[1, 24] := 'V';
   Stgr_Base16.Cells[2, 24] := '01';
   Stgr_Base16.Cells[3, 24] := '03';
   Stgr_Base16.Cells[4, 24] := '04';
   Stgr_Base16.Cells[5, 24] := '06';
   Stgr_Base16.Cells[6, 24] := '07';
   Stgr_Base16.Cells[7, 24] := '08';
   Stgr_Base16.Cells[8, 24] := '10';
   Stgr_Base16.Cells[9, 24] := '12';
   Stgr_Base16.Cells[10, 24] := '13';
   Stgr_Base16.Cells[11, 24] := '14';
   Stgr_Base16.Cells[12, 24] := '15';
   Stgr_Base16.Cells[13, 24] := '21';
   Stgr_Base16.Cells[14, 24] := '22';
   Stgr_Base16.Cells[15, 24] := '23';
   Stgr_Base16.Cells[16, 24] := '24';
   Stgr_Base16.Cells[17, 24] := '25';
   Stgr_Base09.Cells[0, 24] := '24';
   Stgr_Base09.Cells[1, 24] := 'V';
   Stgr_Base09.Cells[2, 24] := '02';
   Stgr_Base09.Cells[3, 24] := '05';
   Stgr_Base09.Cells[4, 24] := '09';
   Stgr_Base09.Cells[5, 24] := '11';
   Stgr_Base09.Cells[6, 24] := '16';
   Stgr_Base09.Cells[7, 24] := '17';
   Stgr_Base09.Cells[8, 24] := '18';
   Stgr_Base09.Cells[9, 24] := '19';
   Stgr_Base09.Cells[10, 24] := '20';
   // 25
   Stgr_Base16.Cells[0, 25] := '25';
   Stgr_Base16.Cells[1, 25] := 'V';
   Stgr_Base16.Cells[2, 25] := '01';
   Stgr_Base16.Cells[3, 25] := '02';
   Stgr_Base16.Cells[4, 25] := '05';
   Stgr_Base16.Cells[5, 25] := '06';
   Stgr_Base16.Cells[6, 25] := '07';
   Stgr_Base16.Cells[7, 25] := '08';
   Stgr_Base16.Cells[8, 25] := '09';
   Stgr_Base16.Cells[9, 25] := '11';
   Stgr_Base16.Cells[10, 25] := '12';
   Stgr_Base16.Cells[11, 25] := '14';
   Stgr_Base16.Cells[12, 25] := '18';
   Stgr_Base16.Cells[13, 25] := '21';
   Stgr_Base16.Cells[14, 25] := '22';
   Stgr_Base16.Cells[15, 25] := '23';
   Stgr_Base16.Cells[16, 25] := '24';
   Stgr_Base16.Cells[17, 25] := '25';
   Stgr_Base09.Cells[0, 25] := '25';
   Stgr_Base09.Cells[1, 25] := 'V';
   Stgr_Base09.Cells[2, 25] := '03';
   Stgr_Base09.Cells[3, 25] := '04';
   Stgr_Base09.Cells[4, 25] := '10';
   Stgr_Base09.Cells[5, 25] := '13';
   Stgr_Base09.Cells[6, 25] := '15';
   Stgr_Base09.Cells[7, 25] := '16';
   Stgr_Base09.Cells[8, 25] := '17';
   Stgr_Base09.Cells[9, 25] := '19';
   Stgr_Base09.Cells[10, 25] := '20';
   // 26
   Stgr_Base16.Cells[0, 26] := '26';
   Stgr_Base16.Cells[1, 26] := 'V';
   Stgr_Base16.Cells[2, 26] := '02';
   Stgr_Base16.Cells[3, 26] := '04';
   Stgr_Base16.Cells[4, 26] := '05';
   Stgr_Base16.Cells[5, 26] := '06';
   Stgr_Base16.Cells[6, 26] := '07';
   Stgr_Base16.Cells[7, 26] := '08';
   Stgr_Base16.Cells[8, 26] := '10';
   Stgr_Base16.Cells[9, 26] := '11';
   Stgr_Base16.Cells[10, 26] := '13';
   Stgr_Base16.Cells[11, 26] := '14';
   Stgr_Base16.Cells[12, 26] := '17';
   Stgr_Base16.Cells[13, 26] := '19';
   Stgr_Base16.Cells[14, 26] := '21';
   Stgr_Base16.Cells[15, 26] := '22';
   Stgr_Base16.Cells[16, 26] := '24';
   Stgr_Base16.Cells[17, 26] := '25';
   Stgr_Base09.Cells[0, 26] := '26';
   Stgr_Base09.Cells[1, 26] := 'V';
   Stgr_Base09.Cells[2, 26] := '01';
   Stgr_Base09.Cells[3, 26] := '03';
   Stgr_Base09.Cells[4, 26] := '09';
   Stgr_Base09.Cells[5, 26] := '12';
   Stgr_Base09.Cells[6, 26] := '15';
   Stgr_Base09.Cells[7, 26] := '16';
   Stgr_Base09.Cells[8, 26] := '18';
   Stgr_Base09.Cells[9, 26] := '20';
   Stgr_Base09.Cells[10, 26] := '23';
   // 27
   Stgr_Base16.Cells[0, 27] := '27';
   Stgr_Base16.Cells[1, 27] := 'V';
   Stgr_Base16.Cells[2, 27] := '01';
   Stgr_Base16.Cells[3, 27] := '03';
   Stgr_Base16.Cells[4, 27] := '04';
   Stgr_Base16.Cells[5, 27] := '06';
   Stgr_Base16.Cells[6, 27] := '08';
   Stgr_Base16.Cells[7, 27] := '09';
   Stgr_Base16.Cells[8, 27] := '10';
   Stgr_Base16.Cells[9, 27] := '12';
   Stgr_Base16.Cells[10, 27] := '13';
   Stgr_Base16.Cells[11, 27] := '14';
   Stgr_Base16.Cells[12, 27] := '15';
   Stgr_Base16.Cells[13, 27] := '20';
   Stgr_Base16.Cells[14, 27] := '21';
   Stgr_Base16.Cells[15, 27] := '23';
   Stgr_Base16.Cells[16, 27] := '24';
   Stgr_Base16.Cells[17, 27] := '25';
   Stgr_Base09.Cells[0, 27] := '27';
   Stgr_Base09.Cells[1, 27] := 'V';
   Stgr_Base09.Cells[2, 27] := '02';
   Stgr_Base09.Cells[3, 27] := '05';
   Stgr_Base09.Cells[4, 27] := '07';
   Stgr_Base09.Cells[5, 27] := '11';
   Stgr_Base09.Cells[6, 27] := '16';
   Stgr_Base09.Cells[7, 27] := '17';
   Stgr_Base09.Cells[8, 27] := '18';
   Stgr_Base09.Cells[9, 27] := '19';
   Stgr_Base09.Cells[10, 27] := '22';
   // 28
   Stgr_Base16.Cells[0, 28] := '28';
   Stgr_Base16.Cells[1, 28] := 'V';
   Stgr_Base16.Cells[2, 28] := '01';
   Stgr_Base16.Cells[3, 28] := '03';
   Stgr_Base16.Cells[4, 28] := '04';
   Stgr_Base16.Cells[5, 28] := '05';
   Stgr_Base16.Cells[6, 28] := '06';
   Stgr_Base16.Cells[7, 28] := '10';
   Stgr_Base16.Cells[8, 28] := '11';
   Stgr_Base16.Cells[9, 28] := '13';
   Stgr_Base16.Cells[10, 28] := '14';
   Stgr_Base16.Cells[11, 28] := '15';
   Stgr_Base16.Cells[12, 28] := '16';
   Stgr_Base16.Cells[13, 28] := '20';
   Stgr_Base16.Cells[14, 28] := '21';
   Stgr_Base16.Cells[15, 28] := '22';
   Stgr_Base16.Cells[16, 28] := '23';
   Stgr_Base16.Cells[17, 28] := '24';
   Stgr_Base09.Cells[0, 28] := '28';
   Stgr_Base09.Cells[1, 28] := 'V';
   Stgr_Base09.Cells[2, 28] := '02';
   Stgr_Base09.Cells[3, 28] := '07';
   Stgr_Base09.Cells[4, 28] := '08';
   Stgr_Base09.Cells[5, 28] := '09';
   Stgr_Base09.Cells[6, 28] := '12';
   Stgr_Base09.Cells[7, 28] := '17';
   Stgr_Base09.Cells[8, 28] := '18';
   Stgr_Base09.Cells[9, 28] := '19';
   Stgr_Base09.Cells[10, 28] := '25';
   // 29
   Stgr_Base16.Cells[0, 29] := '29';
   Stgr_Base16.Cells[1, 29] := 'V';
   Stgr_Base16.Cells[2, 29] := '01';
   Stgr_Base16.Cells[3, 29] := '03';
   Stgr_Base16.Cells[4, 29] := '04';
   Stgr_Base16.Cells[5, 29] := '05';
   Stgr_Base16.Cells[6, 29] := '08';
   Stgr_Base16.Cells[7, 29] := '09';
   Stgr_Base16.Cells[8, 29] := '10';
   Stgr_Base16.Cells[9, 29] := '11';
   Stgr_Base16.Cells[10, 29] := '12';
   Stgr_Base16.Cells[11, 29] := '14';
   Stgr_Base16.Cells[12, 29] := '16';
   Stgr_Base16.Cells[13, 29] := '21';
   Stgr_Base16.Cells[14, 29] := '22';
   Stgr_Base16.Cells[15, 29] := '23';
   Stgr_Base16.Cells[16, 29] := '24';
   Stgr_Base16.Cells[17, 29] := '25';
   Stgr_Base09.Cells[0, 29] := '29';
   Stgr_Base09.Cells[1, 29] := 'V';
   Stgr_Base09.Cells[2, 29] := '02';
   Stgr_Base09.Cells[3, 29] := '06';
   Stgr_Base09.Cells[4, 29] := '07';
   Stgr_Base09.Cells[5, 29] := '13';
   Stgr_Base09.Cells[6, 29] := '15';
   Stgr_Base09.Cells[7, 29] := '17';
   Stgr_Base09.Cells[8, 29] := '18';
   Stgr_Base09.Cells[9, 29] := '19';
   Stgr_Base09.Cells[10, 29] := '20';
   // 30
   Stgr_Base16.Cells[0, 30] := '30';
   Stgr_Base16.Cells[1, 30] := 'V';
   Stgr_Base16.Cells[2, 30] := '01';
   Stgr_Base16.Cells[3, 30] := '03';
   Stgr_Base16.Cells[4, 30] := '04';
   Stgr_Base16.Cells[5, 30] := '05';
   Stgr_Base16.Cells[6, 30] := '06';
   Stgr_Base16.Cells[7, 30] := '08';
   Stgr_Base16.Cells[8, 30] := '11';
   Stgr_Base16.Cells[9, 30] := '12';
   Stgr_Base16.Cells[10, 30] := '13';
   Stgr_Base16.Cells[11, 30] := '15';
   Stgr_Base16.Cells[12, 30] := '16';
   Stgr_Base16.Cells[13, 30] := '20';
   Stgr_Base16.Cells[14, 30] := '22';
   Stgr_Base16.Cells[15, 30] := '23';
   Stgr_Base16.Cells[16, 30] := '24';
   Stgr_Base16.Cells[17, 30] := '25';
   Stgr_Base09.Cells[0, 30] := '30';
   Stgr_Base09.Cells[1, 30] := 'V';
   Stgr_Base09.Cells[2, 30] := '02';
   Stgr_Base09.Cells[3, 30] := '07';
   Stgr_Base09.Cells[4, 30] := '09';
   Stgr_Base09.Cells[5, 30] := '10';
   Stgr_Base09.Cells[6, 30] := '14';
   Stgr_Base09.Cells[7, 30] := '17';
   Stgr_Base09.Cells[8, 30] := '18';
   Stgr_Base09.Cells[9, 30] := '19';
   Stgr_Base09.Cells[10, 30] := '21';
   // 31
   Stgr_Base16.Cells[0, 31] := '31';
   Stgr_Base16.Cells[1, 31] := 'V';
   Stgr_Base16.Cells[2, 31] := '01';
   Stgr_Base16.Cells[3, 31] := '03';
   Stgr_Base16.Cells[4, 31] := '04';
   Stgr_Base16.Cells[5, 31] := '06';
   Stgr_Base16.Cells[6, 31] := '08';
   Stgr_Base16.Cells[7, 31] := '09';
   Stgr_Base16.Cells[8, 31] := '10';
   Stgr_Base16.Cells[9, 31] := '11';
   Stgr_Base16.Cells[10, 31] := '14';
   Stgr_Base16.Cells[11, 31] := '15';
   Stgr_Base16.Cells[12, 31] := '17';
   Stgr_Base16.Cells[13, 31] := '18';
   Stgr_Base16.Cells[14, 31] := '20';
   Stgr_Base16.Cells[15, 31] := '23';
   Stgr_Base16.Cells[16, 31] := '24';
   Stgr_Base16.Cells[17, 31] := '25';
   Stgr_Base09.Cells[0, 31] := '31';
   Stgr_Base09.Cells[1, 31] := 'V';
   Stgr_Base09.Cells[2, 31] := '02';
   Stgr_Base09.Cells[3, 31] := '05';
   Stgr_Base09.Cells[4, 31] := '07';
   Stgr_Base09.Cells[5, 31] := '12';
   Stgr_Base09.Cells[6, 31] := '13';
   Stgr_Base09.Cells[7, 31] := '16';
   Stgr_Base09.Cells[8, 31] := '19';
   Stgr_Base09.Cells[9, 31] := '21';
   Stgr_Base09.Cells[10, 31] := '22';
   // 32
   Stgr_Base16.Cells[0, 32] := '32';
   Stgr_Base16.Cells[1, 32] := 'V';
   Stgr_Base16.Cells[2, 32] := '01';
   Stgr_Base16.Cells[3, 32] := '02';
   Stgr_Base16.Cells[4, 32] := '03';
   Stgr_Base16.Cells[5, 32] := '04';
   Stgr_Base16.Cells[6, 32] := '05';
   Stgr_Base16.Cells[7, 32] := '07';
   Stgr_Base16.Cells[8, 32] := '12';
   Stgr_Base16.Cells[9, 32] := '14';
   Stgr_Base16.Cells[10, 32] := '15';
   Stgr_Base16.Cells[11, 32] := '16';
   Stgr_Base16.Cells[12, 32] := '18';
   Stgr_Base16.Cells[13, 32] := '19';
   Stgr_Base16.Cells[14, 32] := '20';
   Stgr_Base16.Cells[15, 32] := '23';
   Stgr_Base16.Cells[16, 32] := '24';
   Stgr_Base16.Cells[17, 32] := '25';
   Stgr_Base09.Cells[0, 32] := '32';
   Stgr_Base09.Cells[1, 32] := 'V';
   Stgr_Base09.Cells[2, 32] := '06';
   Stgr_Base09.Cells[3, 32] := '08';
   Stgr_Base09.Cells[4, 32] := '09';
   Stgr_Base09.Cells[5, 32] := '10';
   Stgr_Base09.Cells[6, 32] := '11';
   Stgr_Base09.Cells[7, 32] := '13';
   Stgr_Base09.Cells[8, 32] := '17';
   Stgr_Base09.Cells[9, 32] := '21';
   Stgr_Base09.Cells[10, 32] := '22';
   // 33
   Stgr_Base16.Cells[0, 33] := '33';
   Stgr_Base16.Cells[1, 33] := 'V';
   Stgr_Base16.Cells[2, 33] := '02';
   Stgr_Base16.Cells[3, 33] := '03';
   Stgr_Base16.Cells[4, 33] := '04';
   Stgr_Base16.Cells[5, 33] := '05';
   Stgr_Base16.Cells[6, 33] := '06';
   Stgr_Base16.Cells[7, 33] := '09';
   Stgr_Base16.Cells[8, 33] := '10';
   Stgr_Base16.Cells[9, 33] := '11';
   Stgr_Base16.Cells[10, 33] := '12';
   Stgr_Base16.Cells[11, 33] := '15';
   Stgr_Base16.Cells[12, 33] := '17';
   Stgr_Base16.Cells[13, 33] := '20';
   Stgr_Base16.Cells[14, 33] := '22';
   Stgr_Base16.Cells[15, 33] := '23';
   Stgr_Base16.Cells[16, 33] := '24';
   Stgr_Base16.Cells[17, 33] := '25';
   Stgr_Base09.Cells[0, 33] := '33';
   Stgr_Base09.Cells[1, 33] := 'V';
   Stgr_Base09.Cells[2, 33] := '01';
   Stgr_Base09.Cells[3, 33] := '07';
   Stgr_Base09.Cells[4, 33] := '08';
   Stgr_Base09.Cells[5, 33] := '13';
   Stgr_Base09.Cells[6, 33] := '14';
   Stgr_Base09.Cells[7, 33] := '16';
   Stgr_Base09.Cells[8, 33] := '18';
   Stgr_Base09.Cells[9, 33] := '19';
   Stgr_Base09.Cells[10, 33] := '21';
   // 34
   Stgr_Base16.Cells[0, 34] := '34';
   Stgr_Base16.Cells[1, 34] := 'V';
   Stgr_Base16.Cells[2, 34] := '02';
   Stgr_Base16.Cells[3, 34] := '03';
   Stgr_Base16.Cells[4, 34] := '04';
   Stgr_Base16.Cells[5, 34] := '05';
   Stgr_Base16.Cells[6, 34] := '07';
   Stgr_Base16.Cells[7, 34] := '09';
   Stgr_Base16.Cells[8, 34] := '11';
   Stgr_Base16.Cells[9, 34] := '13';
   Stgr_Base16.Cells[10, 34] := '14';
   Stgr_Base16.Cells[11, 34] := '16';
   Stgr_Base16.Cells[12, 34] := '18';
   Stgr_Base16.Cells[13, 34] := '19';
   Stgr_Base16.Cells[14, 34] := '20';
   Stgr_Base16.Cells[15, 34] := '21';
   Stgr_Base16.Cells[16, 34] := '22';
   Stgr_Base16.Cells[17, 34] := '24';
   Stgr_Base09.Cells[0, 34] := '34';
   Stgr_Base09.Cells[1, 34] := 'V';
   Stgr_Base09.Cells[2, 34] := '01';
   Stgr_Base09.Cells[3, 34] := '06';
   Stgr_Base09.Cells[4, 34] := '08';
   Stgr_Base09.Cells[5, 34] := '10';
   Stgr_Base09.Cells[6, 34] := '12';
   Stgr_Base09.Cells[7, 34] := '15';
   Stgr_Base09.Cells[8, 34] := '17';
   Stgr_Base09.Cells[9, 34] := '23';
   Stgr_Base09.Cells[10, 34] := '25';
   // 35
   Stgr_Base16.Cells[0, 35] := '35';
   Stgr_Base16.Cells[1, 35] := 'V';
   Stgr_Base16.Cells[2, 35] := '01';
   Stgr_Base16.Cells[3, 35] := '02';
   Stgr_Base16.Cells[4, 35] := '03';
   Stgr_Base16.Cells[5, 35] := '05';
   Stgr_Base16.Cells[6, 35] := '06';
   Stgr_Base16.Cells[7, 35] := '07';
   Stgr_Base16.Cells[8, 35] := '08';
   Stgr_Base16.Cells[9, 35] := '11';
   Stgr_Base16.Cells[10, 35] := '14';
   Stgr_Base16.Cells[11, 35] := '16';
   Stgr_Base16.Cells[12, 35] := '20';
   Stgr_Base16.Cells[13, 35] := '21';
   Stgr_Base16.Cells[14, 35] := '22';
   Stgr_Base16.Cells[15, 35] := '23';
   Stgr_Base16.Cells[16, 35] := '24';
   Stgr_Base16.Cells[17, 35] := '25';
   Stgr_Base09.Cells[0, 35] := '35';
   Stgr_Base09.Cells[1, 35] := 'V';
   Stgr_Base09.Cells[2, 35] := '04';
   Stgr_Base09.Cells[3, 35] := '09';
   Stgr_Base09.Cells[4, 35] := '10';
   Stgr_Base09.Cells[5, 35] := '12';
   Stgr_Base09.Cells[6, 35] := '13';
   Stgr_Base09.Cells[7, 35] := '15';
   Stgr_Base09.Cells[8, 35] := '17';
   Stgr_Base09.Cells[9, 35] := '18';
   Stgr_Base09.Cells[10, 35] := '19';
   // 36
   Stgr_Base16.Cells[0, 36] := '36';
   Stgr_Base16.Cells[1, 36] := 'V';
   Stgr_Base16.Cells[2, 36] := '01';
   Stgr_Base16.Cells[3, 36] := '02';
   Stgr_Base16.Cells[4, 36] := '03';
   Stgr_Base16.Cells[5, 36] := '04';
   Stgr_Base16.Cells[6, 36] := '08';
   Stgr_Base16.Cells[7, 36] := '09';
   Stgr_Base16.Cells[8, 36] := '11';
   Stgr_Base16.Cells[9, 36] := '12';
   Stgr_Base16.Cells[10, 36] := '13';
   Stgr_Base16.Cells[11, 36] := '14';
   Stgr_Base16.Cells[12, 36] := '17';
   Stgr_Base16.Cells[13, 36] := '20';
   Stgr_Base16.Cells[14, 36] := '22';
   Stgr_Base16.Cells[15, 36] := '23';
   Stgr_Base16.Cells[16, 36] := '24';
   Stgr_Base16.Cells[17, 36] := '25';
   Stgr_Base09.Cells[0, 36] := '36';
   Stgr_Base09.Cells[1, 36] := 'V';
   Stgr_Base09.Cells[2, 36] := '05';
   Stgr_Base09.Cells[3, 36] := '06';
   Stgr_Base09.Cells[4, 36] := '07';
   Stgr_Base09.Cells[5, 36] := '10';
   Stgr_Base09.Cells[6, 36] := '15';
   Stgr_Base09.Cells[7, 36] := '16';
   Stgr_Base09.Cells[8, 36] := '18';
   Stgr_Base09.Cells[9, 36] := '19';
   Stgr_Base09.Cells[10, 36] := '21';
   // 37
   Stgr_Base16.Cells[0, 37] := '37';
   Stgr_Base16.Cells[1, 37] := 'V';
   Stgr_Base16.Cells[2, 37] := '01';
   Stgr_Base16.Cells[3, 37] := '02';
   Stgr_Base16.Cells[4, 37] := '04';
   Stgr_Base16.Cells[5, 37] := '07';
   Stgr_Base16.Cells[6, 37] := '08';
   Stgr_Base16.Cells[7, 37] := '09';
   Stgr_Base16.Cells[8, 37] := '10';
   Stgr_Base16.Cells[9, 37] := '11';
   Stgr_Base16.Cells[10, 37] := '12';
   Stgr_Base16.Cells[11, 37] := '15';
   Stgr_Base16.Cells[12, 37] := '19';
   Stgr_Base16.Cells[13, 37] := '20';
   Stgr_Base16.Cells[14, 37] := '21';
   Stgr_Base16.Cells[15, 37] := '22';
   Stgr_Base16.Cells[16, 37] := '23';
   Stgr_Base16.Cells[17, 37] := '24';
   Stgr_Base09.Cells[0, 37] := '37';
   Stgr_Base09.Cells[1, 37] := 'V';
   Stgr_Base09.Cells[2, 37] := '03';
   Stgr_Base09.Cells[3, 37] := '05';
   Stgr_Base09.Cells[4, 37] := '06';
   Stgr_Base09.Cells[5, 37] := '13';
   Stgr_Base09.Cells[6, 37] := '14';
   Stgr_Base09.Cells[7, 37] := '16';
   Stgr_Base09.Cells[8, 37] := '17';
   Stgr_Base09.Cells[9, 37] := '18';
   Stgr_Base09.Cells[10, 37] := '25';
   // 38
   Stgr_Base16.Cells[0, 38] := '38';
   Stgr_Base16.Cells[1, 38] := 'V';
   Stgr_Base16.Cells[2, 38] := '01';
   Stgr_Base16.Cells[3, 38] := '02';
   Stgr_Base16.Cells[4, 38] := '04';
   Stgr_Base16.Cells[5, 38] := '07';
   Stgr_Base16.Cells[6, 38] := '09';
   Stgr_Base16.Cells[7, 38] := '10';
   Stgr_Base16.Cells[8, 38] := '11';
   Stgr_Base16.Cells[9, 38] := '12';
   Stgr_Base16.Cells[10, 38] := '13';
   Stgr_Base16.Cells[11, 38] := '14';
   Stgr_Base16.Cells[12, 38] := '15';
   Stgr_Base16.Cells[13, 38] := '20';
   Stgr_Base16.Cells[14, 38] := '21';
   Stgr_Base16.Cells[15, 38] := '22';
   Stgr_Base16.Cells[16, 38] := '23';
   Stgr_Base16.Cells[17, 38] := '24';
   Stgr_Base09.Cells[0, 38] := '38';
   Stgr_Base09.Cells[1, 38] := 'V';
   Stgr_Base09.Cells[2, 38] := '03';
   Stgr_Base09.Cells[3, 38] := '05';
   Stgr_Base09.Cells[4, 38] := '06';
   Stgr_Base09.Cells[5, 38] := '08';
   Stgr_Base09.Cells[6, 38] := '16';
   Stgr_Base09.Cells[7, 38] := '17';
   Stgr_Base09.Cells[8, 38] := '18';
   Stgr_Base09.Cells[9, 38] := '19';
   Stgr_Base09.Cells[10, 38] := '25';
   // 39
   Stgr_Base16.Cells[0, 39] := '39';
   Stgr_Base16.Cells[1, 39] := 'V';
   Stgr_Base16.Cells[2, 39] := '01';
   Stgr_Base16.Cells[3, 39] := '02';
   Stgr_Base16.Cells[4, 39] := '03';
   Stgr_Base16.Cells[5, 39] := '04';
   Stgr_Base16.Cells[6, 39] := '05';
   Stgr_Base16.Cells[7, 39] := '07';
   Stgr_Base16.Cells[8, 39] := '12';
   Stgr_Base16.Cells[9, 39] := '13';
   Stgr_Base16.Cells[10, 39] := '14';
   Stgr_Base16.Cells[11, 39] := '17';
   Stgr_Base16.Cells[12, 39] := '18';
   Stgr_Base16.Cells[13, 39] := '20';
   Stgr_Base16.Cells[14, 39] := '21';
   Stgr_Base16.Cells[15, 39] := '22';
   Stgr_Base16.Cells[16, 39] := '24';
   Stgr_Base16.Cells[17, 39] := '25';
   Stgr_Base09.Cells[0, 39] := '39';
   Stgr_Base09.Cells[1, 39] := 'V';
   Stgr_Base09.Cells[2, 39] := '06';
   Stgr_Base09.Cells[3, 39] := '08';
   Stgr_Base09.Cells[4, 39] := '09';
   Stgr_Base09.Cells[5, 39] := '10';
   Stgr_Base09.Cells[6, 39] := '11';
   Stgr_Base09.Cells[7, 39] := '15';
   Stgr_Base09.Cells[8, 39] := '16';
   Stgr_Base09.Cells[9, 39] := '19';
   Stgr_Base09.Cells[10, 39] := '23';
   // 40
   Stgr_Base16.Cells[0, 40] := '40';
   Stgr_Base16.Cells[1, 40] := 'V';
   Stgr_Base16.Cells[2, 40] := '01';
   Stgr_Base16.Cells[3, 40] := '03';
   Stgr_Base16.Cells[4, 40] := '04';
   Stgr_Base16.Cells[5, 40] := '05';
   Stgr_Base16.Cells[6, 40] := '06';
   Stgr_Base16.Cells[7, 40] := '08';
   Stgr_Base16.Cells[8, 40] := '10';
   Stgr_Base16.Cells[9, 40] := '12';
   Stgr_Base16.Cells[10, 40] := '14';
   Stgr_Base16.Cells[11, 40] := '16';
   Stgr_Base16.Cells[12, 40] := '17';
   Stgr_Base16.Cells[13, 40] := '19';
   Stgr_Base16.Cells[14, 40] := '21';
   Stgr_Base16.Cells[15, 40] := '23';
   Stgr_Base16.Cells[16, 40] := '24';
   Stgr_Base16.Cells[17, 40] := '25';
   Stgr_Base09.Cells[0, 40] := '40';
   Stgr_Base09.Cells[1, 40] := 'V';
   Stgr_Base09.Cells[2, 40] := '02';
   Stgr_Base09.Cells[3, 40] := '07';
   Stgr_Base09.Cells[4, 40] := '09';
   Stgr_Base09.Cells[5, 40] := '11';
   Stgr_Base09.Cells[6, 40] := '13';
   Stgr_Base09.Cells[7, 40] := '15';
   Stgr_Base09.Cells[8, 40] := '18';
   Stgr_Base09.Cells[9, 40] := '20';
   Stgr_Base09.Cells[10, 40] := '22';

   Stgr_Base16.Height := Scbx_GABARITO.Height - 75;
   Stgr_Base09.Height := Scbx_GABARITO.Height - 75;
   Stgr_Sorteios.Height := Scbx_GABARITO.Height - 75;
   Stgr_Base16.RowCount := 41;
   Stgr_Base09.RowCount := 41;
   Stgr_Base17VF.RowCount := 41;

   Stgr_Estatisticas.RowCount := 41;
   Stgr_Estatisticas.ColWidths[0] := 50;
   Stgr_Estatisticas.Cells[1, 0] := 'Total de Ocorrências';
   Stgr_Estatisticas.Cells[2, 0] := '% Ocorrências';
   Stgr_Estatisticas.Cells[3, 0] := 'Média Ocorrências';
   Stgr_Estatisticas.Cells[4, 0] := 'Último Sorteio';
   Stgr_Estatisticas.Cells[5, 0] := 'Número de atrasos';
   Stgr_Estatisticas.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados.Height := Scbx_GABARITO.Height - 55;

   Stgr_Estatisticas13.RowCount := 41;
   Stgr_Estatisticas13.ColWidths[0] := 60;
   Stgr_Estatisticas13.Cells[1, 0] := 'Total de Ocorrências';
   Stgr_Estatisticas13.Cells[2, 0] := '% Ocorrências';
   Stgr_Estatisticas13.Cells[3, 0] := 'Média Ocorrências';
   Stgr_Estatisticas13.Cells[4, 0] := 'Último Sorteio';
   Stgr_Estatisticas13.Cells[5, 0] := 'Número de atrasos';
   // Stgr_EstatisticasSorteiosAtrasados.Cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   // Stgr_EstatisticasSorteiosAtrasados13.cells[0,0] := 'Qtd Sorteio atrasado decrescente';
   Stgr_Estatisticas13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasOcorrencias13.Height := Scbx_GABARITO.Height - 55;
   Stgr_EstatisticasSorteiosAtrasados13.Height := Scbx_GABARITO.Height - 55;

   stgr_ac8em9.Height := scrollBox_Resultado.Height - 39;
   stgr_ac1em9.Height := scrollBox_Resultado.Height - 39;
   stgr_ac7em16.ColWidths[0] := 60;
   stgr_ac7em16.Height := scrollBox_Resultado.Height - 39;
   stgr_ac9em16.ColWidths[0] := 60;
   stgr_ac9em16.Height := scrollBox_Resultado.Height - 39;
   stgr_10NaoSorteados_Comb1.ColWidths[0] := 65;
   stgr_10NaoSorteados_Comb1.ColWidths[2] := 50;
   stgr_10NaoSorteados_Comb1.Height := scrollBox_Resultado.Height - 39;
   stgr_15Sorteados_Comb1.ColWidths[0] := 65;
   stgr_15Sorteados_Comb1.ColWidths[2] := 50;
   stgr_15Sorteados_Comb1.Height := scrollBox_Resultado.Height - 39;
   // stgr_10NaoSorteados_Comb1 - colunas fixas:
   // coluna 0 = numeroLinha, 1 = numeroOrigem, 2=numero ac9em16, 3=numero stgr_ac1em9, 4=Flag ac9em16, 5= Flag stgr_ac1em9
End;

Procedure Tfrm_Ranqueador16Com12Linhas.Rb_gerarComb01Ate20Click(Sender: TObject);
Begin
   vsiInicioLinhas1 := 1;
   vsiTerminoLinhas1 := 20;
End;

Procedure Tfrm_Ranqueador16Com12Linhas.Rb_gerarComb21Ate40Click(Sender: TObject);
Begin
   vsiInicioLinhas1 := 20;
   vsiTerminoLinhas1 := 40;
End;

End.
