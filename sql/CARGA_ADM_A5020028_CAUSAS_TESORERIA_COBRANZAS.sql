BEGIN
NULL;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'25'
,'ANULACION LSFO'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ANULACION LSFO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '25' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'1'
,'CHEQUE DEVUELTO'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'CHEQUE DEVUELTO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '1' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'2'
,'CORRECCION EN EMISION'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'CORRECCION EN EMISION', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '2' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'3'
,'ERROR EN APLICACION'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ERROR EN APLICACION', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '3' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'4'
,'ANULACION DE SUPLEMENTOS'
,'DP'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ANULACION DE SUPLEMENTOS', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '4' AND  TIP_CAUSA = 'DP'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'5'
,'DIFICIL COBRO'
,'CG'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'DIFICIL COBRO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '5' AND  TIP_CAUSA = 'CG'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'6'
,'DEVOLUCION DEL BANCO'
,'CG'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'DEVOLUCION DEL BANCO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '6' AND  TIP_CAUSA = 'CG'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'7'
,'DIFICIL GESTION'
,'CG'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'DIFICIL GESTION', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '7' AND  TIP_CAUSA = 'CG'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'8'
,'DOMICILIACION ESPECIAL'
,'CG'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'DOMICILIACION ESPECIAL', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '8' AND  TIP_CAUSA = 'CG'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'9'
,'DOMICILIAC. INMEDIATA TURISTAS'
,'CG'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'DOMICILIAC. INMEDIATA TURISTAS', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '9' AND  TIP_CAUSA = 'CG'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'10'
,'CARGO NO RECONOCIDO X CLIENTE'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'CARGO NO RECONOCIDO X CLIENTE', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '10' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'11'
,'CAMBIO DE AGENTE'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'CAMBIO DE AGENTE', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '11' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'12'
,'CAMBIO DE FORMA DE PAGO'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'CAMBIO DE FORMA DE PAGO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '12' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'13'
,'ERROR EN PAGO'
,'AC'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ERROR EN PAGO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '13' AND  TIP_CAUSA = 'AC'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'14'
,'ERROR EN SOPORTE'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ERROR EN SOPORTE', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '14' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'15'
,'RECHAZO POR BANCO'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'RECHAZO POR BANCO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '15' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'16'
,'MALA IMPUTACION'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'MALA IMPUTACION', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '16' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'17'
,'NO PROCEDE EMITIR CHEQUE'
,'AN'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'NO PROCEDE EMITIR CHEQUE', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '17' AND  TIP_CAUSA = 'AN'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'18'
,'ERROR DE IMPRESION'
,'AN'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ERROR DE IMPRESION', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '18' AND  TIP_CAUSA = 'AN'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'19'
,'ERROR DE CAPTURA'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ERROR DE CAPTURA', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '19' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'20'
,'ERROR EN PAGO'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'ERROR EN PAGO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '20' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'21'
,'PAGO DUPLICADO'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'PAGO DUPLICADO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '21' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'22'
,'SINIESTRO DUPLICADO'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'SINIESTRO DUPLICADO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '22' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'23'
,'EXPEDIENTE DUPLICADO'
,'AO'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'EXPEDIENTE DUPLICADO', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '23' AND  TIP_CAUSA = 'AO'
;
END;
BEGIN 
INSERT INTO TRON2000.A5020028
(COD_CAUSA
,NOM_CAUSA
,TIP_CAUSA
,COD_USR
,FEC_ACTU
)
VALUES ( 
'24'
,'CADUCO POR SPEI'
,'AN'
,'TRON2000'
,SYSDATE
);
EXCEPTION 
WHEN DUP_VAL_ON_INDEX THEN 
UPDATE TRON2000.A5020028
 SET  NOM_CAUSA = 'CADUCO POR SPEI', COD_USR = 'TRON2000', FEC_ACTU = SYSDATE
 WHERE  COD_CAUSA = '24' AND  TIP_CAUSA = 'AN'
;
END;
END;
/
COMMIT;