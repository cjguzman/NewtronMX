CREATE OR REPLACE PACKAGE                   TRON2000.EM_K_X2000060_TRN AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Trata la Tabla : x2000060
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.07 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/11/12 - JAPERE4 - 1.08 
 || Se crea nueva funcion f_devuelve_benef_riesgo que devuelve 
 || los intervinientes de un tip_benef concreto.
 */ --------------------------------------------------------
 --
 PROCEDURE p_lee(p_cod_cia    x2000060.cod_cia   %TYPE,
                 p_num_poliza x2000060.num_poliza%TYPE,
                 p_num_riesgo x2000060.num_riesgo%TYPE,
                 p_tip_benef  x2000060.tip_benef %TYPE,
                 p_tip_docum  x2000060.tip_docum %TYPE,
                 p_cod_docum  x2000060.cod_docum %TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || Lee el registro
 */ -----------------------------------------------------
 --
 FUNCTION f_num_secu          RETURN NUMBER;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : num_secu
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_baja          RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_baja
 */ -----------------------------------------------------
 --
 FUNCTION f_tip_docum_ant     RETURN VARCHAR2;
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : tip_docum_ant
 */ -----------------------------------------------------
 --
 FUNCTION f_cod_docum_ant     RETURN VARCHAR2;
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : cod_docum_ant
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_vigente       RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_vigente
 */ -----------------------------------------------------
 --
 FUNCTION f_mca_baja_ant      RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : mca_baja_ant
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
 || Devuelve el valor de la columna : num_prestamo
 */ -----------------------------------------------------
 --
 FUNCTION f_num_prestamo      RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el valor de la columna : imp_cesion
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
 || Devuelve el valor de la columna tip_relac.
 */ -----------------------------------------------------
 --
 CURSOR c_x2000060(pl_cod_cia    x2000060.cod_cia   %TYPE,
                   pl_num_poliza x2000060.num_poliza%TYPE,
                   pl_num_riesgo x2000060.num_riesgo%TYPE,
                   pl_tip_benef  x2000060.tip_benef %TYPE,
                   pl_tip_docum  x2000060.tip_docum %TYPE,
                   pl_cod_docum  x2000060.cod_docum %TYPE) IS
        SELECT *
          FROM x2000060
         WHERE cod_cia    = pl_cod_cia
           AND num_poliza = pl_num_poliza
           AND num_riesgo = pl_num_riesgo
           AND tip_benef  = pl_tip_benef
           AND tip_docum  = pl_tip_docum
           AND cod_docum  = pl_cod_docum;
 --
 g_reg x2000060%ROWTYPE;
 --
 TYPE t_benef IS TABLE OF g_reg%TYPE INDEX BY BINARY_INTEGER;
 --
 PROCEDURE p_inserta(p_reg x2000060%ROWTYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || Inserta un registro en la tabla
 */ -----------------------------------------------------
 --
 PROCEDURE p_devuelve_docum(p_cod_cia    IN     x2000060.cod_cia   %TYPE,
                            p_num_poliza IN     x2000060.num_poliza%TYPE,
                            p_num_riesgo IN     x2000060.num_riesgo%TYPE,
                            p_tip_benef  IN     x2000060.tip_benef %TYPE,
                            p_tip_docum  IN OUT x2000060.tip_docum %TYPE,
                            p_cod_docum  IN OUT x2000060.cod_docum %TYPE);
 /* -------------------- DESCRIPCION --------------------
 || Devuelve las columnas TIP_DOCUM y COD_DOCUM
 */ -----------------------------------------------------
 --
 FUNCTION f_docum_en_otro_tipo(p_cod_cia    x2000060.cod_cia   %TYPE,
                               p_num_poliza x2000060.num_poliza%TYPE,
                               p_num_riesgo x2000060.num_riesgo%TYPE,
                               p_tip_benef  x2000060.tip_benef %TYPE,
                               p_tip_docum  x2000060.tip_docum %TYPE,
                               p_cod_docum  x2000060.cod_docum %TYPE)
          RETURN BOOLEAN;
 --
 /* -------------------- DESCRIPCION --------------------
 || verifica si else documento se encuentra en otro tipo
 || de beneficiario
 */ -----------------------------------------------------
 --
 FUNCTION f_sum_imp_cesion(p_cod_cia    x2000060.cod_cia   %TYPE,
                           p_num_poliza x2000060.num_poliza%TYPE,
                           p_num_riesgo x2000060.num_riesgo%TYPE)
          RETURN NUMBER;
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve la suma de la columna imp_cesion
 */ -----------------------------------------------------
 --
 FUNCTION f_existe_modificacion(p_cod_cia    x2000060.cod_cia    %TYPE ,
                                p_num_poliza x2000060.num_poliza %TYPE )
          RETURN VARCHAR2;
 --
 /* -------------------- DESCRIPCION --------------------
 || Comprueba si existe alguna modificacion
 */ ----------------------------------------------------------------
 --
 FUNCTION f_tab_subagentes(p_cod_cia         a2000030.cod_cia       %TYPE ,
                           p_num_poliza      a2000030.num_poliza    %TYPE )
    RETURN  dc_k_a1001337.table_cod_emp_agt;
 /*------------ DESCRIPCION -------------------------------------------
 || Consulta la poliza que coincida con los parametros ingresados
 || y tenga subagente como Tipo de Benificiario y no est¿n dados de baja
 */ -------------------------------------------------------------------
 --
 /* ----------- DESCRIPCION ------------------------------------------
 || Devuelve los beneficiarios
 */ ------------------------------------------------------------------
 --
 FUNCTION f_devuelve_benef (p_cod_cia        x2000060.cod_cia       %TYPE,
                            p_num_poliza     x2000060.num_poliza    %TYPE)
    RETURN t_benef;
 --
 /* ----------- DESCRIPCION ------------------------------------------
 || Devuelve los intervinientes con un tipo tip_benef especifico
 */ ------------------------------------------------------------------
 --
 FUNCTION f_devuelve_benef_riesgo (p_cod_cia    x2000060.cod_cia    %TYPE,
                                   p_num_poliza x2000060.num_poliza %TYPE,
                                   p_num_riesgo x2000060.num_riesgo %TYPE,
                                   p_tip_benef  x2000060.tip_benef  %TYPE)
    RETURN t_benef;
 --
END em_k_x2000060_trn;
/
