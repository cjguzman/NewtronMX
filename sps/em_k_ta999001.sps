CREATE OR REPLACE PACKAGE TRP_MX_DL.em_k_ta999001
AS
 /* -------------------- DESCRIPCION --------------------
 || Acceso a la tabla ta999001
 || Procedimientos y funciones para el acceso de la tabla ta999001
 ||
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.01 -------------------- */
 --
 /* -------------------- MODIFICACIONES -----------------
 || 2020/12/04 - JAPERE4 - v 1.01
 || Modificacion de la funcion f_lee_vigente:
 || Se incluye el campo cod_pais como parte de la signatura
 || del metodo.
 */ -----------------------------------------------------
 --
 /**
 || Lee un registro por PK y recupera valores vigentes
 */
 FUNCTION f_lee_vigente(
                        p_cod_cia        ta999001.cod_cia       %TYPE,
                        p_cod_pais       ta999001.cod_pais      %TYPE,
                        p_cod_estado     ta999001.cod_estado    %TYPE,
                        p_cod_prov       ta999001.cod_prov      %TYPE,
                        p_cod_postal     ta999001.cod_postal    %TYPE,
                        p_fec_validez    ta999001.fec_validez   %TYPE)
             RETURN ta999001%ROWTYPE;
 --
END em_k_ta999001;
/
