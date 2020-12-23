CREATE OR REPLACE PACKAGE                   TRON2000.EM_K_R2000060_TRN AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Trata la Tabla r2000060
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.05 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2011/07/06 - MJBONILLA - 1.05 - (MS-2010-05-00734)
 || Se crea la funcion f_tip_relac para devolver el valor de
 || la columan tip_relac.
 */ --------------------------------------------------------
 --
 g_reg r2000060%ROWTYPE;
 --
 TYPE t_benef IS TABLE OF g_reg%TYPE INDEX BY BINARY_INTEGER;
 --
 PROCEDURE p_lee(p_cod_cia           r2000060.cod_cia          %TYPE,
                 p_num_poliza        r2000060.num_poliza       %TYPE,
                 p_num_spto          r2000060.num_spto         %TYPE,
                 p_num_apli          r2000060.num_apli         %TYPE,
                 p_num_spto_apli     r2000060.num_spto_apli    %TYPE,
                 p_tip_benef         r2000060.tip_benef        %TYPE,
                 p_num_riesgo        r2000060.num_riesgo       %TYPE,
                 p_tip_docum         r2000060.tip_docum        %TYPE,
                 p_cod_docum         r2000060.cod_docum        %TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || Lee el registro por la primary key
 */ -----------------------------------------------------
 --
 FUNCTION f_num_secu          RETURN NUMBER;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : num_secu
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_vigente       RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_vigente
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_baja          RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_baja
 */ -----------------------------------------------------
 --
 FUNCTION f_pct_participacion RETURN NUMBER;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : pct_participacion
 */ -----------------------------------------------------
 --
 FUNCTION f_fec_vcto_cesion   RETURN DATE;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : fec_vcto_cesion
 */ -----------------------------------------------------
 --
 FUNCTION f_imp_cesion        RETURN NUMBER;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : imp_cesion
 */ -----------------------------------------------------
 --
 FUNCTION f_num_prestamo      RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : num_prestamo
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_principal     RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_principal
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_calculo       RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_calculo
 */ -----------------------------------------------------
 --
 FUNCTION f_tip_relac
    RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : tip_relac
 */ -----------------------------------------------------
 --
 FUNCTION f_devuelve_reg RETURN r2000060%ROWTYPE;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el registro completo
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
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el tipo y codigo de documento de un tipo
 || de beneficiario. Es utilizado para sabe rel benefi-
 || ciario de referencia en los batch
 */ -----------------------------------------------------
 --
 PROCEDURE p_inserta (p_reg r2000060%ROWTYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || inserta el registro en la tabla r2000060
 */ -----------------------------------------------------
 --
 FUNCTION f_tab_subagentes(p_cod_cia         r2000030.cod_cia       %TYPE,
                           p_num_poliza      r2000030.num_poliza    %TYPE,
                           p_num_apli        r2000030.num_apli      %TYPE,
                           p_fec_vigencia    r2000030.fec_efec_spto %TYPE )
          RETURN  dc_k_a1001337.table_cod_emp_agt;
 --
 /*------------------------------------------------------
 || f_tab_subagentes:
 ||
 || Devuelve la tabla con los datos de los subagentes vigentes
 || por p¿liza.
 */ -----------------------------------------------------
 --
 FUNCTION f_tab_benef_riesgo (p_cod_cia      r2000060.cod_cia       %TYPE,
                              p_num_poliza   r2000060.num_poliza    %TYPE,
                              p_num_riesgo   r2000060.num_riesgo    %TYPE,
                              p_tip_benef    r2000060.tip_benef     %TYPE,
                              p_num_apli     r2000030.num_apli      %TYPE,
                              p_fec_vigencia r2000030.fec_efec_spto %TYPE)
          RETURN t_benef ;
 --
 /*------------------------------------------------------
 || f_tab_benef_riesgo:
 ||
 || Devuelve los intervinientes con un tipo tip_benef especifico
 */ -----------------------------------------------------
 --
END em_k_r2000060_trn;
/
