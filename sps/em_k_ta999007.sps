create or replace PACKAGE trp_mx_dl.em_k_ta999007
AS
 /* -------------------- DESCRIPCION --------------------
 || Acceso a la tabla ta999007
 || Procedimientos y funciones para el acceso de la tabla ta999007
 ||
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.00 -------------------- */
 --
 /* -------------------- MODIFICACIONES -----------------
 || 2020/11/13 - FAJUANC - v 1.00
 || Creacion del Package
 */ -----------------------------------------------------
 --
 /**
 || Lee un registro por PK y recupera valores vigentes de lo
 || particular a lo generico
 */
 FUNCTION f_lee_vigente( 
                        p_cod_cia               ta999007.cod_cia            %TYPE,
                        p_cod_sector            ta999007.cod_sector         %TYPE,
                        p_cod_ramo              ta999007.cod_ramo           %TYPE,
                        p_num_poliza_grupo      ta999007.num_poliza_grupo   %TYPE,
                        p_num_contrato          ta999007.num_contrato       %TYPE,
                        p_num_subcontrato       ta999007.num_subcontrato    %TYPE,
                        p_cod_canal3            ta999007.cod_canal3         %TYPE,
                        p_cod_producto          ta999007.cod_producto       %TYPE,
                        p_cod_tip_vehi          ta999007.cod_tip_vehi       %TYPE,
                        p_cod_uso_vehi          ta999007.cod_uso_vehi       %TYPE,
                        p_fec_validez           ta999007.fec_validez        %TYPE)
             RETURN ta999007%ROWTYPE;
 --
 END em_k_ta999007;
/
