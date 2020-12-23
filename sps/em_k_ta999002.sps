CREATE OR REPLACE PACKAGE trp_mx_dl.em_k_ta999002
AS
 /* -------------------- DESCRIPCION --------------------
 || Acceso a la tabla ta999002
 || Procedimientos y funciones para el acceso de la tabla ta999002
 ||
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.00 -------------------- */
 --
 /* -------------------- MODIFICACIONES -----------------
 || 2020/11/04 - JALUIS2 - v 1.00
 || Creacion del Package
 */ -----------------------------------------------------
 --
 --
 /* -------------------------------------------
 || Procedimientos Publicos (Especificacion)
 */ -------------------------------------------
 --
 -- ------------------------------------------------------------
 --
 /**
 || Lee un registro por PK y recupera valores vigentes de lo
 || particular a lo generico
 */
 FUNCTION f_lee_vigente( 
                         p_cod_cia          ta999002.cod_cia         %TYPE,
                         p_cod_producto     ta999002.cod_producto    %TYPE,
                         p_fec_validez      ta999002.fec_validez     %TYPE)
             RETURN ta999002%ROWTYPE;
 --
END em_k_ta999002;
/
