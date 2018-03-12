AAL_1 = csvread('AAL.L.csv',2,4,[2 4 750 4]);
AAL_sub = csvread('AAL.L.csv',1,4,[1 4 749 4]);
AAL_1 = (AAL_1 - AAL_sub) ./ AAL_1;

HSBA_2 = csvread('HSBA.L.csv',2,4,[2 4 750 4]);
HSBA_2_sub = csvread('HSBA.L.csv',1,4,[1 4 749 4]);
HSBA_2 = (HSBA_2 - HSBA_2_sub) ./ HSBA_2;

ADM_3 = csvread('ADM.L.csv',2,4,[2 4 750 4]);
ADM_3_sub = csvread('ADM.L.csv',1,4,[1 4 749 4]);
ADM_3 = (ADM_3 - ADM_3_sub) ./ ADM_3;

ANTO_4 = csvread('ANTO.L.csv',2,4,[2 4 750 4]);
ANTO_4_sub = csvread('ANTO.L.csv',1,4,[1 4 749 4]);
ANTO_4 = (ANTO_4 - ANTO_4_sub) ./ ANTO_4;

CCH_5 = csvread('CCH.L.csv',2,4,[2 4 750 4]);
CCH_5_sub = csvread('CCH.L.csv',1,4,[1 4 749 4]);
CCH_5 = (CCH_5 - CCH_5_sub) ./ CCH_5;

CNA_6 = csvread('CNA.L.csv',2,4,[2 4 750 4]);
CNA_6_sub = csvread('CNA.L.csv',1,4,[1 4 749 4]);
CNA_6 = (CNA_6 - CNA_6_sub) ./ CNA_6;

CPG_7 = csvread('CPG.L.csv',2,4,[2 4 750 4]);
CPG_7_sub = csvread('CPG.L.csv',1,4,[1 4 749 4]);
CPG_7 = (CPG_7 - CPG_7_sub) ./ CPG_7;

CRDA_8 = csvread('CRDA.L.csv',2,4,[2 4 750 4]);
CRDA_8_sub = csvread('CRDA.L.csv',1,4,[1 4 749 4]);
CRDA_8 = (CRDA_8 - CRDA_8_sub) ./ CRDA_8;

CRH_9 = csvread('CRH.csv',2,4,[2 4 750 4]);
CRH_9_sub = csvread('CRH.csv',1,4,[1 4 749 4]);
CRH_9 = (CRH_9 - CRH_9_sub) ./ CRH_9;

HSBA_10 = csvread('HSBA.L.csv',2,4,[2 4 750 4]);
HSBA_10_sub = csvread('HSBA.L.csv',1,4,[1 4 749 4]);
HSBA_10 = (HSBA_10 - HSBA_10_sub) ./ HSBA_10;

IHG_11 = csvread('IHG.csv',2,4,[2 4 750 4]);
IHG_11_sub = csvread('IHG.csv',1,4,[1 4 749 4]);
IHG_11 = (IHG_11 - IHG_11_sub) ./ IHG_11;

IMB_12 = csvread('IMB.L.csv',2,4,[2 4 750 4]);
IMB_12_sub = csvread('IMB.L.csv',1,4,[1 4 749 4]);
IMB_12 = (IMB_12 - IMB_12_sub) ./ IMB_12;

INF_13 = csvread('INF.L.csv',2,4,[2 4 750 4]);
INF_13_sub = csvread('INF.L.csv',1,4,[1 4 749 4]);
INF_13 = (INF_13 - INF_13_sub) ./ INF_13;

ITRK_14 = csvread('ITRK.L.csv',2,4,[2 4 750 4]);
ITRK_14_sub = csvread('ITRK.L.csv',1,4,[1 4 749 4]);
ITRK_14 = (ITRK_14 - ITRK_14_sub) ./ ITRK_14;

NMC_15 = csvread('NMC.L.csv',2,4,[2 4 750 4]);
NMC_15_sub = csvread('NMC.L.csv',1,4,[1 4 749 4]);
NMC_15 = (NMC_15 - NMC_15_sub) ./ NMC_15;

NXT_16 = csvread('NXT.L.csv',2,4,[2 4 750 4]);
NXT_16_sub = csvread('NXT.L.csv',1,4,[1 4 749 4]);
NXT_16 = (NXT_16 - NXT_16_sub) ./ NXT_16;

OML_17 = csvread('OML.L.csv',2,4,[2 4 750 4]);
OML_17_sub = csvread('OML.L.csv',1,4,[1 4 749 4]);
OML_17 = (OML_17 - OML_17_sub) ./ OML_17;

PPB_18 = csvread('PPB.L.csv',2,4,[2 4 750 4]);
PPB_18_sub = csvread('PPB.L.csv',1,4,[1 4 749 4]);
PPB_18 = (PPB_18 - PPB_18_sub) ./ PPB_18;

PSON_19 = csvread('PSON.L.csv',2,4,[2 4 750 4]);
PSON_19_sub = csvread('PSON.L.csv',1,4,[1 4 749 4]);
PSON_19 = (PSON_19 - PSON_19_sub) ./ PSON_19;

SGE_20 = csvread('SGE.L.csv',2,4,[2 4 750 4]);
SGE_20_sub = csvread('SGE.L.csv',1,4,[1 4 749 4]);
SGE_20 = (SGE_20 - SGE_20_sub) ./ SGE_20;

SGRO_21 = csvread('SGRO.L.csv',2,4,[2 4 750 4]);
SGRO_21_sub = csvread('SGRO.L.csv',1,4,[1 4 749 4]);
SGRO_21 = (SGRO_21 - SGRO_21_sub) ./ SGRO_21;

SHPG_22 = csvread('SHPG.csv',2,4,[2 4 750 4]);
SHPG_22_sub = csvread('SHPG.csv',1,4,[1 4 749 4]);
SHPG_22 = (SHPG_22 - SHPG_22_sub) ./ SHPG_22;

SKY_23 = csvread('SKY.L.csv',2,4,[2 4 750 4]);
SKY_23_sub = csvread('SKY.L.csv',1,4,[1 4 749 4]);
SKY_23 = (SKY_23 - SKY_23_sub) ./ SKY_23;

UU_24 = csvread('UU.L.csv',2,4,[2 4 750 4]);
UU_24_sub = csvread('UU.L.csv',1,4,[1 4 749 4]);
UU_24 = (UU_24 - UU_24_sub) ./ UU_24;

SVT_25 = csvread('SVT.L.csv',2,4,[2 4 750 4]);
SVT_25_sub = csvread('SVT.L.csv',1,4,[1 4 749 4]);
SVT_25 = (SVT_25 - SVT_25_sub) ./ SVT_25;

VOD_26 = csvread('VOD.L.csv',2,4,[2 4 750 4]);
VOD_26_sub = csvread('VOD.L.csv',1,4,[1 4 749 4]);
VOD_26 = (VOD_26 - VOD_26_sub) ./ VOD_26;

WTB_27 = csvread('WTB.L.csv',2,4,[2 4 750 4]);
WTB_27_sub = csvread('WTB.L.csv',1,4,[1 4 749 4]);
WTB_27 = (WTB_27 - WTB_27_sub) ./ WTB_27;

BATS_28 = csvread('BATS.L.csv',2,4,[2 4 750 4]);
BATS_28_sub = csvread('BATS.L.csv',1,4,[1 4 749 4]);
BATS_28 = (BATS_28 - BATS_28_sub) ./ BATS_28;

FERG_29 = csvread('FERG.L.csv',2,4,[2 4 750 4]);
FERG_29_sub = csvread('FERG.L.csv',1,4,[1 4 749 4]);
FERG_29 = (FERG_29 - FERG_29_sub) ./ FERG_29;

RIO_30 = csvread('RIO.L.csv',2,4,[2 4 750 4]);
RIO_30_sub = csvread('RIO.L.csv',1,4,[1 4 749 4]);
RIO_30 = (RIO_30 - RIO_30_sub) ./ RIO_30;

% build the Return matrix
R = horzcat(AAL_1, HSBA_2, ADM_3, ANTO_4, CCH_5, CNA_6, CPG_7, CRDA_8,CRH_9, HSBA_10, IHG_11,IMB_12,INF_13,ITRK_14,NMC_15,NXT_16, OML_17, PPB_18,PSON_19,SGE_20,SGRO_21,SHPG_22,SKY_23,UU_24,SVT_25,VOD_26,WTB_27,BATS_28,FERG_29,RIO_30);
% R = R';

y = csvread('FTSE.csv',2,0,[2 0 750 0]);
y_sub = csvread('FTSE.csv',1,0,[1 0 749 0]);
y = (y - y_sub) ./ y;

% [b, fitinfo] = lasso(R,y,'CV',5);
% lassoPlot(b,fitinfo,'PlotType','CV');

barplot = zeros(30, 1);

for d = 1:50

    [b, fitinfo] = lasso(R,y,'CV',5);


    indexMSE = getfield(fitinfo, 'IndexMinMSE');
    lambda = getfield(fitinfo, 'Lambda');

    indexes = find(b(:,indexMSE));

    for index = indexes
       barplot(index) = barplot(index) + 1; 
    end

end

bar(barplot)
title('Lasso Regression')

xlabel('Stocks') % x-axis label
ylabel('Number of times assigned with non-zero weight') % y-axis label

% % 18,20,25,29
% tot = 0.0113 + 0.0113 + 0.0286 + 0.0286;
% 
% exp_return = ((0.0113 / tot) * mean(PPB_18)) + ((0.0113 / tot) * mean(SGE_20)) + ((0.0286 / tot) * mean(SVT_25)) + ((0.0286 / tot) * mean(FERG_29));


