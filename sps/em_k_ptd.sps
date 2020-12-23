CREATE OR REPLACE PACKAGE TRON2000.EM_K_PTD AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Utilidades e información que existe durante la 
 || operación perteneciente al módulo de emisión e 
 || independiente del concepto de negocio.
 ||
 || Utilizado en el desarrollo de productos
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.02 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/11/13 - HSOLIVE - 1.02
 ||
 || Definicion de constantes para tratamientos de TRON
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de constantes
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || Definición de constantes tratamientos
 */ -----------------------------------------------------
 --
 TRATAMIENTO_VIDA          CONSTANT g9990200.cod_tratamiento%TYPE := 'V';
 TRATAMIENTO_TRANSPORTE    CONSTANT g9990200.cod_tratamiento%TYPE := 'T';
 TRATAMIENTO_AUTOMOVILES   CONSTANT g9990200.cod_tratamiento%TYPE := 'A';
 TRATAMIENTO_DIVERSOS      CONSTANT g9990200.cod_tratamiento%TYPE := 'D';
 --
 -- 
 /* -----------------------------------------------------
 || f_dev_...:
 || 
 || Devuelve información de atributos propios del 
 || contexto de  emisión que no pertenecen a un concepto 
 || de negocio
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_dias_vcto_pago:
 ||
 || Devuelve el numero de dias de vencimiento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_dias_vcto_pago RETURN g2000500.num_dias_vcto_pago%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_nivel_salto:
 ||
 || Devuelve el lugar donde se produce el error
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_nivel_salto RETURN x2000221.cod_nivel_salto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_menu_opcion:
 ||
 || Devuelve el  numero del menu de opciones dentro de un programa (cod_pgm)
 */ -----------------------------------------------------   
 --
 FUNCTION f_dev_num_menu_opcion RETURN x2000221.num_menu_opcion%TYPE;
 --  
 --                                                      
 /* -----------------------------------------------------
 || f_dev_num_opcion:
 ||
 || Devuelve el numero de opcion del menu del programa
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_opcion RETURN x2000221.num_opcion%TYPE;
 --
 --
 /* --------------------------------------------------------
 || f_dev_tip_mvto_batch:
 ||
 || Devuelve la operacion batch
 */ --------------------------------------------------------
 --
 FUNCTION f_dev_tip_mvto_batch RETURN a2000520.tip_mvto_batch%TYPE;
 --
 -- 
 /* --------------------------------------------------------
 || f_dev_row_val_val :
 ||
 || Devuelve el valor de la fila de la tabla de conceptos
 */ --------------------------------------------------------
 --
 FUNCTION f_dev_row_val_val(p_vrb_nam df_cmn_nwt_xx_vrb_cnc.vrb_nam%TYPE,
                            p_row_val df_cmn_nwt_xx_vrb_cnc.row_val%TYPE)
          RETURN df_cmn_nwt_xx_vrb_cnc.row_val_val%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_emision:
 ||
 || Devuelve el tipo de emision
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_emision RETURN x2000030.tip_emision%TYPE;
 --
 --
 /* -----------------------------------------------------
 || p_asg_...:
 || 
 || Asignación de información a atributos
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_asg_mca_cambio_num_poliza:
 ||
 || Asignar el valor a la marca mca_cambio_num_poliza
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_mca_cambio_num_poliza(p_mca_cambio_num_poliza IN a1001800.mca_cambio_num_poliza%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_mca_autoriza:
 ||
 || Asignar el valor a la marca mca_autoriza
 */ -----------------------------------------------------  
 --
 PROCEDURE p_asg_mca_autoriza(p_mca_autoriza IN a7006000.mca_autoriza%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_num_dias_vcto_pago :
 ||
 || Asignar el valor al atributo num_dias_vcto_pago
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_num_dias_vcto_pago(p_num_dias_vcto_pago IN g2000500.num_dias_vcto_pago%TYPE);
 --
END em_k_ptd;
/
