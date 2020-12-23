CREATE OR REPLACE PACKAGE TRON2000.EM_K_PTD_GNI AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Utilidades e información que existe durante la 
 || operación perteneciente al módulo de emisión y  
 || exclusivas del concepto de negocio
 ||
 || Utiliado en el desarrollo de productos. 
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.02 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/11/11 - hsolive - 1.02
 ||
 || Inclusión de método que devuelve el codigo de canal 3
 || Inclusión de constantes genéricas 
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de tipos
 */ -----------------------------------------------------
 --
 SUBTYPE t_cod_nivel3        IS x2000030.cod_nivel3     %TYPE; 
 SUBTYPE t_cod_ramo          IS x2000030.cod_ramo       %TYPE; 
 SUBTYPE t_num_contrato      IS x2000030.num_contrato   %TYPE; 
 SUBTYPE t_num_subcontrato   IS x2000030.num_subcontrato%TYPE; 
 SUBTYPE t_fec_efec_poliza   IS x2000030.fec_efec_poliza%TYPE; 
 SUBTYPE t_fec_vcto_poliza   IS x2000030.fec_vcto_poliza%TYPE; 
 SUBTYPE t_tip_spto          IS x2000030.tip_spto       %TYPE; 
 SUBTYPE t_cod_spto          IS a2991800.cod_spto       %TYPE; 
 SUBTYPE t_sub_cod_spto      IS a2991800.sub_cod_spto   %TYPE; 
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de constantes
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || Definición de constantes para tipo de emision
 */ -----------------------------------------------------
 --
 TIP_EMISION_POL     CONSTANT g1010031.cod_valor%TYPE := 'P';
 TIP_EMISION_SPTO    CONSTANT g1010031.cod_valor%TYPE := 'S';
 TIP_EMISION_PPTO    CONSTANT g1010031.cod_valor%TYPE := 'C';
 --
 /* -----------------------------------------------------
 || Definición de constantes para tipos de suplementos
 */ -----------------------------------------------------
 --
 NUEVA_EMISION       CONSTANT a2991800.tip_spto%TYPE := 'XX';
 RENOVACION          CONSTANT a2991800.tip_spto%TYPE := 'RF';
 --
 /* -----------------------------------------------------
 || Definición de constantes genericos
 */ -----------------------------------------------------
 --
 COD_COB_GEN           CONSTANT a1002050.cod_cob         %TYPE := 9999           ; 
 COD_MODALIDAD_GEN     CONSTANT a1002150.cod_modalidad   %TYPE := 99999          ;  
 NUM_CONTRATO_GEN      CONSTANT g2002153.num_contrato    %TYPE := 99999          ;
 NUM_SUBCONTRATO_GEN   CONSTANT g2990018.num_subcontrato %TYPE := 99999          ;
 COD_RAMO_GEN          CONSTANT a1001800.cod_ramo        %TYPE := 999            ;
 NUM_POLIZA_GRUPO_GEN  CONSTANT G2002153.num_poliza_grupo%TYPE := 'ZZZZZZZZZZZZZ';
 --
 /* -----------------------------------------------------
 || f_dev_...:
 || 
 || Devuelve atributos propios en el contexto del 
 || concepto de negocio
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_mon:
 ||
 || Devuelve la moneda
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_mon RETURN x2000030.cod_mon%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_poliza:
 ||
 || Devuelve el número de póliza
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_poliza RETURN x2000030.num_poliza%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_spto:
 ||
 || Devuelve el tipo se suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_spto RETURN x2000030.tip_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_spto:
 ||
 || Devuelve el codigo de suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_spto RETURN x2000030.cod_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_sub_cod_spto:
 ||
 || Devuelve el sub-código de suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_sub_cod_spto RETURN x2000030.sub_cod_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_mca_spto_tmp:
 ||
 || Devuelve si el suplemento es temporal
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_mca_spto_tmp RETURN x2000030.mca_spto_tmp%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_spto:
 ||
 || Devuelve el número de suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_spto RETURN x2000030.num_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_apli:
 ||
 || Devuevle el número de aplicación
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_apli RETURN x2000030.num_apli%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_spto_apli:
 ||
 || Devuelve el número de suplemento de aplicación
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_spto_apli RETURN x2000030.num_spto_apli%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_ramo:
 ||
 || Devuelve el código de ramo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_ramo RETURN x2000030.cod_ramo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_sector:
 ||
 || Devuelve el código de sector
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_sector RETURN x2000030.cod_sector%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_fec_efec_spto:
 ||
 || Devuelve la fecha de fecto del suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_fec_efec_spto RETURN x2000030.fec_efec_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_hora_desde:
 ||
 || Devuelve la hora de efecto
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_hora_desde RETURN x2000030.hora_desde%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_negocio:
 ||
 || Devuelve el código de negocio (GLOBAL RISKS)
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_negocio RETURN x2000030.cod_negocio%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_fec_vcto_spto:
 ||
 || Devuelve el efecto del suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_fec_vcto_spto RETURN x2000030.fec_vcto_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_fec_emision_spto:
 ||
 || Devuelve la fecha de emisión del suplemento
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_fec_emision_spto RETURN x2000030.fec_emision_spto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_duracion:
 ||
 || Devuelve la duración de la póliza
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_duracion RETURN x2000030.tip_duracion%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_renovaciones:
 ||
 || Devuelve el número de renovaciones
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_renovaciones RETURN x2000030.num_renovaciones%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_poliza_cliente:
 ||
 || Devuelve la póliza cliente
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_poliza_cliente RETURN x2000030.num_poliza_cliente%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_poliza_grupo:
 ||
 || Devuelve la póliza grupo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_poliza_grupo RETURN x2000030.num_poliza_grupo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_contrato:
 ||
 || Devuelve el número de contrato
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_contrato RETURN x2000030.num_contrato%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_subcontrato:
 ||
 || Devuelve el número de sub-contrato
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_subcontrato RETURN x2000030.num_subcontrato%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_nivel3:
 ||
 || Devuelve el nivel 3 de la estructura comercial
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_nivel3 RETURN x2000030.cod_nivel3%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_poliza_tr:
 ||
 || Devuelve el tipo de póliza de transportes
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_poliza_tr RETURN x2000030.tip_poliza_tr%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cant_renovaciones:
 ||
 || Devuelve la cantidad máxima de renovaciones
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cant_renovaciones RETURN x2000030.cant_renovaciones%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_agt:
 ||
 || Devuelve la clave de agente
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_agt RETURN x2000030.cod_agt%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_ejecutivo:
 ||
 || Devuelve el codigo de ejecutivo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_ejecutivo RETURN x2000030.cod_ejecutivo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_gestor:
 ||
 || Devuelve el tipo de gestor de cobro
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_gestor RETURN x2000030.tip_gestor%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_gestor:
 ||
 || Devuelve el código de gestor de cobro
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_gestor RETURN x2000030.cod_gestor%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_fec_efec_poliza:
 ||
 || Devuelve la fecha de fecto de la poliza
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_fec_efec_poliza RETURN x2000030.fec_efec_poliza%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_fec_vcto_poliza:
 ||
 || Devuelve la fecha de vencimiento de la poliza
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_fec_vcto_poliza RETURN x2000030.fec_vcto_poliza%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_presupuesto:
 ||
 || Devuelve el número de presupuesto
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_presupuesto RETURN x2000030.num_presupuesto%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_canal3:
 ||
 || Devuelve el código de canal 3
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_canal3 RETURN x2000030.cod_canal3%TYPE;
 --
 --
 /* -----------------------------------------------------
 || p_con_def_...:
 || 
 || Consultas a la definición de producto
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_con_ope_...:
 || 
 || Consultas de información relacioadas con la operación
 || que se está realizando
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_con_car_...:
 || 
 || Consultas a datos de la cartera
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_val_...:
 || 
 || Validaciones genéricas
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_gen_...:
 || 
 || Generacion de elementos
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_ctrl_tecnico(p_cod_cia      x2000221.cod_cia     %TYPE,
                              p_num_poliza   x2000221.num_poliza  %TYPE,
                              p_num_riesgo   x2000221.num_riesgo  %TYPE,
                              p_cod_error    x2000221.cod_error   %TYPE,
                              p_txt_error_ct x2000221.txt_error_ct%TYPE,
                              p_obs_error    x2000221.obs_error   %TYPE);
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
 || p_asg_cod_ejecutivo:
 ||
 || Asigna el valor que se desea que el cod_ejecutivo 
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_cod_ejecutivo(p_cod_ejecutivo x2000030.cod_ejecutivo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_val_campo:
 ||
 || Asigna el valor que se desea que el dato de póliza
 || contenga en el caso que exista una lógica previa al
 || atributo
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_val_campo(p_val_campo a2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_mca_salto:
 ||
 || Se determina si el atributo admitirá que el usuario
 || introduzca información o no
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_mca_salto(p_mca_salto g2000503.mca_salto%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_hora_desde:
 ||
 || Asigna el valor que se desea que el atributo
 || contenga
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_hora_desde(p_hora_desde x2000030.hora_desde%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_fec_emision:
 ||
 || Asigna el valor de la fecha emision
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_fec_emision(p_fec_emision x2000030.fec_emision%TYPE);
 --
 /* -----------------------------------------------------
 || f_con...:
 ||
 || Consultas a la definiciÃ³n de producto
 */ -----------------------------------------------------
 --
END em_k_ptd_gni;
/
