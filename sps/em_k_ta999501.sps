CREATE OR REPLACE PACKAGE TRP_MX_DL.EM_K_TA999501
AS
 /* -------------------- DESCRIPCION ------------------------
 || Acceso a la tabla ta999002
 || Procedimientos y funciones para el acceso de la tabla ta999501
 */----------------------------------------------------------
 --
 /* -------------------- VERSION = 1.00 --------------------- */
 --
 /* -------------------- MODIFICACIONES ---------------------
 || 2020/11/19 - DZAVALA - v 1.00 
 || Creacion del Package
 */ ---------------------------------------------------------
 --
 /* ---------------------------------------------------------
 || Aqui comienza la declaracion de variables GLOBALES
 */ ---------------------------------------------------------
 --
 /* ---------------------------------------------------------
 || p_lee_vigente:
 || Lee un registro por PK y recupera valores vigentes de lo
 || particular a lo generico
 */ ---------------------------------------------------------
 PROCEDURE p_lee_vigente(p_cod_cia             ta999501.cod_cia            %TYPE,
                         p_cod_sector          ta999501.cod_sector         %TYPE,
                         p_cod_ramo            ta999501.cod_ramo           %TYPE,
                         p_num_poliza_grupo    ta999501.num_poliza_grupo   %TYPE,
                         p_num_contrato        ta999501.num_contrato       %TYPE,
                         p_num_subcontrato     ta999501.num_subcontrato    %TYPE,
                         p_cod_canal3          ta999501.cod_canal3         %TYPE,
                         p_cod_producto        ta999501.cod_producto       %TYPE,
                         p_cod_amb_circulacion ta999501.cod_amb_circulacion%TYPE,
                         p_cod_tip_indem       ta999501.cod_tip_indem      %TYPE,
                         p_fec_validez         ta999501.fec_validez        %TYPE);
 --
 /* ----------------------------------------------------------
 || f_cod_tip_indem_renov:
 || Devuelve el valor de la columna cod_tip_indem_renov
 */ ----------------------------------------------------------
 --
 FUNCTION f_cod_tip_indem_renov 
          RETURN NUMBER;
 --
END em_k_ta999501;
/