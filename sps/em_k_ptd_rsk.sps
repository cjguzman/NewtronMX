CREATE OR REPLACE PACKAGE tron2000.em_k_ptd_rsk AS
 --
 /* -------------------- DESCRIPCION -----------------------
 || Utilidades e información que existe durante la 
 || operación perteneciente al módulo de emisión y  
 || exclusivas del concepto de negocio
 ||
 || Utilizado en el desarrollo de productos
 */ --------------------------------------------------------
 --
 /* -------------------- VERSION = 1.01 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/10/18 - hsolive - 1.01
 ||
 || Se añaden los métodos f_dev_dias_efec_poliza y f_dev_dias_efec_poliza_ant
 || para disponer de los días del movimiento actual y anterior en el caso
 || de necesitarlos para calcular el coeficiente de anulación
 */ --------------------------------------------------------
 --
 --
 /* --------------------------------------------------------
 || f_dev_...:
 || 
 || Devuelve información de atributos propios del 
 || contexto de  emisión que no pertenecen a un concepto 
 || de negocio
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_riesgo:
 ||
 || Devuelve el número de riesgo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_riesgo RETURN x2000280.num_riesgo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_periodo:
 ||
 || Devuelve el número de periodo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_periodo RETURN x2000040.num_periodo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_num_periodo_base:
 ||
 || Devuelve el número de periodo de partida para
 || cálculos
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_num_periodo_base RETURN x2000040.num_periodo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_modalidad:
 ||
 || Devuelve la modalidad de vida
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_modalidad RETURN x2000280.cod_modalidad%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_sub_ramo:
 ||
 || Devuelve el codigo subramo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_sub_ramo RETURN x2000280.cod_modalidad%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_coef_anul
 ||
 || Devuelve el coeficiente de anulacion
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_coef_anul RETURN x2000290.coef_anulacion%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_coef_cob:
 ||
 || Devuelve el coeficiente de la cobertura
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_coef_cob RETURN x2000290.coef_cob%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_dias_efec_poliza:
 ||
 || Devuelve los dias de efecto de la poliza
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_dias_efec_poliza RETURN a2000241.dia_escala%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_dias_efec_poliza_ant:
 ||
 || Devuelve los dias de efecto de la poliza en su movimiento anterior
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_dias_efec_poliza_ant RETURN a2000241.dia_escala%TYPE;
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
 /* -----------------------------------------------------
 || p_gen_...:
 || 
 || Generacion de elementos
 */ -----------------------------------------------------
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
 || p_asg_coef_anul:
 ||
 || Asigna el coeficiente de anulacion
 || 
 */ -----------------------------------------------------
 --                                                          
 PROCEDURE p_asg_coef_anul(p_coef_anul x2000290.coef_anulacion%TYPE);
 --
 -- 
 /* -----------------------------------------------------
 || p_asg_coef_cob:
 ||
 || Asigna el coeficiente de cobertura
 || 
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_coef_cob(p_coef_cob x2000290.coef_cob%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_nom_riesgo:
 ||
 || Asigna la descripción del riesgo
 || 
 || Utilizado en:
 || - A1001800.nom_prg_riesgo
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_nom_riesgo(p_nom_riesgo a1001800.nom_prg_riesgo%TYPE);
 -- 
 --
 /* -----------------------------------------------------
 || p_asg_dev_mca_todos_riesgos_ta:
 ||
 || Asigna valor a la variable dev_mca_todos_riesgos_tarifica. 
 || Como el nombre de variable ya tiene 30 caracteres, se adapta
 || el nombre del procedimiento
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_dev_mca_todos_riesgos_ta(p_dev_mca_todos_riesgos_tarifi VARCHAR2);
 --
END em_k_ptd_rsk;
/
