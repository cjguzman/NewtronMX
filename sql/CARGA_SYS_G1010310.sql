REM INSERTING into TRON2000.G1010310
SET DEFINE OFF;
Insert into TRON2000.G1010310 (NOM_TABLA,COD_VERSION,TXT_WHERE,TXT_WHERE_RESTO,TXT_ORDER_BY,COD_INSTALACION,NOM_PRG_CREACION) values ('TA999005',1,'ta999005.cod_cia = TO_NUMBER([cod_cia]) 
AND ta999005.cod_ramo IN(TO_NUMBER([cod_ramo]), 999)
AND ta999005.mca_inh =''N''
AND ta999005.cod_producto=TO_NUMBER([dvcod_producto])
AND ta999005.fec_validez=(SELECT MAX(fec_validez)
FROM ta999005 b
 WHERE b.cod_cia=ta999005.cod_cia
AND b.cod_ramo=ta999005.cod_ramo
AND b.cod_producto=ta999005.cod_producto
AND b.cod_amb_circulacion=ta999005.cod_amb_circulacion
AND b.mca_inh=''N''
AND b.fec_validez<=TO_DATE([fec_efec_poliza],''DDMMYYYY''))
AND df_cmn_nwt_xx_vrb_cnc.cmp_val=ta999005.cod_cia
AND df_cmn_nwt_xx_vrb_cnc.row_val=ta999005.cod_amb_circulacion 
 AND df_cmn_nwt_xx_vrb_cnc.lob_val IN(TO_NUMBER([cod_ramo]),999)
 AND df_cmn_nwt_xx_vrb_cnc.mdt_val=99999
 AND df_cmn_nwt_xx_vrb_cnc.crn_val IN(TO_NUMBER([cod_mon]),99)
 AND df_cmn_nwt_xx_vrb_cnc.cvr_val IN(TO_NUMBER([cod_cob]),9999)
 AND df_cmn_nwt_xx_vrb_cnc.frs_lvl_val IN(TO_NUMBER([cod_nivel1]),99)
 AND df_cmn_nwt_xx_vrb_cnc.scn_lvl_val IN(TO_NUMBER([cod_nivel2]),999)
 AND df_cmn_nwt_xx_vrb_cnc.thr_lvl_val IN(TO_NUMBER([cod_nivel3]),9999)
 AND df_cmn_nwt_xx_vrb_cnc.frs_dst_hnl_val IN(NVL([cod_canal1],''ZZZZ''),''ZZZZ'')
 AND df_cmn_nwt_xx_vrb_cnc.scn_dst_hnl_val IN(NVL([cod_canal2],''ZZZZ''),''ZZZZ'')
 AND df_cmn_nwt_xx_vrb_cnc.thr_dst_hnl_val IN(NVL([cod_canal3],''ZZZZ''),''ZZZZ'')
 AND df_cmn_nwt_xx_vrb_cnc.agn_val IN(TO_NUMBER([cod_agt]),999999)
 AND df_cmn_nwt_xx_vrb_cnc.gpp_val IN(NVL([num_poliza_grupo],''ZZZZZZZZZZZZZ''),''ZZZZZZZZZZZZZ'')
 AND df_cmn_nwt_xx_vrb_cnc.del_val IN(NVL([num_contrato],99999),99999)
 AND df_cmn_nwt_xx_vrb_cnc.sbl_val IN(NVL([num_subcontrato],99999),99999)
 AND df_cmn_nwt_xx_vrb_cnc.ply_val IN([num_poliza],''ZZZZZZZZZZZZZ'')
 AND df_cmn_nwt_xx_vrb_cnc.vrb_nam=UPPER([cod_campo])
 AND df_cmn_nwt_xx_vrb_cnc.dsb_row =''N''
 AND df_cmn_nwt_xx_vrb_cnc.vld_dat=
(SELECT MAX(vld_dat)
FROM df_cmn_nwt_xx_vrb_cnc a
WHERE a.cmp_val=cmp_val
AND a.vld_dat<=TO_DATE([fec_efec_poliza],''DDMMYYYY'')','AND a.lob_val=lob_val
AND a.mdt_val=mdt_val
AND a.crn_val=crn_val
AND a.cvr_val=cvr_val
AND a.frs_lvl_val=frs_lvl_val
AND a.scn_lvl_val=scn_lvl_val
AND a.thr_lvl_val=thr_lvl_val
AND a.frs_dst_hnl_val=frs_dst_hnl_val
AND a.scn_dst_hnl_val=scn_dst_hnl_val
AND a.thr_dst_hnl_val=thr_dst_hnl_val
AND a.gpp_val=gpp_val
AND a.del_val=del_val
AND a.sbl_val=sbl_val
AND a.ply_val=ply_val
AND a.agn_val=agn_val
AND a.vrb_nam=vrb_nam
AND a.row_val=row_val
AND a.dsb_row =''N''
)
','ta999005.cod_amb_circulacion','MMX',null);
Insert into TRON2000.G1010310 (NOM_TABLA,COD_VERSION,TXT_WHERE,TXT_WHERE_RESTO,TXT_ORDER_BY,COD_INSTALACION,NOM_PRG_CREACION) values ('TA999007',1,'ta999007.cod_cia             =    TO_NUMBER([cod_cia])
AND ta999007.cod_sector       IN  (TO_NUMBER([cod_sector]), 9999)
AND ta999007.cod_ramo         IN  (TO_NUMBER([cod_ramo]), 999)
AND ta999007.num_poliza_grupo IN  ([num_poliza_grupo], ''ZZZZZZZZZZZZZ'')
AND ta999007.num_contrato     IN  (TO_NUMBER([num_contrato]), 99999)
AND ta999007.num_subcontrato  IN  (TO_NUMBER([num_subcontrato]), 99999)
AND ta999007.cod_canal3       IN  ([cod_canal3], ''ZZZZ'')
AND ta999007.cod_producto     =   TO_NUMBER([dvcod_producto])
AND ta999007.cod_tip_vehi     IN  TO_NUMBER([dvcod_tip_vehi], 999)
AND ta999007.mca_inh          =   ''N''
AND ta999007.fec_validez      =
(SELECT MAX(fec_validez)
FROM ta999007 b
WHERE b.cod_cia        = ta999007.cod_cia
AND b.cod_sector       = ta999007.cod_sector
AND b.cod_ramo         = ta999007.cod_ramo
AND b.num_poliza_grupo = ta999007.num_poliza_grupo
AND b.num_contrato     = ta999007.num_contrato
AND b.num_subcontrato  = ta999007.num_subcontrato
AND b.cod_canal3       = ta999007.cod_canal3
AND b.cod_producto     = ta999007.cod_producto
AND b.cod_tip_vehi     = ta999007.cod_tip_vehi
AND b.mca_inh          =   ''N''
AND b.fec_validez     <= TO_DATE([fec_efec_poliza],''DDMMYYYY''))
AND a2100200.cod_cia      = ta999007.cod_cia
AND a2100200.cod_uso_vehi = ta999007.cod_uso_vehi
AND a2100200.mca_inh      =   ''N''
AND a2100200.fec_validez = (SELECT MAX(fec_validez)
FROM a2100200 c
WHERE c.cod_cia          = a2100200.cod_cia
AND c.cod_uso_vehi     = a2100200.cod_uso_vehi
AND c.mca_inh          =   ''N''
AND c.fec_validez     <= TO_DATE([fec_efec_poliza],''DDMMYYYY''))
',null,'ta999007.cod_uso_vehi','MMX',null);
Insert into TRON2000.G1010310 (NOM_TABLA,COD_VERSION,TXT_WHERE,TXT_WHERE_RESTO,TXT_ORDER_BY,COD_INSTALACION,NOM_PRG_CREACION) values ('A2100200',4,'A2100200.cod_cia=TO_NUMBER([cod_cia])
AND A2100200.mca_inh=''N''
AND A2100200.fec_validez=(SELECT MAX(fec_validez)
FROM A2100200 c
WHERE c.cod_cia=A2100200.cod_cia
AND c.cod_uso_vehi=A2100200.cod_uso_vehi
AND c.mca_inh=''N''
AND c.fec_validez <=TO_DATE([fec_efec_poliza],''DDMMYYYY''))
AND EXISTS(select * from ta999007
where ta999007.cod_cia=TO_NUMBER([cod_cia])
AND ta999007.cod_sector IN (TO_NUMBER([cod_sector]), 9999)
AND ta999007.cod_ramo IN (TO_NUMBER([cod_ramo]), 999)
AND ta999007.num_poliza_grupo IN ([num_poliza_grupo], ''ZZZZZZZZZZZZZ'')
AND ta999007.num_contrato IN (TO_NUMBER([num_contrato]), 99999)
AND ta999007.num_subcontrato IN (TO_NUMBER([num_subcontrato]), 99999)
AND ta999007.cod_canal3 IN ([cod_canal3], ''ZZZZ'')
AND ta999007.cod_producto = TO_NUMBER([dvcod_producto])
AND ta999007.cod_tip_vehi IN  TO_NUMBER([dvcod_tip_vehi], 999)
AND ta999007.mca_inh=''N''
AND ta999007.cod_uso_vehi in (A2100200.cod_uso_vehi,999)
AND ta999007.fec_validez=(SELECT MAX(fec_validez)
FROM ta999007 b
WHERE b.cod_cia=ta999007.cod_cia
AND b.cod_sector=ta999007.cod_sector
AND b.cod_ramo=ta999007.cod_ramo
AND b.num_poliza_grupo=ta999007.num_poliza_grupo
AND b.num_contrato=ta999007.num_contrato
AND b.num_subcontrato=ta999007.num_subcontrato
AND b.cod_canal3=ta999007.cod_canal3
AND b.cod_producto=ta999007.cod_producto
AND b.cod_tip_vehi = ta999007.cod_tip_vehi
AND b.cod_uso_vehi=ta999007.cod_uso_vehi
AND b.mca_inh=''N''
AND b.fec_validez <=TO_DATE([fec_efec_poliza],''DDMMYYYY'')))',null,'A2100200.cod_uso_vehi','MMX',null);
Insert into TRON2000.G1010310 (NOM_TABLA,COD_VERSION,TXT_WHERE,TXT_WHERE_RESTO,TXT_ORDER_BY,COD_INSTALACION,NOM_PRG_CREACION) values ('TA999006',1,'ta999006.cod_cia = TO_NUMBER([cod_cia])
AND ta999006.cod_sector       IN  (TO_NUMBER([cod_sector]), 9999)
AND ta999006.cod_ramo         IN  (TO_NUMBER([cod_ramo]), 999)
AND ta999006.num_poliza_grupo IN  ([num_poliza_grupo], ''ZZZZZZZZZZZZZ'')
AND ta999006.num_contrato     IN  (TO_NUMBER([num_contrato]), 99999)
AND ta999006.num_subcontrato  IN  (TO_NUMBER([num_subcontrato]), 99999)
AND ta999006.cod_canal3       IN  ([cod_canal3], ''ZZZZ'')
AND ta999006.cod_producto       =   TO_NUMBER([dvcod_producto])
AND ta999006.cod_amb_circulacion =  TO_NUMBER([dvcod_amb_circulacion])
AND ta999006.mca_inh          =   ''N''
AND ta999006.fec_validez      =  ( SELECT MAX(fec_validez)
 FROM ta999006 b
 WHERE b.cod_cia  = ta999006.cod_cia
  AND b.cod_sector       = ta999006.cod_sector
  AND b.cod_ramo         = ta999006.cod_ramo
  AND b.num_poliza_grupo = ta999006.num_poliza_grupo
  AND b.num_contrato     = ta999006.num_contrato
  AND b.num_subcontrato  = ta999006.num_subcontrato
  AND b.cod_canal3       = ta999006.cod_canal3
  AND b.cod_producto     = ta999006.cod_producto
  AND b.cod_amb_circulacion  = ta999006.cod_amb_circulacion
  AND b.cod_tip_vehi     = ta999006.cod_tip_vehi
  AND b.mca_inh          =   ''N''
  AND b.fec_validez     <= TO_DATE([fec_efec_poliza],''DDMMYYYY''))
  AND A2100100.cod_cia = ta999006.cod_cia
  AND A2100100.cod_tip_vehi = ta999006.cod_tip_vehi
   AND A2100100.mca_inh          =   ''N''
   AND A2100100.fec_validez = ( SELECT MAX(fec_validez)
   FROM A2100100 c
    WHERE c.cod_cia  = A2100100.cod_cia
    AND c.cod_tip_vehi = A2100100.cod_tip_vehi
    AND c.mca_inh  = ''N''
    AND c.fec_validez <= TO_DATE([fec_efec_poliza],''DDMMYYYY''))
            ',null,'ta999006.cod_tip_vehi','MMX',null);
Insert into TRON2000.G1010310 (NOM_TABLA,COD_VERSION,TXT_WHERE,TXT_WHERE_RESTO,TXT_ORDER_BY,COD_INSTALACION,NOM_PRG_CREACION) values ('A2100100',3,'A2100100.cod_cia=TO_NUMBER([cod_cia])
AND A2100100.mca_inh=''N''
AND A2100100.fec_validez=(SELECT MAX(fec_validez)
FROM A2100100 c
WHERE c.cod_cia=A2100100.cod_cia
AND c.cod_tip_vehi=A2100100.cod_tip_vehi
AND c.mca_inh=''N''
AND c.fec_validez <=TO_DATE([fec_efec_poliza],''DDMMYYYY''))
AND EXISTS(select * from ta999006
where ta999006.cod_cia=TO_NUMBER([cod_cia])
AND ta999006.cod_sector IN (TO_NUMBER([cod_sector]), 9999)
AND ta999006.cod_ramo IN (TO_NUMBER([cod_ramo]), 999)
AND ta999006.num_poliza_grupo IN ([num_poliza_grupo], ''ZZZZZZZZZZZZZ'')
AND ta999006.num_contrato IN (TO_NUMBER([num_contrato]), 99999)
AND ta999006.num_subcontrato IN (TO_NUMBER([num_subcontrato]), 99999)
AND ta999006.cod_canal3 IN ([cod_canal3], ''ZZZZ'')
AND ta999006.cod_producto = TO_NUMBER([dvcod_producto])
AND ta999006.cod_amb_circulacion = TO_NUMBER([dvcod_amb_circulacion])
AND ta999006.mca_inh=''N''
AND ta999006.cod_tip_vehi in (a2100100.cod_tip_vehi,999)
AND ta999006.fec_validez=(SELECT MAX(fec_validez)
FROM ta999006 b
WHERE b.cod_cia=ta999006.cod_cia
AND b.cod_sector=ta999006.cod_sector
AND b.cod_ramo=ta999006.cod_ramo
AND b.num_poliza_grupo=ta999006.num_poliza_grupo
AND b.num_contrato=ta999006.num_contrato
AND b.num_subcontrato=ta999006.num_subcontrato
AND b.cod_canal3=ta999006.cod_canal3
AND b.cod_producto=ta999006.cod_producto
AND b.cod_amb_circulacion=ta999006.cod_amb_circulacion
AND b.cod_tip_vehi=ta999006.cod_tip_vehi
AND b.mca_inh=''N''
AND b.fec_validez <=TO_DATE([fec_efec_poliza],''DDMMYYYY'')))',null,'a2100100.cod_tip_vehi','MMX',null);
commit;
