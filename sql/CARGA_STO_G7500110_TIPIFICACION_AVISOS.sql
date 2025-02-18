BEGIN
NULL;
BEGIN 
INSERT INTO TRON2000.G7500110
(COD_CIA
,SUB_TIP_TRAMITE
,COD_USR
,FEC_ACTU
,MCA_MANUAL
,MCA_MOD_NUM_DIAS
,NUM_DIAS
,MCA_MOD_TXT_AVISO
,TXT_AVISO
,NOM_PRG_NUM_DIAS
,NOM_PRG_TXT_AVISO
,NOM_PRG_VALIDA
,COD_PLAN
,NOM_PRG_TERM_AVISO
)
VALUES ( 
1
,'AT'
,'TRON2000'
,SYSDATE
,'S'
,'S'
,1
,'S'
,'ANOTACION TRAMITADOR'
,NULL
,NULL
,NULL
,'9999'
,NULL
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500110
 SET  COD_USR = 'TRON2000', FEC_ACTU = SYSDATE, MCA_MANUAL = 'S', MCA_MOD_NUM_DIAS = 'S', NUM_DIAS = 1, MCA_MOD_TXT_AVISO = 'S', TXT_AVISO = 'ANOTACION TRAMITADOR', NOM_PRG_NUM_DIAS = NULL, 
 NOM_PRG_TXT_AVISO = NULL, NOM_PRG_VALIDA = NULL, NOM_PRG_TERM_AVISO = NULL
 WHERE  COD_CIA = 1 AND  SUB_TIP_TRAMITE = 'AT' AND  COD_PLAN = '9999'
;
END;
BEGIN 
INSERT INTO TRON2000.G7500110
(COD_CIA
,SUB_TIP_TRAMITE
,COD_USR
,FEC_ACTU
,MCA_MANUAL
,MCA_MOD_NUM_DIAS
,NUM_DIAS
,MCA_MOD_TXT_AVISO
,TXT_AVISO
,NOM_PRG_NUM_DIAS
,NOM_PRG_TXT_AVISO
,NOM_PRG_VALIDA
,COD_PLAN
,NOM_PRG_TERM_AVISO
)
VALUES ( 
1
,'SU'
,'TRON2000'
,SYSDATE
,'S'
,'S'
,1
,'S'
,'ANOTACION SUPERVISOR'
,NULL
,NULL
,NULL
,'9999'
,NULL
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.G7500110
 SET  COD_USR = 'TRON2000', FEC_ACTU = SYSDATE, MCA_MANUAL = 'S', MCA_MOD_NUM_DIAS = 'S', NUM_DIAS = 1, MCA_MOD_TXT_AVISO = 'S', TXT_AVISO = 'ANOTACION SUPERVISOR', NOM_PRG_NUM_DIAS = NULL, 
 NOM_PRG_TXT_AVISO = NULL, NOM_PRG_VALIDA = NULL, NOM_PRG_TERM_AVISO = NULL
 WHERE  COD_CIA = 1 AND  SUB_TIP_TRAMITE = 'SU' AND  COD_PLAN = '9999'
;
END;
END;
/
COMMIT;