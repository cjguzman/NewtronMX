BEGIN
NULL;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4ASI'
,'ASISTENCIA'
,'ASISTENCIA'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'ASISTENCIA', NOM_COR_PLAN = 'ASISTENCIA', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4ASI'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4DAN'
,'DA�OS BIENES'
,'DAN BIEN'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'DA�OS BIENES', NOM_COR_PLAN = 'DAN BIEN', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4DAN'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4DED'
,'DEDUCIBLE'
,'DEDUCIBLE'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'DEDUCIBLE', NOM_COR_PLAN = 'DEDUCIBLE', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4DED'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4DIV'
,'DIVIDENDO'
,'DIVIDENDO'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'DIVIDENDO', NOM_COR_PLAN = 'DIVIDENDO', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4DIV'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4DPJ'
,'DEFENSA JURIDICA'
,'DEF JURID'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'DEFENSA JURIDICA', NOM_COR_PLAN = 'DEF JURID', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4DPJ'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4LYM'
,'LESIONES Y MUERTE'
,'LES MUERTE'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'LESIONES Y MUERTE', NOM_COR_PLAN = 'LES MUERTE', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4LYM'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4PDM'
,'PAGO COMPA�IAS DA�OS MATERIALE'
,'PAG DM'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'PAGO COMPA�IAS DA�OS MATERIALE', NOM_COR_PLAN = 'PAG DM', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4PDM'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4PL'
,'PAGO COMPA�IAS LESIONES'
,'PAG LES'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'PAGO COMPA�IAS LESIONES', NOM_COR_PLAN = 'PAG LES', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4PL'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4REC'
,'RECUPERACIONES'
,'RECUP'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'RECUPERACIONES', NOM_COR_PLAN = 'RECUP', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4REC'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4SAL'
,'SALVAMENTO'
,'SALVAMENTO'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'SALVAMENTO', NOM_COR_PLAN = 'SALVAMENTO', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4SAL'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500000
(COD_CIA
,COD_PLAN
,NOM_PLAN
,NOM_COR_PLAN
,MCA_INH
,COD_USR
,FEC_ACTU
)
VALUES ( 
1
,'4ROB'
,'ROBO TOTAL'
,'ROBO TOTAL'
,'N'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500000
 SET  NOM_PLAN = 'ROBO TOTAL', NOM_COR_PLAN = 'ROBO TOTAL', MCA_INH = 'N', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CIA = 1 AND  COD_PLAN = '4ROB'
;
END;
END;
/
COMMIT;