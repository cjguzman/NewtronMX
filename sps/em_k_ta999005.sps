CREATE OR REPLACE PACKAGE trp_mx_dl.em_k_ta999005
AS
 /* -------------------- DESCRIPCION --------------------
 || Acceso a la tabla ta999005
 || Procedimientos y funciones para el acceso de la tabla ta999005
 ||
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.00 -------------------- */
 --
 /* -------------------- MODIFICACIONES -----------------
 || 2020/11/05 - JALUIS2 - v 1.00
 || Creacion del Package
 */ -----------------------------------------------------
 --
 /**
 || Lee un registro por PK y recupera valores vigentes de lo
 || particular a lo generico
 */
 FUNCTION f_lee_vigente( 
                        p_cod_cia               ta999005.cod_cia            %TYPE,
                        p_cod_ramo              ta999005.cod_ramo           %TYPE,
                        p_cod_producto          ta999005.cod_producto       %TYPE,
                        p_cod_amb_circulacion   ta999005.cod_amb_circulacion%TYPE,
                        p_fec_validez           ta999005.fec_validez        %TYPE)
             RETURN ta999005%ROWTYPE;
 
 END em_k_ta999005;
/
