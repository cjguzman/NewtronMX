CREATE OR REPLACE PACKAGE                   TRON2000.EM_K_A2000060_TRN AS
 --
 /**
 || Lee el registro de la Tabla : A2000060
 */
 --
 /* -------------------- VERSION = 1.21 -------------------- */
 --
 /* -------------------- MODIFICACIONES -------------------- 
 || 2016/01/14 - JMLOPEZG - 1.21 - (MU-2015-068590)
 || Se a¿ade la funcion f_existe_tip_benef_2, esta funcion sera la encargada de
 || comprobar si existe tipo de beneficiario cuando se tiene en cuenta como beneficiario
 || al tomador de la poliza.
 */ --------------------------------------------------------
 --
 TYPE grecord_a2000060 IS RECORD
    (cod_cia           a2000060.cod_cia          %TYPE,
     num_poliza        a2000060.num_poliza       %TYPE,
     num_spto          a2000060.num_spto         %TYPE,
     num_apli          a2000060.num_apli         %TYPE,
     num_spto_apli     a2000060.num_spto_apli    %TYPE,
     num_riesgo        a2000060.num_riesgo       %TYPE,    
     tip_benef         a2000060.tip_benef        %TYPE,    
     num_secu          a2000060.num_secu         %TYPE,
     tip_docum         a2000060.tip_docum        %TYPE,
     cod_docum         a2000060.cod_docum        %TYPE,    
     mca_principal     a2000060.mca_principal    %TYPE,
     mca_calculo       a2000060.mca_calculo      %TYPE,
     mca_baja          a2000060.mca_baja         %TYPE,
     mca_vigente       a2000060.mca_vigente      %TYPE,
     pct_participacion a2000060.pct_participacion%TYPE,    
     fec_vcto_cesion   a2000060.fec_vcto_cesion  %TYPE,
     imp_cesion        a2000060.imp_cesion       %TYPE,
     num_prestamo      a2000060.num_prestamo     %TYPE,
     tip_relac         a2000060.tip_relac        %TYPE);
 --
 TYPE g_tabla_intervinientes_v
    IS TABLE OF a2000060%ROWTYPE
    INDEX BY BINARY_INTEGER;
 --
 TYPE t_r_interv_anul IS RECORD
   (cod_cia                   a2000060.cod_cia          %TYPE,
    num_poliza                a2000060.num_poliza       %TYPE,
    num_riesgo                a2000060.num_riesgo       %TYPE,
    tip_benef                 a2000060.tip_benef        %TYPE,
    num_secu                  a2000060.num_secu         %TYPE,
    tip_docum                 a2000060.tip_docum        %TYPE,
    cod_docum                 a2000060.cod_docum        %TYPE,
    mca_principal             a2000060.mca_principal    %TYPE,
    mca_calculo               a2000060.mca_calculo      %TYPE,
    pct_participacion         a2000060.pct_participacion%TYPE,
    fec_vcto_cesion           a2000060.fec_vcto_cesion  %TYPE,
    imp_cesion                a2000060.imp_cesion       %TYPE,
    mca_baja                  a2000060.mca_baja         %TYPE,
    mca_vigente               a2000060.mca_vigente      %TYPE,
    num_prestamo              a2000060.num_prestamo     %TYPE,
    tip_relac                 a2000060.tip_relac        %TYPE,
    num_spto                  a2000060.num_spto         %TYPE,
    num_apli                  a2000060.num_apli         %TYPE,
    num_spto_apli             a2000060.num_spto_apli    %TYPE); 
 --
 TYPE c_interv_anul IS REF CURSOR RETURN t_r_interv_anul;
 --
 TYPE c_polizas_interv IS REF CURSOR RETURN a2000030%ROWTYPE;
 --
 CURSOR gc_polizas_terc (pc_cod_cia     a2000060.cod_cia    %TYPE,
                         pc_tip_docum   a2000060.tip_docum  %TYPE,
                         pc_cod_docum   a2000060.cod_docum  %TYPE)
 IS 
    SELECT *
      FROM a2000060
     WHERE cod_cia      =  pc_cod_cia
       AND tip_docum    =  pc_tip_docum
       AND cod_docum    =  pc_cod_docum              
       AND mca_vigente  =  'S';
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Lee el registro.
 */ -----------------------------------------------------
 -- 
 PROCEDURE p_lee(p_cod_cia       a2000060.cod_cia      %TYPE,
                 p_num_poliza    a2000060.num_poliza   %TYPE,
                 p_num_spto      a2000060.num_spto     %TYPE,
                 p_num_apli      a2000060.num_apli     %TYPE,
                 p_num_spto_apli a2000060.num_spto_apli%TYPE,
                 p_tip_benef     a2000060.tip_benef    %TYPE,
                 p_num_riesgo    a2000060.num_riesgo   %TYPE,
                 p_tip_docum     a2000060.tip_docum    %TYPE,
                 p_cod_docum     a2000060.cod_docum    %TYPE);
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Verifica si existe o no un tomador    
 */ -----------------------------------------------------
 -- 
 FUNCTION f_existe_tomador(
                 p_cod_cia a2000060.cod_cia%TYPE,
                 p_num_poliza a2000060.num_poliza%TYPE,
                 p_num_spto a2000060.num_spto%TYPE,
                 p_num_apli a2000060.num_apli%TYPE,
                 p_num_spto_apli a2000060.num_spto_apli%TYPE,
                 p_num_riesgo a2000060.num_riesgo%TYPE,
                 p_tip_docum a2000060.tip_docum%TYPE,
                 p_cod_docum a2000060.cod_docum%TYPE) RETURN VARCHAR2;
 --
 /**----------- DESCRIPCION -----------------------------
 || Verifica si existe o no un endosatario
 */ -----------------------------------------------------
 -- 
 FUNCTION f_existe_endosatario(
                p_cod_cia       a2000060.cod_cia%TYPE,
                p_num_poliza    a2000060.num_poliza%TYPE,
                p_num_spto      a2000060.num_spto%TYPE,
                p_num_apli      a2000060.num_apli%TYPE,
                p_num_spto_apli a2000060.num_spto_apli%TYPE,
                p_num_riesgo    a2000060.num_riesgo%TYPE ) RETURN VARCHAR2;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 -- 
 FUNCTION f_num_secu RETURN NUMBER;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_vigente RETURN VARCHAR2;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_baja RETURN VARCHAR2;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_pct_participacion RETURN NUMBER;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_fec_vcto_cesion RETURN DATE;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_imp_cesion RETURN NUMBER;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_num_prestamo RETURN VARCHAR2;
 -- 
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_principal RETURN VARCHAR2;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve la columna indicada en el nombre
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_calculo RETURN VARCHAR2;
 --
 CURSOR c_a2000060(
                   pl_cod_cia a2000060.cod_cia%TYPE,
                   pl_num_poliza a2000060.num_poliza%TYPE,
                   pl_num_spto a2000060.num_spto%TYPE,
                   pl_num_apli a2000060.num_apli%TYPE,
                   pl_num_spto_apli a2000060.num_spto_apli%TYPE,
                   pl_tip_benef a2000060.tip_benef%TYPE,
                   pl_num_riesgo a2000060.num_riesgo%TYPE,
                   pl_tip_docum a2000060.tip_docum%TYPE,
                   pl_cod_docum a2000060.cod_docum%TYPE) IS
        SELECT *
          FROM a2000060
         WHERE cod_cia = pl_cod_cia
           AND num_poliza = pl_num_poliza
           AND num_spto = pl_num_spto
           AND num_apli = pl_num_apli
           AND num_spto_apli = pl_num_spto_apli
           AND tip_benef = pl_tip_benef
           AND num_riesgo = pl_num_riesgo
           AND tip_docum = pl_tip_docum
           AND cod_docum = pl_cod_docum
               ;
 --
 reg c_a2000060%ROWTYPE;
 --
 /**
 || Devuelve el numero de polizas que tiene un asegurado
 */
 FUNCTION f_cuantas_polizas (p_cod_cia    a2000030.cod_cia   %TYPE,
                             p_tip_benef  a2000060.tip_benef %TYPE,
                             p_tip_docum  a2000030.tip_docum %TYPE,
                             p_cod_docum  a2000030.cod_docum %TYPE,
                             p_num_poliza a2000030.num_poliza%TYPE) 
          RETURN NUMBER;
 -- 
 /**-------------------- DESCRIPCION -------------------- 
 || devuelve el tipo de beneficiario vigente
 */ -----------------------------------------------------
 -- 
 PROCEDURE p_tip_benef_vigente
           (p_cod_cia       IN     a2000060.cod_cia      %TYPE,
            p_num_poliza    IN     a2000060.num_poliza   %TYPE,
            p_num_spto      IN     a2000060.num_spto     %TYPE,
            p_num_apli      IN     a2000060.num_apli     %TYPE,
            p_num_spto_apli IN     a2000060.num_spto_apli%TYPE,
            p_tip_benef     IN     a2000060.tip_benef    %TYPE,
            p_num_riesgo    IN     a2000060.num_riesgo   %TYPE,
            p_tip_docum     IN OUT a2000060.tip_docum    %TYPE,
            p_cod_docum     IN OUT a2000060.cod_docum    %TYPE);
 --
 /**-------------------- DESCRIPCION -------------------- 
 || devuelve la suma de la columna imp_cesion
 */ -----------------------------------------------------
 -- 
 FUNCTION f_sum_imp_cesion(p_cod_cia    a2000060.cod_cia   %TYPE,
                           p_num_poliza a2000060.num_poliza%TYPE,
                           p_num_riesgo a2000060.num_riesgo%TYPE)
          RETURN NUMBER;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || inserta el registro en la tabla a2000060
 */ -----------------------------------------------------
 -- 
 PROCEDURE p_inserta (p_reg a2000060%ROWTYPE);
 --
 /**-------------------- DESCRIPCION -------------------- 
 || inserta el registro en la tabla a2000060 y retorna el ROWID asignado
 */ ----------------------------------------------------- 
 FUNCTION f_inserta(p_reg a2000060%ROWTYPE) RETURN VARCHAR2;
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Lee el registro vigente
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_lee_vigente(p_cod_cia    a2000060.cod_cia   %TYPE,
                         p_num_poliza a2000060.num_poliza%TYPE,
                         p_num_apli   a2000060.num_apli  %TYPE,
                         p_num_riesgo a2000060.num_riesgo%TYPE,
                         p_tip_benef  a2000060.tip_benef %TYPE,
                         p_tip_docum  a2000060.tip_docum %TYPE,
                         p_cod_docum  a2000060.cod_docum %TYPE);
 --
 /**-------------------- DESCRIPCION -------------------- 
 || Devuelve el tipo y codigo de documento de un tipo
 || de beneficiario. Es utilizado para sabe rel benefi-
 || ciario de referencia en los batch
 */ -----------------------------------------------------
 --
 PROCEDURE p_devuelve_tip_benef
                        (p_cod_cia       IN     a2000060.cod_cia      %TYPE,
                         p_num_poliza    IN     a2000060.num_poliza   %TYPE,
                         p_num_spto      IN     a2000060.num_spto     %TYPE,
                         p_num_apli      IN     a2000060.num_apli     %TYPE,
                         p_num_spto_apli IN     a2000060.num_spto_apli%TYPE,
                         p_tip_benef     IN     a2000060.tip_benef    %TYPE,
                         p_num_riesgo    IN     a2000060.num_riesgo   %TYPE,
                         p_tip_docum     IN OUT a2000060.tip_docum    %TYPE,
                         p_cod_docum     IN OUT a2000060.cod_docum    %TYPE);
 --
 /**----------- DESCRIPCION -----------------------------
 || Verifica si existe o no un determinado beneficiario
 */ -----------------------------------------------------
 -- 
 FUNCTION f_existe_tip_benef
          (p_cod_cia       a2000060.cod_cia        %TYPE,
           p_num_poliza    a2000060.num_poliza     %TYPE,
           p_num_spto      a2000060.num_spto       %TYPE,
           p_num_apli      a2000060.num_apli       %TYPE,
           p_num_spto_apli a2000060.num_spto_apli  %TYPE,
           p_num_riesgo    a2000060.num_riesgo     %TYPE,
           p_tip_benef     a2000060.tip_benef      %TYPE )
          RETURN VARCHAR2;
 --
 /**----------- DESCRIPCION -----------------------------
 || Verifica si existe o no un determinado beneficiario
 */ -----------------------------------------------------
 -- 
 FUNCTION f_existe_tip_benef_2
          (p_cod_cia       a2000060.cod_cia        %TYPE,
           p_num_poliza    a2000060.num_poliza     %TYPE,
           p_num_spto      a2000060.num_spto       %TYPE,
           p_num_apli      a2000060.num_apli       %TYPE,
           p_num_spto_apli a2000060.num_spto_apli  %TYPE,
           p_num_riesgo    a2000060.num_riesgo     %TYPE,
           p_tip_benef     a2000060.tip_benef      %TYPE )
          RETURN VARCHAR2;
--
 /*------------ DESCRIPCION -----------------------------
 || Sevuelve la tabla con los datos de los subagentes vigentes
 || por p¿liza. 
 */ -----------------------------------------------------
 -- 
 FUNCTION f_tab_subagentes(p_cod_cia         a2000030.cod_cia       %TYPE,
                           p_num_poliza      a2000030.num_poliza    %TYPE,
                           p_num_apli        a2000030.num_apli      %TYPE,
                           p_fec_vigencia    a2000030.fec_efec_spto %TYPE )
          RETURN  dc_k_a1001337.table_cod_emp_agt; 
 --
 /*------------ DESCRIPCION -----------------------------
 || f_tip_relac :
 || Devuelve el valor de tip_relac
 */ -------------------------------------------------------- 
 --
 FUNCTION f_tip_relac 
    RETURN VARCHAR2;
 --
 /*------------ DESCRIPCION -----------------------------
 || f_devuelve_interv_anul :
 || Devuelve los suplementos de anulaci¿n que no existan 
 || en el spto de rehabilitaci¿n
 */ -------------------------------------------------------- 
 --
 FUNCTION f_devuelve_interv_anul(p_cod_cia       a2000060.cod_cia      %TYPE,
                                 p_num_poliza    a2000060.num_poliza   %TYPE,
                                 p_num_spto      a2000060.num_spto     %TYPE,
                                 p_num_apli      a2000060.num_apli     %TYPE,
                                 p_num_spto_apli a2000060.num_spto_apli%TYPE)
  RETURN c_interv_anul;
 /*------------ DESCRIPCION -----------------------------
 || p_actualiza_interv_anul :
 || que actualiza los intervinientes de la poliza.
 */ -------------------------------------------------------- 
 PROCEDURE p_actualiza_interv_anul (p_mca_vigente   a2000060.mca_vigente  %TYPE ,
                                    p_mca_baja      a2000060.mca_baja     %TYPE ,
                                    p_cod_cia       a2000030.cod_cia      %TYPE ,
                                    p_num_poliza    a2000030.num_poliza   %TYPE ,
                                    p_num_spto      a2000060.num_spto     %TYPE ,
                                    p_num_apli      a2000060.num_apli     %TYPE ,
                                    p_num_spto_apli a2000060.num_spto_apli%TYPE ,
                                    p_tip_docum     a2000060.tip_docum    %TYPE ,
                                    p_cod_docum     a2000060.cod_docum    %TYPE ,
                                    p_tip_benef     a2000060.tip_benef    %TYPE
                                   );
 /* --------------------------------------------------------
 || f_reg_max_spto_ant :
 || Recupera el maximo suplemento previo a la anulaci¿n.
 */ --------------------------------------------------------
 FUNCTION f_reg_max_spto_ant(p_cod_cia       a2000060.cod_cia       %TYPE,
                             p_num_poliza    a2000060.num_poliza    %TYPE,
                             p_num_spto      a2000060.num_spto      %TYPE,
                             p_num_apli      a2000060.num_apli      %TYPE,
                             p_num_spto_apli a2000060.num_spto_apli %TYPE,
                             p_tip_docum     a2000060.tip_docum     %TYPE,
                             p_cod_docum     a2000060.cod_docum     %TYPE,
                             p_tip_benef     a2000060.tip_benef     %TYPE
                            )
    RETURN a2000030.cod_spto%TYPE;
 -- 
 /*---------------------------------------------------------
 || f_existe_reg :
 || Devuelve un valor booleano para saber si existe el registro
 */ -------------------------------------------------------- 
 --
 FUNCTION f_existe_reg
    RETURN BOOLEAN;
 --
  /* -----------------------------------------------------
 || p_lee_vigente :
 || 
 || Lee el registro vigente
 */ -----------------------------------------------------
 --
 FUNCTION f_lee_actual(p_cod_cia       a2000060.cod_cia       %TYPE,
                       p_num_poliza    a2000060.num_poliza    %TYPE,
                       p_num_spto      a2000060.num_spto      %TYPE,
                       p_num_apli      a2000060.num_apli      %TYPE,
                       p_num_spto_apli a2000060.num_spto_apli %TYPE,
                       p_num_riesgo    a2000060.num_riesgo    %TYPE,
                       p_tip_benef     a2000060.tip_benef     %TYPE,
                       p_tip_docum     a2000060.tip_docum     %TYPE,
                       p_cod_docum     a2000060.cod_docum     %TYPE) 
                       RETURN BOOLEAN;
 /*------------ DESCRIPCION -----------------------------
 || f_devuelve_interv_anul :
 || Devuelve los suplementos de anulaci¿n que no existan 
 || en el spto de rehabilitaci¿n
 */ --------------------------------------------------------
 -- 
 PROCEDURE p_act_interv_anul (p_cod_cia       a2000060.cod_cia       %TYPE,
                              p_num_poliza    a2000060.num_poliza    %TYPE,
                              p_num_apli      a2000060.num_apli      %TYPE,
                              p_tip_docum     a2000060.tip_docum     %TYPE,
                              p_cod_docum     a2000060.cod_docum     %TYPE,
                              p_tip_benef     a2000060.tip_benef     %TYPE ); 
 --
 /*------------ DESCRIPCION -----------------------------
 || p_abre_cursor :
 ||  
 || Abre el cursor gc_a2000060.
 */ -------------------------------------------------------- 
 --
 PROCEDURE p_abre_cursor (p_cod_cia      IN  a2000060.cod_cia     %TYPE,
                          p_num_poliza   IN  a2000060.num_poliza  %TYPE);
 --
 /*------------ DESCRIPCION -----------------------------
 || p_lee_cursor :
 ||  
 || Lee el cursor gc_a2000060.
 */ -------------------------------------------------------- 
 --
 PROCEDURE p_lee_cursor (p_reg      OUT NOCOPY grecord_a2000060,
                         p_cerrado  OUT NOCOPY BOOLEAN         );
 --
 /*------------ DESCRIPCION -----------------------------
 || p_cierra_cursor :
 ||  
 || Cierra el cursor gc_a2000060.
 */ -------------------------------------------------------- 
 --
 PROCEDURE p_cierra_cursor;
 --
 /* -----------------------------------------------------
 || p_lee_intervenciones :
 || 
 || Lee las intervenciones de una poliza para un spto,
 || apli, spto_apli y riesgo determinado. Luego son
 || devueltas en un registro.
 */ -----------------------------------------------------
 --
 PROCEDURE p_lee_intervenciones(p_cod_cia       IN     a2000060.cod_cia         %TYPE,
                                p_num_poliza    IN     a2000060.num_poliza      %TYPE,
                                p_num_spto      IN     a2000060.num_spto        %TYPE,
                                p_num_apli      IN     a2000060.num_apli        %TYPE,
                                p_num_spto_apli IN     a2000060.num_spto_apli   %TYPE,
                                p_num_riesgo    IN     a2000060.num_riesgo      %TYPE,
                                p_record_interv    OUT g_tabla_intervinientes_v      );
 --
 /* ------------------------------------------------------------------
 || f_devuelve_benef_riesgo :
 || Devuelve los intervinientes con un tipo tip_benef especifico
 */ ------------------------------------------------------------------
 --
 FUNCTION f_devuelve_benef_riesgo (p_cod_cia    a2000060.cod_cia    %TYPE,
                                   p_num_poliza a2000060.num_poliza %TYPE,
                                   p_num_spto   a2000060.num_spto   %TYPE,
                                   p_num_riesgo a2000060.num_riesgo %TYPE,
                                   p_tip_benef  a2000060.tip_benef  %TYPE)
    RETURN g_tabla_intervinientes_v ;
 --
END em_k_a2000060_trn;
/
