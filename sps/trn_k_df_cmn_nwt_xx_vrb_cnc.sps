CREATE OR REPLACE PACKAGE BODY tron2000.trn_k_df_cmn_nwt_xx_vrb_cnc AS
 --
 /* -------------------- VERSION = 1.00 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2018/11/21 - agonza3 - 1.00
 || Creacion
 */ --------------------------------------------------------
 --
 /* --------------------------------------------------
 || Aqui comienza la declaracion de variables GLOBALES
 */ --------------------------------------------------
 --
 TYPE reg_pk IS RECORD
     (cmp_val         df_cmn_nwt_xx_vrb_cnc.cmp_val        %TYPE,
      lob_val         df_cmn_nwt_xx_vrb_cnc.lob_val        %TYPE,
      mdt_val         df_cmn_nwt_xx_vrb_cnc.mdt_val        %TYPE,
      crn_val         df_cmn_nwt_xx_vrb_cnc.crn_val        %TYPE,
      cvr_val         df_cmn_nwt_xx_vrb_cnc.cvr_val        %TYPE,
      frs_lvl_val     df_cmn_nwt_xx_vrb_cnc.frs_lvl_val    %TYPE,
      scn_lvl_val     df_cmn_nwt_xx_vrb_cnc.scn_lvl_val    %TYPE,
      thr_lvl_val     df_cmn_nwt_xx_vrb_cnc.thr_lvl_val    %TYPE,
      frs_dst_hnl_val df_cmn_nwt_xx_vrb_cnc.frs_dst_hnl_val%TYPE,
      scn_dst_hnl_val df_cmn_nwt_xx_vrb_cnc.scn_dst_hnl_val%TYPE,
      thr_dst_hnl_val df_cmn_nwt_xx_vrb_cnc.thr_dst_hnl_val%TYPE,
      agn_val         df_cmn_nwt_xx_vrb_cnc.agn_val        %TYPE,
      gpp_val         df_cmn_nwt_xx_vrb_cnc.gpp_val        %TYPE,
      del_val         df_cmn_nwt_xx_vrb_cnc.del_val        %TYPE,
      sbl_val         df_cmn_nwt_xx_vrb_cnc.sbl_val        %TYPE,
      ply_val         df_cmn_nwt_xx_vrb_cnc.ply_val        %TYPE,
      vrb_nam         df_cmn_nwt_xx_vrb_cnc.vrb_nam        %TYPE,
      row_val         df_cmn_nwt_xx_vrb_cnc.row_val        %TYPE, 
      vld_dat         df_cmn_nwt_xx_vrb_cnc.vld_dat        %TYPE
     );
 --
 g_e_mca_inh EXCEPTION;
 --
 /* ---------------------------------------------------
 || Aqui comienza la declaracion de constantes GLOBALES
 */ ---------------------------------------------------
 --
 /* ----------------------------------------------------
 || Aqui comienza la declaracion de subprogramas LOCALES
 */ ----------------------------------------------------
 --
 /* --------------------------------------------------------
 || pp_devuelve_error :
 ||
 || Devuelve un error
 */ --------------------------------------------------------
 --
 PROCEDURE pp_devuelve_error(p_cod_mensaje g1010020.cod_mensaje%TYPE,
                             p_anx_mensaje g1010020.txt_mensaje%TYPE,
                             p_cod_idioma  g1010020.cod_idioma %TYPE) IS
 BEGIN
  --
  IF p_cod_mensaje BETWEEN 20000
                       AND 20999
   THEN
    --
    RAISE_APPLICATION_ERROR(-p_cod_mensaje,
                            ss_k_mensaje.f_texto_idioma(p_cod_mensaje,
                                                        p_cod_idioma ) ||
                            p_anx_mensaje
                           );
    --
   ELSE
    --
    RAISE_APPLICATION_ERROR(-20000,
                            ss_k_mensaje.f_texto_idioma(p_cod_mensaje,
                                                        p_cod_idioma ) ||
                            p_anx_mensaje);
    --
  END IF;
  --
 END pp_devuelve_error;
 --
 /* --------------------------------------------------------
 || pp_comprueba_error :
 ||
 || Comprueba y devuelve el error si lo hubo
 */ --------------------------------------------------------
 --
 PROCEDURE pp_comprueba_error(p_existe BOOLEAN) IS
 BEGIN
  --
  IF NOT p_existe
   THEN
    --
    pp_devuelve_error(20001                        ,
                      ' (PK df_cmn_nwt_xx_vrb_cnc)',
                      trn_k_global.cod_idioma      );
  END IF;
  --
 END pp_comprueba_error;
 --
 /* --------------------------------------------------------
 || pp_recupera_globales :
 ||
 || Recupera las globales necesarias
 */ --------------------------------------------------------
 --
 FUNCTION fp_recupera_globales
          RETURN REG_PK IS
  --
  l_reg_pk REG_PK;
  --
 BEGIN
  --
  l_reg_pk.cmp_val         :=     em_k_utl.f_devuelve_n('cod_cia'         );
  l_reg_pk.lob_val         :=     em_k_utl.f_devuelve_n('cod_ramo'        );
  l_reg_pk.crn_val         :=     em_k_utl.f_devuelve_n('cod_mon'         );
  l_reg_pk.cvr_val         :=     em_k_utl.f_devuelve_n('cod_cob'         );
  l_reg_pk.frs_lvl_val     :=     em_k_utl.f_devuelve_n('cod_nivel1'      );
  l_reg_pk.scn_lvl_val     :=     em_k_utl.f_devuelve_n('cod_nivel2'      );
  l_reg_pk.thr_lvl_val     :=     em_k_utl.f_devuelve_n('cod_nivel3'      );
  l_reg_pk.frs_dst_hnl_val := NVL(em_k_utl.f_devuelve_c('cod_canal1'      ),DC.cod_canal1_gen     );
  l_reg_pk.scn_dst_hnl_val := NVL(em_k_utl.f_devuelve_c('cod_canal2'      ),DC.cod_canal2_gen     );
  l_reg_pk.thr_dst_hnl_val := NVL(em_k_utl.f_devuelve_c('cod_canal3'      ),DC.cod_canal3_gen     );
  l_reg_pk.agn_val         :=     em_k_utl.f_devuelve_n('cod_agt'         );
  l_reg_pk.gpp_val         := NVL(em_k_utl.f_devuelve_c('num_poliza_grupo'),'ZZZZZZZZZZZZZ'       );
  l_reg_pk.del_val         := NVL(em_k_utl.f_devuelve_n('num_contrato'    ),EM.num_contrato_gen   );
  --
  l_reg_pk.sbl_val         := NVL(em_k_utl.f_devuelve_n('num_subcontrato' ),EM.num_subcontrato_gen);
  l_reg_pk.ply_val         :=     em_k_utl.f_devuelve_c('num_poliza'      );
  l_reg_pk.vld_dat         :=     em_k_utl.f_devuelve_f('fec_validez'     );
  --
  l_reg_pk.vrb_nam         := TRN.nulo;
  l_reg_pk.row_val         := TRN.nulo;
  --
  BEGIN
   --
   l_reg_pk.mdt_val := em_k_utl.f_devuelve_n('cod_modalidad');
   --
  EXCEPTION
   WHEN TRN.e_no_existe
    THEN
     --
     l_reg_pk.mdt_val := EM.cod_modalidad_gen;
     --
  END;
  --
  RETURN l_reg_pk;
  --
 END fp_recupera_globales;
 --
 /* --------------------------------------------------------
 || fp_lee :
 ||
 || Realiza la lectura por PK y devuelve el registro leido
 */ --------------------------------------------------------
 --
 FUNCTION fp_lee(p_reg_pk REG_PK)
          RETURN df_cmn_nwt_xx_vrb_cnc%ROWTYPE IS
  --
  l_reg    df_cmn_nwt_xx_vrb_cnc%ROWTYPE;
  --
  l_existe BOOLEAN := FALSE;
  --
  CURSOR lc_df_cmn_nwt_xx_vrb_cnc(pc_reg_pk REG_PK)IS
         SELECT *
           FROM df_cmn_nwt_xx_vrb_cnc a
          WHERE a.cmp_val          =  p_reg_pk.cmp_val
            AND a.lob_val         IN (pc_reg_pk.lob_val        ,EM.cod_ramo_gen       )
            AND a.mdt_val         IN (pc_reg_pk.mdt_val        ,EM.cod_modalidad_gen  )
            AND a.crn_val         IN (pc_reg_pk.crn_val        ,DC.cod_mon_gen        )
            AND a.cvr_val         IN (pc_reg_pk.cvr_val        ,EM.cod_cob_gen        )
            AND a.frs_lvl_val     IN (pc_reg_pk.frs_lvl_val    ,DC.cod_nivel1_gen     )
            AND a.scn_lvl_val     IN (pc_reg_pk.scn_lvl_val    ,DC.cod_nivel2_gen     )
            AND a.thr_lvl_val     IN (pc_reg_pk.thr_lvl_val    ,DC.cod_nivel3_gen     )   
            AND a.frs_dst_hnl_val IN (pc_reg_pk.frs_dst_hnl_val,DC.cod_canal1_gen     )
            AND a.scn_dst_hnl_val IN (pc_reg_pk.scn_dst_hnl_val,DC.cod_canal2_gen     )
            AND a.thr_dst_hnl_val IN (pc_reg_pk.thr_dst_hnl_val,DC.cod_canal3_gen     )
            AND a.agn_val         IN (pc_reg_pk.agn_val        ,TRN.cod_tercero_gen   )
            AND a.gpp_val         IN (pc_reg_pk.gpp_val        ,'ZZZZZZZZZZZZZ'       )
            AND a.del_val         IN (pc_reg_pk.del_val        ,EM.num_contrato_gen   )
            AND a.sbl_val         IN (pc_reg_pk.sbl_val        ,EM.num_subcontrato_gen)
            AND a.ply_val         IN (pc_reg_pk.ply_val        ,'ZZZZZZZZZZZZZ'       )
            AND a.vrb_nam          = UPPER(p_reg_pk.vrb_nam)
            AND a.row_val          = p_reg_pk.row_val 
            AND a.vld_dat          = (SELECT MAX(vld_dat)
                                        FROM df_cmn_nwt_xx_vrb_cnc
                                       WHERE cmp_val         = a.cmp_val
                                         AND lob_val         = a.lob_val
                                         AND mdt_val         = a.mdt_val
                                         AND crn_val         = a.crn_val
                                         AND cvr_val         = a.cvr_val
                                         AND frs_lvl_val     = a.frs_lvl_val    
                                         AND scn_lvl_val     = a.scn_lvl_val    
                                         AND thr_lvl_val     = a.thr_lvl_val    
                                         AND frs_dst_hnl_val = a.frs_dst_hnl_val
                                         AND scn_dst_hnl_val = a.scn_dst_hnl_val
                                         AND thr_dst_hnl_val = a.thr_dst_hnl_val
                                         AND gpp_val         = a.gpp_val
                                         AND del_val         = a.del_val
                                         AND sbl_val         = a.sbl_val
                                         AND ply_val         = a.ply_val
                                         AND agn_val         = a.agn_val        
                                         AND vrb_nam         = a.vrb_nam
                                         AND row_val         = a.row_val
                                         AND vld_dat        <= pc_reg_pk.vld_dat
                                     )
       ORDER BY a.ply_val        ,
                a.gpp_val        ,
                a.del_val        ,
                a.sbl_val        ,
                a.lob_val        ,
                a.mdt_val        ,
                a.crn_val        ,
                a.cvr_val        ,
                a.frs_lvl_val    ,
                a.scn_lvl_val    ,
                a.thr_lvl_val    ,
                a.frs_dst_hnl_val,
                a.scn_dst_hnl_val,
                a.thr_dst_hnl_val,
                a.agn_val        ;
  --
 BEGIN
  --
  OPEN lc_df_cmn_nwt_xx_vrb_cnc(p_reg_pk);
  --
  FETCH       lc_df_cmn_nwt_xx_vrb_cnc INTO l_reg;
  l_existe := lc_df_cmn_nwt_xx_vrb_cnc%FOUND;
  CLOSE       lc_df_cmn_nwt_xx_vrb_cnc;
  --
  pp_comprueba_error(l_existe);
  --
  IF l_reg.dsb_row = trn.SI
   THEN
    --
    RAISE g_e_mca_inh;
    --
  END IF;
  --
  RETURN l_reg;
  --
 EXCEPTION
  WHEN g_e_mca_inh
   THEN
    --
    pp_devuelve_error(20020                  ,
                      TRN.nulo               ,
                      trn_k_global.cod_idioma);
    --
 END fp_lee;
 --
 /* --------------------------------------------------------
 || fp_lee_defecto :
 ||
 || Realiza para la fila definida por defecto y devuelve el 
 || registro leido
 */ --------------------------------------------------------
 --
 FUNCTION fp_lee_defecto(p_reg_pk REG_PK)
          RETURN df_cmn_nwt_xx_vrb_cnc%ROWTYPE IS
  --
  l_reg    df_cmn_nwt_xx_vrb_cnc%ROWTYPE;
  --
  l_existe BOOLEAN := FALSE;
  --
  CURSOR lc_df_cmn_nwt_xx_vrb_cnc(pc_reg_pk REG_PK) IS
         SELECT *
           FROM df_cmn_nwt_xx_vrb_cnc a
          WHERE a.cmp_val          =  p_reg_pk.cmp_val
            AND a.lob_val         IN (pc_reg_pk.lob_val        ,EM.cod_ramo_gen       )
            AND a.mdt_val         IN (pc_reg_pk.mdt_val        ,EM.cod_modalidad_gen  )
            AND a.crn_val         IN (pc_reg_pk.crn_val        ,DC.cod_mon_gen        )
            AND a.cvr_val         IN (pc_reg_pk.cvr_val        ,EM.cod_cob_gen        )
            AND a.frs_lvl_val     IN (pc_reg_pk.frs_lvl_val    ,DC.cod_nivel1_gen     )
            AND a.scn_lvl_val     IN (pc_reg_pk.scn_lvl_val    ,DC.cod_nivel2_gen     )
            AND a.thr_lvl_val     IN (pc_reg_pk.thr_lvl_val    ,DC.cod_nivel3_gen     )   
            AND a.frs_dst_hnl_val IN (pc_reg_pk.frs_dst_hnl_val,DC.cod_canal1_gen     )
            AND a.scn_dst_hnl_val IN (pc_reg_pk.scn_dst_hnl_val,DC.cod_canal2_gen     )
            AND a.thr_dst_hnl_val IN (pc_reg_pk.thr_dst_hnl_val,DC.cod_canal3_gen     )
            AND a.agn_val         IN (pc_reg_pk.agn_val        ,TRN.cod_tercero_gen   )
            AND a.gpp_val         IN (pc_reg_pk.gpp_val        ,'ZZZZZZZZZZZZZ'       )
            AND a.del_val         IN (pc_reg_pk.del_val        ,EM.num_contrato_gen   )
            AND a.sbl_val         IN (pc_reg_pk.sbl_val        ,EM.num_subcontrato_gen)
            AND a.ply_val         IN (pc_reg_pk.ply_val        ,'ZZZZZZZZZZZZZ'       )
            AND a.vrb_nam          = UPPER(p_reg_pk.vrb_nam)
            AND a.dfl_chc          = TRN.si
            AND a.vld_dat          = (SELECT MAX(vld_dat)
                                        FROM df_cmn_nwt_xx_vrb_cnc
                                       WHERE cmp_val         = a.cmp_val
                                         AND lob_val         = a.lob_val
                                         AND mdt_val         = a.mdt_val
                                         AND crn_val         = a.crn_val
                                         AND cvr_val         = a.cvr_val
                                         AND frs_lvl_val     = a.frs_lvl_val    
                                         AND scn_lvl_val     = a.scn_lvl_val    
                                         AND thr_lvl_val     = a.thr_lvl_val    
                                         AND frs_dst_hnl_val = a.frs_dst_hnl_val
                                         AND scn_dst_hnl_val = a.scn_dst_hnl_val
                                         AND thr_dst_hnl_val = a.thr_dst_hnl_val
                                         AND gpp_val         = a.gpp_val
                                         AND del_val         = a.del_val
                                         AND sbl_val         = a.sbl_val
                                         AND ply_val         = a.ply_val
                                         AND agn_val         = a.agn_val        
                                         AND vrb_nam         = a.vrb_nam
                                         AND row_val         = a.row_val
                                         AND vld_dat        <= pc_reg_pk.vld_dat
                                     )
       ORDER BY a.ply_val        ,
                a.gpp_val        ,
                a.del_val        ,
                a.sbl_val        ,
                a.lob_val        ,
                a.mdt_val        ,
                a.crn_val        ,
                a.cvr_val        ,
                a.frs_lvl_val    ,
                a.scn_lvl_val    ,
                a.thr_lvl_val    ,
                a.frs_dst_hnl_val,
                a.scn_dst_hnl_val,
                a.thr_dst_hnl_val,
                a.agn_val        ;
  --
 BEGIN
  --
  OPEN lc_df_cmn_nwt_xx_vrb_cnc(p_reg_pk);
  --
  FETCH       lc_df_cmn_nwt_xx_vrb_cnc INTO l_reg;
  l_existe := lc_df_cmn_nwt_xx_vrb_cnc%FOUND;
  CLOSE       lc_df_cmn_nwt_xx_vrb_cnc;
  --
  pp_comprueba_error(l_existe);
  --
  IF l_reg.dsb_row = trn.SI
   THEN
    --
    RAISE g_e_mca_inh;
    --
  END IF;
  --
  RETURN l_reg;
  --
 EXCEPTION
  WHEN g_e_mca_inh
   THEN
    --
    pp_devuelve_error(20020                  ,
                      TRN.nulo               ,
                      trn_k_global.cod_idioma);
    --
 END fp_lee_defecto;
 --
 /* --------------------------------------------------------
 || Aqui comienza la declaracion de subprogramas del PACKAGE
 */ --------------------------------------------------------
 --
 /* --------------------------------------------------------
 || p_pre_dv_row_val :
 ||
 || Devuelve el valor de la fila por defecto. Pensado para
 || datos variables
 */ --------------------------------------------------------
 --
 PROCEDURE p_pre_dv_row_val IS
  --
  l_reg_pk REG_PK;
  l_reg    df_cmn_nwt_xx_vrb_cnc%ROWTYPE;
  --
 BEGIN
  --
  l_reg_pk         := fp_recupera_globales;
  l_reg_pk.vrb_nam := em_k_utl.f_devuelve_c('cod_campo');
  --
  l_reg := fp_lee_defecto(l_reg_pk);
  --
  em_k_utl.p_asigna('val_campo',l_reg.row_val);
  em_k_utl.p_asigna('txt_campo',l_reg.row_nam);
  --
  IF l_reg.jmp_chc = TRN.si
   THEN
    --
    dc_k_dv_gen.p_asigna_mca_salto;
    --
  END IF;
  --
 END p_pre_dv_row_val;
 --
 /* --------------------------------------------------------
 || p_val_dv_row_val :
 ||
 || Valida el valor de la fila. Pensado para datos variables
 */ --------------------------------------------------------
 --
 PROCEDURE p_val_dv_row_val IS
  --
  l_reg_pk REG_PK;
  l_reg    df_cmn_nwt_xx_vrb_cnc%ROWTYPE;
  --
 BEGIN
  --
  l_reg_pk         := fp_recupera_globales;
  l_reg_pk.vrb_nam := em_k_utl.f_devuelve_c('cod_campo');
  l_reg_pk.row_val := em_k_utl.f_devuelve_c('val_campo');
  --
  l_reg := fp_lee(l_reg_pk);
  --
  em_k_utl.p_asigna('txt_campo',l_reg.row_nam);
  --
 END p_val_dv_row_val;
 --
 /* --------------------------------------------------------
 || f_row_val_val :
 ||
 || Devuelve el valor de la fila. Pensado para formula
 */ --------------------------------------------------------
 --
 FUNCTION f_row_val_val(p_vrb_nam df_cmn_nwt_xx_vrb_cnc.vrb_nam%TYPE,
                        p_row_val df_cmn_nwt_xx_vrb_cnc.row_val%TYPE)
          RETURN df_cmn_nwt_xx_vrb_cnc.row_val_val%TYPE IS
  --
  l_reg_pk REG_PK;
  l_reg    df_cmn_nwt_xx_vrb_cnc%ROWTYPE;
  --
 BEGIN
  --
  l_reg_pk         := fp_recupera_globales;
  l_reg_pk.vrb_nam := p_vrb_nam;
  l_reg_pk.row_val := p_row_val;
  --
  l_reg := fp_lee(l_reg_pk);
  --
  RETURN l_reg.row_val_val;
  --
 END f_row_val_val;
 --
END trn_k_df_cmn_nwt_xx_vrb_cnc;
/
