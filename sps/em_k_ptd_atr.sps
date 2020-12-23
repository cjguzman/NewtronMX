CREATE OR REPLACE PACKAGE          TRON2000.EM_K_PTD_ATR AS
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
 || Inclusión de método validación de dato variable con valor unico
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de tipos
 */ -----------------------------------------------------
 --
 TYPE record_atr  IS RECORD
      (cod_cia                     x2000020.cod_cia                    %TYPE,
       num_poliza                  x2000020.num_poliza                 %TYPE,
       num_riesgo                  x2000020.num_riesgo                 %TYPE,
       cod_modalidad               x2000020.cod_modalidad              %TYPE,
       num_periodo                 x2000020.num_periodo                %TYPE,
       tip_nivel                   x2000020.tip_nivel                  %TYPE,
       num_secu                    x2000020.num_secu                   %TYPE,
       cod_campo                   x2000020.cod_campo                  %TYPE,
       nom_campo                   x2000020.nom_campo                  %TYPE,
       tip_campo                   x2000020.tip_campo                  %TYPE,
       lng_campo                   x2000020.lng_campo                  %TYPE,
       mca_visible                 x2000020.mca_visible                %TYPE,
       mca_obligatorio             x2000020.mca_obligatorio            %TYPE,
       mca_modalidad               x2000020.mca_modalidad              %TYPE,
       mca_calculo                 x2000020.mca_calculo                %TYPE,
       mca_presupuesto             x2000020.mca_presupuesto            %TYPE,
       mca_suma_aseg               x2000020.mca_suma_aseg              %TYPE,
       tip_regulariza              x2000020.tip_regulariza             %TYPE,
       tip_regulariza_esp          x2000020.tip_regulariza_esp         %TYPE,
       pct_regulariza_esp          x2000020.pct_regulariza_esp         %TYPE,
       cod_indice                  x2000020.cod_indice                 %TYPE,
       nom_prg_regulariza_esp      x2000020.nom_prg_regulariza_esp     %TYPE,
       nom_prg_pre_campo           x2000020.nom_prg_pre_campo          %TYPE,
       val_defecto                 x2000020.val_defecto                %TYPE,
       nom_tabla_val_defecto       x2000020.nom_tabla_val_defecto      %TYPE,
       nom_campo_tabla_val_defecto x2000020.nom_campo_tabla_val_defecto%TYPE,
       nom_tabla_valida            x2000020.nom_tabla_valida           %TYPE,
       nom_pgm_help                x2000020.nom_pgm_help               %TYPE,
       nom_prg_campo               x2000020.nom_prg_campo              %TYPE,
       mca_validacion              x2000020.mca_validacion             %TYPE,
       mca_validacion_cia          x2000020.mca_validacion_cia         %TYPE,
       cod_lista                   x2000020.cod_lista                  %TYPE,
       cod_transportes             x2000020.cod_transportes            %TYPE,
       mca_modificable             x2000020.mca_modificable            %TYPE,
       mca_baja_riesgo             x2000020.mca_baja_riesgo            %TYPE,
       val_campo                   x2000020.val_campo                  %TYPE,
       val_campo_ant               x2000020.val_campo_ant              %TYPE,
       txt_campo                   x2000020.txt_campo                  %TYPE,
       txt_campo_ant               x2000020.txt_campo_ant              %TYPE,
       mca_inh                     x2000020.mca_inh                    %TYPE,
       mca_unico                   x2000020.mca_unico                  %TYPE,
       mca_inspec                  x2000020.mca_inspec                 %TYPE,
       cod_version                 x2000020.cod_version                %TYPE,
       nom_global_pgm_help         x2000020.nom_global_pgm_help        %TYPE,
       num_secu_insp               x2000020.num_secu_insp              %TYPE,
       mca_busca_por_igual_insp    x2000020.mca_busca_por_igual_insp   %TYPE,
       mca_busca_insp              x2000020.mca_busca_insp             %TYPE,
       mca_valida_si_null          x2000020.mca_valida_si_null         %TYPE,
       tip_dato_fondo              x2000020.tip_dato_fondo             %TYPE,
       cod_panel                   x2000020.cod_panel                  %TYPE,
       tip_subnivel                x2000020.tip_subnivel               %TYPE,
       mca_vld_online              x2000020.mca_vld_online             %TYPE);
 --
 SUBTYPE t_val_campo         IS a2000020.val_campo%TYPE;
 --
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
 || f_dev_cod_campo:
 ||
 || Devuelve el código de campo del dato variable
 || que se está tratando
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_campo RETURN a2000020.cod_campo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_val_campo:
 ||
 || Devuelve el valor del dato variable que se está 
 || tratando
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_val_campo RETURN a2000020.val_campo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_txt_campo:
 ||
 || Devuelve la descripción del contenido del dato 
 || variable que se está tratando
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_txt_campo RETURN a2000020.txt_campo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_val_campo_ant:
 ||
 || Devuelve el valor del dato variable que tenía antes
 || de comenzar la operación
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_val_campo_ant RETURN x2000020.val_campo_ant%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_mca_deprecia:
 ||
 || Devuelve si el dato variable deprecia (solo para 
 || revalorización/depreciación)
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_mca_deprecia RETURN g2100010.mca_deprecia_vehi%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_suma_aseg:
 ||
 || Devuelve la suma asegurada si el dato variable 
 || está definido como tal. Es utiliado para
 || revalorización/depreciación
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_suma_aseg RETURN x2000020.val_campo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_val_campo:
 ||
 || Devuelve el valor de un dato variable tratado 
 || anteriormente en la operación
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_val_campo(p_cod_campo a2000020.cod_campo%TYPE)
          RETURN a2000020.val_campo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_con:
 ||
 || Devuelve la información de los datos variables
 */ -----------------------------------------------------
 --
 FUNCTION f_con(p_cod_cia       x2000020.cod_cia      %TYPE,
                p_num_poliza    x2000020.num_poliza   %TYPE,
                p_num_spto      a2000020.num_spto     %TYPE,
                p_num_apli      a2000020.num_apli     %TYPE,
                p_num_spto_apli a2000020.num_spto_apli%TYPE,
                p_num_riesgo    x2000020.num_riesgo   %TYPE,
                p_num_periodo   x2000020.num_periodo  %TYPE,
                p_cod_campo     x2000020.cod_campo    %TYPE,
                p_cod_ramo      a2000020.cod_ramo     %TYPE, 
                p_cod_modalidad x2000020.cod_modalidad%TYPE,
                p_tip_nivel     x2000020.tip_nivel    %TYPE)
 RETURN record_atr;
 --
 --
 /* -----------------------------------------------------
 || p_pre_...:
 || 
 || Procedimientos previos
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_pre_constante:
 || 
 || Realiza todas las acciones necesarias para controlar 
 || el pre-campo de un dato variable cuando el contenido 
 || está declarado como constante en la tabla 
 || df_cmn_nwt_xx_cnn
 || Hay que recordar que también es posible indicar que 
 || el campo se salta en la misma tabla de constantes 
 */ -----------------------------------------------------
 --
 PROCEDURE p_pre_constante;
 --
 --
 /* -----------------------------------------------------
 || p_pre_cto_variable:
 || 
 || Realiza las acciones necesarias para controlar el 
 || pre-campo de un dato variable cuando el contenido 
 || está declarado como valores de un concepto dados en
 || la tabla df_cmn_nwt_xx_vrb_cnc.
 */ -----------------------------------------------------
 --
 PROCEDURE p_pre_cto_variable;
 --
 --
 /* -----------------------------------------------------
 || p_val_...:
 || 
 || Validaciones
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_val_cto_variable:
 || 
 || Realiza las acciones necesarias para validar un dato
 || un dato variable cuando el contenido está declarado 
 || como valores de un concepto dados en la tabla 
 || df_cmn_nwt_xx_vrb_cnc.
 */ -----------------------------------------------------
 -- 
 PROCEDURE p_val_cto_variable;
 --
 --
 /* -----------------------------------------------------
 || p_gen_...:
 || 
 || Generacion de elementos
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || p_gen_ctrl_tecnico:
 ||
 || Genera un control técnico cuando se ha comprobado que
 || se ha producido un error
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
 || p_asg_val_campo:
 ||
 || Asigna el valor que se desea que el dato variable 
 || contenga en el momento de la validación de este
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_val_campo(p_val_campo a2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_txt_campo:
 ||
 || Asigna la descripción del dato variable en el momento
 || de la validación de este
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_txt_campo(p_txt_campo a2000020.txt_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_mca_salto:
 ||
 || Se determina si el dato variable admitirá que el 
 || usuario introduzca información o no
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_mca_salto(p_mca_salto g2000503.mca_salto%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_mca_seleccion:
 ||
 || Se asigna si el dato variable en un proceso batch 
 || tomará o no el valor dado en el buzón
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_mca_seleccion(p_mca_seleccion x2000040.mca_seleccion%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_suma_aseg:
 ||
 || Se asigna la suma aseguada en caso de revalorización
 || o depreciación y que el dato variable contenga el 
 || capital
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_suma_aseg(p_suma_aseg x2000020.val_campo%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_val_unico:
 ||
 || Validación de dato variable con valor unico
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_unico(p_cod_cia         x2000020.cod_cia        %TYPE,
                       p_num_poliza      x2000020.num_poliza     %TYPE,
                       p_num_riesgo      x2000020.num_riesgo     %TYPE,
                       p_cod_campo       x2000020.cod_campo      %TYPE,
                       p_val_campo       x2000020.val_campo      %TYPE,
                       p_val_defecto     x2000020.val_defecto    %TYPE,
                       p_cod_ramo        x2000030.cod_ramo       %TYPE,
                       p_fec_efec_spto   x2000030.fec_efec_spto  %TYPE,
                       p_fec_vcto_spto   x2000030.fec_vcto_spto  %TYPE,
                       p_cod_tratamiento g9990200.cod_tratamiento%TYPE);
 --
END em_k_ptd_atr;
/
