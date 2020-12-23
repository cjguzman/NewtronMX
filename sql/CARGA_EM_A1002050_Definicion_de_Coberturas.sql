BEGIN
NULL;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,1
,'RC Obligatoria Terceros'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Obligatoria Terceros', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 1
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4156
,'Dividendos'
,'7'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Dividendos', TIP_COB = '7', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4156
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,2
,'RC Terceros'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Terceros', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 2
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,9999
,'Generica'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Generica', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 9999
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4101
,'Da�os Materiales Parciales'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Da�os Materiales Parciales', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4101
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4102
,'Da�os Materiales Parciales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Da�os Materiales Parciales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4102
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4103
,'Da�os Atmosf�ricos Parciales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Da�os Atmosf�ricos Parciales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4103
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4104
,'Incendio y otros DM Parciales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Incendio y otros DM Parciales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4104
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4105
,'Equipo Especial DMP'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Equipo Especial DMP', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4105
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4106
,'P�rdidas consecuenciales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'P�rdidas consecuenciales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4106
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4107
,'Garant�a Sobre Ruedas'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Garant�a Sobre Ruedas', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4107
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4108
,'Conductor Universal PP'
,'5'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Conductor Universal PP', TIP_COB = '5', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4108
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4109
,'Reparaci�n en agencia'
,'5'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Reparaci�n en agencia', TIP_COB = '5', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4109
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4110
,'Da�os Materiales Totales'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Da�os Materiales Totales', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4110
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4111
,'Da�os Materiales Totales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Da�os Materiales Totales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4111
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4112
,'Da�os Atmosf�ricos Totales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Da�os Atmosf�ricos Totales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4112
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4113
,'Incendio y otros DM Totales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Incendio y otros DM Totales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4113
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4114
,'Equipo Especial DMT'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Equipo Especial DMT', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4114
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4115
,'Boletos de Avi�n DMT'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Boletos de Avi�n DMT', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4115
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4116
,'Conductor Universal PT'
,'5'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Conductor Universal PT', TIP_COB = '5', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4116
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4117
,'Cristales'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Cristales', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4117
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4118
,'Robo Total'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Robo Total', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4118
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4119
,'Robo Total'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Robo Total', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4119
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4120
,'Boletos de avi�n RT'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Boletos de avi�n RT', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4120
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4121
,'Equipo Especial RT'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Equipo Especial RT', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4121
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4122
,'Robo Parcial'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Robo Parcial', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4122
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4123
,'Robo Parcial'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Robo Parcial', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4123
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4124
,'Equipo Especial RP'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Equipo Especial RP', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4124
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4125
,'RC Obligatoria Terceros'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Obligatoria Terceros', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4125
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4126
,'RC Obligatoria Bienes'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Obligatoria Bienes', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4126
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4127
,'RCO Personas y Lesiones'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RCO Personas y Lesiones', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4127
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4128
,'RC Terceros'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Terceros', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4128
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4129
,'RC Bienes'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Bienes', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4129
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4130
,'RC Personas '
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Personas ', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4130
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4131
,'RC Catastr�fica Muerte Acc'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Catastr�fica Muerte Acc', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4131
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4132
,'RC Carga'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Carga', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4132
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4133
,'Equipo Especial RC'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Equipo Especial RC', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4133
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4134
,'Gastos M�dicos Ocupantes'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Gastos M�dicos Ocupantes', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4134
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4135
,'Lesiones Ocupantes'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Lesiones Ocupantes', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4135
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4136
,'RC Catastr�fica Muerte Acc'
,'7'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Catastr�fica Muerte Acc', TIP_COB = '7', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4136
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4137
,'Accidentes del Conductor'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Accidentes del Conductor', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4137
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4138
,'Lesiones Conductor'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Lesiones Conductor', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4138
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4139
,'Muerte'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Muerte', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4139
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4140
,'Auto Sustituto'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Auto Sustituto', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4140
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4141
,'Auto Sustituto Perd Parcial'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Auto Sustituto Perd Parcial', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4141
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4142
,'Auto Sustituto Perd Total'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Auto Sustituto Perd Total', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4142
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4143
,'Cobertura Integral en USA'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Cobertura Integral en USA', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4143
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4144
,'Auto GAP GTI'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Auto GAP GTI', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4144
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4145
,'RC Viajero'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Viajero', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4145
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4146
,'RC Viajero'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
COMMIT;
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'RC Viajero', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4146
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4147
,'Fallecimiento incapacidad GM'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Fallecimiento incapacidad GM', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4147
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4148
,'Gastos Funerarios'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Gastos Funerarios', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4148
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4149
,'P�rdida de Equipaje'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'P�rdida de Equipaje', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4149
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4150
,'Asistencia'
,'1'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Asistencia', TIP_COB = '1', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4150
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4151
,'Asistencia - Solo grua'
,'5'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Asistencia - Solo grua', TIP_COB = '5', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4151
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4152
,'Otras asistencias al Veh�culo'
,'5'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Otras asistencias al Veh�culo', TIP_COB = '5', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4152
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4153
,'Reposici�n de Llave'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Reposici�n de Llave', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4153
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4154
,'Defensa Jur�dica'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Defensa Jur�dica', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4154
;
END;
BEGIN 
INSERT INTO TRON2000.A1002050
(COD_CIA
,COD_COB
,NOM_COB
,TIP_COB
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,4155
,'Devoluci�n de prima'
,'4'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A1002050
 SET  NOM_COB = 'Devoluci�n de prima', TIP_COB = '4', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_COB = 4155
;
END;
END;
/
COMMIT;