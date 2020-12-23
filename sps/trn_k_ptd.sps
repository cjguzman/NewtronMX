CREATE OR REPLACE PACKAGE tron2000.trn_k_ptd AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Utilidades e información que existe durante la 
 || operación relacionada exclusivamente con el sistema. 
 || Es decir, no pertenece a una operación funcional 
 || exclusivamente
 || Utilizado en el desarrollo de productos
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.03 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/11/06 - hsolive - 1.03
 ||
 || Inclusión de métodos de lectura y asignación de 10 globales para 
 || almacenar información que facilite el trabajo en la definición
 || de productos y que no se pueda almacenar en campos ya existentes.
 || El formato de la global será ptd_val_01..ptd_val_10
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de tipos y subtipos
 */ -----------------------------------------------------
 --
 TYPE tb_trazas     IS TABLE OF VARCHAR2(1000); --Tabla de memoria para mostrar trazas
 --
 SUBTYPE t_t_valores IS ss_k_mensaje.t_t_valores;
 SUBTYPE t_ptd_val   IS x2000020.val_campo %TYPE;
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de constantes
 */ -----------------------------------------------------
 --
 SI             CONSTANT  VARCHAR2(1) := 'S';
 NO             CONSTANT  VARCHAR2(1) := 'N';
 --
 CERO           CONSTANT  NUMBER(1)   := 0;
 UNO            CONSTANT  NUMBER(1)   := 1;
 NULO           CONSTANT  VARCHAR2(4) := NULL;
 --
 ASTERISCO      CONSTANT VARCHAR2(1)  := '*';
 --
 /* -----------------------------------------------------
 || f_dev_...:
 || 
 || Devuelve información de atributos propios del 
 || contexto relacionados con la sesión
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_usr         RETURN g1002700.cod_usr   %TYPE;
 FUNCTION f_dev_cod_idioma      RETURN g1010010.cod_idioma%TYPE;
 FUNCTION f_dev_mspool_dir      RETURN g0000000.val_param %TYPE;
 FUNCTION f_dev_mspool_dir_real RETURN g0000000.val_param %TYPE;
 FUNCTION f_dev_sql_dir         RETURN g0000000.val_param %TYPE;
 FUNCTION f_dev_sql_dir_real    RETURN g0000000.val_param %TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_01 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_01
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_01 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_02 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_02
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_02 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_03 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_03
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_03 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_04 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_04
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_04 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_05 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_05
 */ -------------------------------------------------------
 --  
 FUNCTION f_dev_ptd_val_05 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_06 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_06
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_06 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_07 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_07
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_07 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_08 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_08
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_08 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_09 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_09
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_09 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_ptd_val_10 :
 ||
 || Devuelve el valor almacenado en la global ptd_val_10
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_10 RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -------------------------------------------------------
 || f_dev_identificador_traza :
 ||
 || Devuelve un idn para ser utilizado en la tabla de debug
 */ -------------------------------------------------------
 --
 FUNCTION f_dev_identificador_traza (p_identificador IN t_trn_trn_r_dbg.mbr_nam%TYPE) 
          RETURN t_trn_trn_r_dbg.dbg_idn%TYPE;
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
 || p_asg_...:
 || 
 || Asignación de información a atributos
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_01:
 ||
 || Asignar el valor a la global ptd_val_01
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_01(p_ptd_val_01 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_02:
 ||
 || Asignar el valor a la global ptd_val_02
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_02(p_ptd_val_02 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_03:
 ||
 || Asignar el valor a la global ptd_val_03
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_03(p_ptd_val_03 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_04:
 ||
 || Asignar el valor a la global ptd_val_04
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_04(p_ptd_val_04 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_05:
 ||
 || Asignar el valor a la global ptd_val_05
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_05(p_ptd_val_05 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_06:
 ||
 || Asignar el valor a la global ptd_val_06
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_06(p_ptd_val_06 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_07:
 ||
 || Asignar el valor a la global ptd_val_07
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_07(p_ptd_val_07 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_08:
 ||
 || Asignar el valor a la global ptd_val_08
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_08(p_ptd_val_08 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_09:
 ||
 || Asignar el valor a la global ptd_val_09
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_09(p_ptd_val_09 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_ptd_val_10:
 ||
 || Asignar el valor a la global ptd_val_10
 */ ----------------------------------------------------- 
 --
 PROCEDURE p_asg_ptd_val_10(p_ptd_val_10 IN x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_val_...:
 || 
 || Validaciones genéricas
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_igual(p_valor_campo VARCHAR2                ,
                       p_valor_igual VARCHAR2                ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_igual(p_valor_campo NUMBER                  ,
                       p_valor_igual NUMBER                  ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_igual(p_valor_campo DATE                    ,
                       p_valor_igual DATE                    ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe ser igual a p_valor_min
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_mayor(p_valor_campo VARCHAR2                ,
                       p_valor_min   VARCHAR2                ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_mayor(p_valor_campo NUMBER                  ,
                       p_valor_min   NUMBER                  ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_mayor(p_valor_campo DATE                    ,
                       p_valor_min   DATE                    ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe ser mayor a p_valor_min
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_mayor_igual(p_valor_campo VARCHAR2                ,
                             p_valor_min   VARCHAR2                ,
                             p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_mayor_igual(p_valor_campo NUMBER                  ,
                             p_valor_min   NUMBER                  ,
                             p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_mayor_igual(p_valor_campo DATE                    ,
                             p_valor_min   DATE                    ,
                             p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe ser mayor o igual a p_valor_min
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_menor(p_valor_campo VARCHAR2                ,
                       p_valor_max   VARCHAR2                ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_menor(p_valor_campo NUMBER                  ,
                       p_valor_max   NUMBER                  ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE); 
 --
 PROCEDURE p_val_menor(p_valor_campo DATE                    ,
                       p_valor_max   DATE                    ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe ser menor a p_valor_max
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_menor_igual(p_valor_campo VARCHAR2                ,
                             p_valor_max   VARCHAR2                ,
                             p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_menor_igual(p_valor_campo NUMBER                  ,
                             p_valor_max   NUMBER                  ,
                             p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 PROCEDURE p_val_menor_igual(p_valor_campo DATE                    ,
                             p_valor_max   DATE                    ,
                             p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe ser menor o igual a p_valor_max
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_en(p_valor_campo VARCHAR2                ,
                    p_valor_en    VARCHAR2                ,
                    p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe encontrarse en p_valor_in.
 ||
 || Los valores deben ir separados por comas (,) y en
 || ningun caso entre comillas. Es decir, si se quiere 
 || comprobar que los valores sean: A, B o C, p_valor_in
 || será: 'A,B,C'
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_no_en(p_valor_campo VARCHAR2                ,
                       p_valor_no_en VARCHAR2                ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo NO debe encontrarse en p_valor_in.
 ||
 || Los valores deben ir separados por comas (,) y en
 || ningun caso entre comillas. Es decir, si se quiere 
 || comprobar que los valores sean: A, B o C, p_valor_in
 || será: 'A,B,C'
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_entre(p_valor_campo NUMBER                  ,
                       p_valor_min   NUMBER                  ,
                       p_valor_max   NUMBER                  ,
                       p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo debe encontrarse entre p_valor_min y
 || p_valor_max
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_no_entre(p_valor_campo NUMBER                  ,
                          p_valor_min   NUMBER                  ,
                          p_valor_max   NUMBER                  ,
                          p_cod_idioma  g1010010.cod_idioma%TYPE);
 --
 /* -------------------- DESCRIPCION --------------------
 || p_valor_campo NO debe encontrarse entre p_valor_min y
 || p_valor_max
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || p_gen_...:
 || 
 || Generacion de elementos
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_error(p_cod_idioma  g1010020.cod_idioma %TYPE,
                       p_cod_mensaje g1010020.cod_mensaje%TYPE,
                       p_t_valores   ss_k_mensaje.t_t_valores ,
                       p_pre_mensaje VARCHAR2                 ,
                       p_pos_mensaje VARCHAR2                 );
 --
 /* -------------------- DESCRIPCION --------------------
 || Devuelve el texto sustituyendo los %n de la columna
 || txt_mensaje. Incluye la posibilidad de informar un
 || texto previo (p_pre_mensaje) que se colocará por 
 || delante del mensaje y un texto posterior 
 || (p_pos_mensaje) que se colocará a continuación del
 || mensaje
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || p_asg_...:
 || 
 || Asignación de información a atributos
 */ -----------------------------------------------------
 --   
 /* -----------------------------------------------------
 || p_gen_comienzo_traza :
 ||
 || Genera la traza correspondiente a un comienzo de
 || procedimiento
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_comienzo_traza(p_nom_prg    IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                p_nom_metodo IN t_trn_trn_r_dbg.mbr_nam%TYPE);
 --
 /* -----------------------------------------------------
 || p_gen_mth_end :
 ||
 || Genera la traza correspondiente a un final de
 || procedimiento
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_final_traza(p_nom_prg    IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                             p_nom_metodo IN t_trn_trn_r_dbg.mbr_nam%TYPE);
 --
 /* -----------------------------------------------------
 || p_gen_traza_variable :
 ||
 || Genera la traza correspondiente a una asignacion
 || de variable
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_traza_variable(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                p_nom_variable IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                p_val_variable IN t_trn_trn_r_dbg.mbr_val%TYPE);
 --
 PROCEDURE p_gen_traza_variable(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                p_nom_variable IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                p_val_variable IN t_trn_trn_r_dbg.dbg_sqn%TYPE);
 --
 PROCEDURE p_gen_traza_variable(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                p_nom_variable IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                p_val_variable IN t_trn_trn_r_dbg.tim_inv%TYPE);
 --
 PROCEDURE p_gen_traza_variable(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                p_nom_variable IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                p_val_variable IN BOOLEAN);
 --
 /* -----------------------------------------------------
 || p_gen_traza_parametro :
 ||
 || Genera la traza correspondiente a una recepcion de
 || parametro
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_traza_parametro(p_nom_prg         IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                 p_nom_parametro   IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                 p_val_parametro   IN t_trn_trn_r_dbg.mbr_val%TYPE);
 --                                                
 PROCEDURE p_gen_traza_parametro(p_nom_prg          IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                 p_nom_parametro    IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                 p_val_parametro    IN t_trn_trn_r_dbg.dbg_sqn%TYPE);
 --                                                
 PROCEDURE p_gen_traza_parametro(p_nom_prg          IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                 p_nom_parametro    IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                 p_val_parametro    IN t_trn_trn_r_dbg.tim_inv%TYPE);
 --                                                
 PROCEDURE p_gen_traza_parametro(p_nom_prg          IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                 p_nom_parametro    IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                 p_val_parametro    IN BOOLEAN);
 --
 /* -----------------------------------------------------
 || p_gen_traza_retorno_funcion :
 ||
 || Genera la traza correspondiente al retorno de una
 || funcion
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_traza_retorno_funcion(p_nom_prg     IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                       p_nom_funcion IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                       p_val_retorno IN t_trn_trn_r_dbg.mbr_val%TYPE);
 --                                                  
 PROCEDURE p_gen_traza_retorno_funcion(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                       p_nom_funcion  IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                       p_val_retorno  IN t_trn_trn_r_dbg.dbg_sqn%TYPE);
 --                                                  
 PROCEDURE p_gen_traza_retorno_funcion(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                       p_nom_funcion  IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                       p_val_retorno  IN t_trn_trn_r_dbg.tim_inv%TYPE);
 --                                                  
 PROCEDURE p_gen_traza_retorno_funcion(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                       p_nom_funcion  IN t_trn_trn_r_dbg.mbr_nam%TYPE,
                                       p_val_retorno  IN BOOLEAN);
 --
 /* -----------------------------------------------------
 || p_gen_traza_error :
 ||
 || Genera la traza correspondiente a un error
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_traza_error(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE);
 --
 /* -----------------------------------------------------
 || p_gen_traza_comentario :
 ||
 || Genera la traza correspondiente a un comentario
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_traza_comentario(p_nom_prg      IN t_trn_trn_r_dbg.pgm_nam%TYPE,
                                  p_comentario   IN t_trn_trn_r_dbg.mbr_val%TYPE);
 --
 /* -----------------------------------------------------
 || p_habilita_traza :
 ||
 || Habilita la generacion de trazas
 */ -----------------------------------------------------
 --
 PROCEDURE p_habilita_traza(p_idn_traza t_trn_trn_r_dbg.dbg_idn%TYPE);
 --
 /* -----------------------------------------------------
 || p_gen_habilita_traza :
 ||
 || Habilita la generacion de trazas
 */ -----------------------------------------------------
 --
 PROCEDURE p_gen_habilita_traza(p_idn_traza t_trn_trn_r_dbg.dbg_idn%TYPE,
                                pm_dbg_enb  IN BOOLEAN);
 --
 /* -----------------------------------------------------
 || p_deshabilita_traza :
 ||
 || Inhabilita la generacion de trazas
 */ -----------------------------------------------------
 --
 PROCEDURE p_deshabilita_traza;
 --
 /* -----------------------------------------------------
 || p_borra_traza :
 ||
 || Elimina las trazas con el idn recibido
 */ -----------------------------------------------------
 --
 PROCEDURE p_borra_traza(p_idn_traza t_trn_trn_r_dbg.dbg_idn%TYPE);
 --
 /* -----------------------------------------------------
 || p_borra_traza :
 ||
 || Elimina las trazas generadas desde el dia
 || recibido en dat_inv hacia atras
 */ -----------------------------------------------------
 --
 PROCEDURE p_borra_traza(p_fec_traza IN t_trn_trn_r_dbg.tim_inv%TYPE);
 --
 /* -----------------------------------------------------
 || p_borra_traza :
 ||
 || Elimina las trazas generadas desde el dia
 || recibido en p_fec_traza y la hora recibida en p_fec_hora_traza
 || hacia atras
 */ -----------------------------------------------------
 --
 PROCEDURE p_borra_traza(p_fec_traza       IN t_trn_trn_r_dbg.tim_inv%TYPE,
                         p_fec_hora_traza  IN t_trn_trn_r_dbg.tim_inv%TYPE);
 --
 /* -----------------------------------------------------
 || p_dev_trazas :
 ||
 || Recupera las trazas correspondientes al idn recibido
 */ -----------------------------------------------------
 --
 PROCEDURE p_dev_trazas(p_idn_traza t_trn_trn_r_dbg.dbg_idn%TYPE,
                        p_tbl_trazas  OUT tb_trazas );
 --
END trn_k_ptd;
/
