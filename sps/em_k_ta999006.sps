CREATE OR REPLACE PACKAGE trp_mx_dl.em_k_ta999006
AS
 /* -------------------- DESCRIPCION --------------------
 || Acceso a la tabla ta999006
 || Procedimientos y funciones para el acceso de la tabla ta999006
 ||
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.00 -------------------- */
 --
 /* -------------------- MODIFICACIONES -----------------
 || 2020/16/04 - JALUIS2 - v 1.00
 || Creacion del Package
 */ -----------------------------------------------------
 --
 /**
 || Lee un registro por PK y recupera valores vigentes de lo
 || particular a lo generico
 */
 FUNCTION f_lee_vigente( 
                        p_cod_cia              ta999006.cod_cia             %TYPE,
                        p_cod_sector           ta999006.cod_sector          %TYPE,
                        p_cod_ramo             ta999006.cod_ramo            %TYPE,
                        p_num_poliza_grupo     ta999006.num_poliza_grupo    %TYPE,
                        p_num_contrato         ta999006.num_contrato        %TYPE,
                        p_num_subcontrato      ta999006.num_subcontrato     %TYPE,
                        p_cod_canal3           ta999006.cod_canal3          %TYPE,
                        p_cod_producto         ta999006.cod_producto        %TYPE,
                        p_cod_amb_circulacion  ta999006.cod_amb_circulacion %TYPE,
                        p_cod_tip_vehi         ta999006.cod_tip_vehi        %TYPE,
                        p_fec_validez          ta999006.fec_validez         %TYPE)
             RETURN ta999006%ROWTYPE;
 --
END em_k_ta999006;
/
