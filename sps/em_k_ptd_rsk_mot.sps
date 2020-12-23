CREATE OR REPLACE PACKAGE tron2000.em_k_ptd_rsk_mot IS
 --
 /* ----------------------- DESCRIPCION -----------------------
 || Datos variables riesgo -  Motor
 */ -----------------------------------------------------------
 --
 /* ----------------------- VERSION = 1.08 -------------------- */
 --
 /* ---------------------- MODIFICACIONES ---------------------
 || 2020/12/01 - paviabrx - v 1.06
 || Se elimino el subtipo cod_canal_13_gen
 || --
 || 2020/12/04 - hsolive - v 1.07
 || Creacion de metodo previo y validacion del valor del sub modelo del vehiculo
 || p_pre_val_sub_modelo y p_val_val_sub_modelo
 || --
 || 2020/12/10 - hsolive - v 1.08
 || Creacion del tipo valor vehiculo (record_valor_vehiculo)
 || Creacion del metodo que devuelve la informacion del valor del vehiculo a partir
 || de la informacion de la primary key (f_con_val_sub_modelo)
 */ -----------------------------------------------------------
 --
 /* -----------------------------------------------------------
 || Definicion de tipos
 */ -----------------------------------------------------------
 TYPE record_valor_vehiculo IS RECORD
      ( cod_cia            a2100430.cod_cia           %TYPE ,
        cod_marca          a2100430.cod_marca         %TYPE ,
        cod_modelo         a2100430.cod_modelo        %TYPE ,
        cod_sub_modelo     a2100430.cod_sub_modelo    %TYPE ,
        anio_sub_modelo    a2100430.anio_sub_modelo   %TYPE ,
        cod_mon            a2100430.cod_mon           %TYPE ,
        val_sub_modelo     a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_max a2100430.val_sub_modelo_max%TYPE ,
        val_sub_modelo_min a2100430.val_sub_modelo_min%TYPE ,
        mca_inh            a2100430.mca_inh           %TYPE ,
        fec_validez        a2100430.fec_validez       %TYPE ,
        cod_usr            a2100430.cod_usr           %TYPE ,
        fec_actu           a2100430.fec_actu          %TYPE ,
        cod_tab_ref        a2100430.cod_tab_ref       %TYPE ,
        val_sub_modelo_1   a2100430.val_sub_modelo    %TYPE ,  
        val_sub_modelo_2   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_3   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_4   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_5   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_6   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_7   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_8   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_9   a2100430.val_sub_modelo    %TYPE ,
        val_sub_modelo_10  a2100430.val_sub_modelo    %TYPE );
 -- 
 -- SUBTIPOS DEL VEHICULO
 SUBTYPE t_cod_marca          IS a2100400.cod_marca       %TYPE;
 SUBTYPE t_cod_modelo         IS a2100410.cod_modelo      %TYPE;
 SUBTYPE t_cod_sub_modelo     IS a2100420.cod_sub_modelo  %TYPE;
 SUBTYPE t_num_puertas        IS a2100420.num_puertas     %TYPE;
 SUBTYPE t_val_potencia       IS a2100420.val_potencia    %TYPE;
 SUBTYPE t_anio_sub_modelo    IS a2100430.anio_sub_modelo %TYPE;
 SUBTYPE t_val_sub_modelo     IS a2100430.val_sub_modelo  %TYPE;
 SUBTYPE t_fec_validez        IS a2100430.fec_validez     %TYPE;
 SUBTYPE t_fec_cambio         IS a1000500.fec_cambio      %TYPE;
 --
 /* -----------------------------------------------------
 || Definicion de constantes genericos
 */ -----------------------------------------------------
 --
 COD_TIP_VEHI_GEN           CONSTANT a2100100.cod_tip_vehi    %TYPE := 999; 
 COD_USO_VEHI_GEN           CONSTANT a2100200.cod_uso_vehi    %TYPE := 999;   
 --
 /* -----------------------------------------------------
 || f_dev_ptd_val_potencia:
 ||
 || Devuelve el valor de la potencia del vehiculo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_val_potencia RETURN a2100420.val_potencia%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_ptd_num_puertas:
 ||
 || Devuelve el valor del numero de puertas del vehiculo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_num_puertas RETURN a2100420.num_puertas%TYPE;
 --
 /* -----------------------------------------------------------
 || p_val_marca:
 || Procedimiento que valida la marca del vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_marca (p_cod_cia      a2100400.cod_cia    %TYPE,
                        p_cod_marca    a2100400.cod_marca  %TYPE,
                        p_fec_validez  a2100400.fec_validez%TYPE);
 --
 /* -----------------------------------------------------------
 || p_val_modelo:
 || Procedimiento que valida el modelo del vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_modelo (p_cod_cia       a2100410.cod_cia     %TYPE,
                         p_cod_marca     a2100410.cod_marca   %TYPE,
                         p_cod_modelo    a2100410.cod_modelo  %TYPE,
                         p_fec_validez   a2100410.fec_validez %TYPE);
 --
 /* -----------------------------------------------------------
 || p_val_sub_modelo:
 || Procedimiento que valida el sub modelo del vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_sub_modelo(p_cod_cia         a2100420.cod_cia         %TYPE,
                            p_cod_marca       a2100420.cod_marca       %TYPE,
                            p_cod_modelo      a2100420.cod_modelo      %TYPE,
                            p_cod_sub_modelo  a2100420.cod_sub_modelo  %TYPE,
                            p_fec_validez     a2100420.fec_validez     %TYPE);
 --
 /* -----------------------------------------------------------
 || p_val_modalidad:
 || Procedimiento que valida que la modalidad proporcionada
 || sea correcta en funcion de ramo tipo y uso de 
 || vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_modalidad;
 --
 --
 /* -----------------------------------------------------------
 || p_val_modalidad:
 || Procedimiento que valida que la modalidad proporcionada
 || sea correcta en funcion de ramo tipo y uso de 
 || vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_modalidad(p_fec_validez  a2100310.fec_validez%TYPE);
 --
 /* ------------------------------------------------------------
 || p_val_color:
 || Procedimiento que valida del codigo del color del vehiculo.
 || -----------------------------------------------------------*/
 --
 PROCEDURE  p_val_color;
 --
 /* -----------------------------------------------------------
 || p_val_uso_vehi
 || Procedimiento que valida el uso de vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_uso_vehi (p_cod_cia      a2100200.cod_cia      %TYPE,
                           p_cod_uso_vehi a2100200.cod_uso_vehi %TYPE,
                           p_fec_validez  a2100200.fec_validez  %TYPE);
 --
 /* -----------------------------------------------------------
 || p_val_tip_vehi:
 ||
 || Procedimiento que valida el tipo de vehiculo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_val_tip_vehi (p_cod_cia      a2100100.cod_cia      %TYPE,
                           p_cod_tip_vehi a2100100.cod_tip_vehi %TYPE,
                           p_fec_validez  a2100100.fec_validez  %TYPE);
 --
 /* -------------------------------------------------------------------------
 || p_val_anio_sub_modelo:
 || Procedimiento que valida que el modelo del anio sea del anio actual o del
 || siguiente para que pueda ser indemnizado a valor factura
 */ -------------------------------------------------------------------------
 --
 PROCEDURE p_val_anio_sub_modelo(P_fec_validez   a2100430.fec_validez%TYPE);
 --
 /* ------------------------------------------------------------------
 || p_val_val_sub_modelo:
 || Valida que exista el valor del submodelo ingresado,
 || despues convierte este importe al valor de la moneda de la poliza,
 || posterior a ello valida que este dentro de los rangos
 || permitidos del catalogo a2100430, valor minimo y maximo
 */ -------------------------------------------------------------------
 --
 PROCEDURE p_val_val_sub_modelo(p_fec_cambio    a1000500.fec_cambio %TYPE,
                                p_fec_validez   a2100430.fec_validez%TYPE);
 --
 /* --------------------------------------------------------
 || f_dev_val_sub_modelo:
 || Devuelve el valor del sub modelo del catalogo a2100430
 */ --------------------------------------------------------
 --
 FUNCTION f_dev_val_sub_modelo(p_fec_cambio     a1000500.fec_cambio %TYPE,
                               p_fec_validez    a2100430.fec_validez%TYPE)
          RETURN NUMBER;
 --
 /* --------------------------------------------------------
 || p_pre_val_sub_modelo:
 || Procedimiento previo al atributo valor del sub modelo
 */ --------------------------------------------------------
 --
 /*
 PROCEDURE p_pre_val_sub_modelo(p_fec_cambio     a1000500.fec_cambio %TYPE,
                                p_fec_validez    a2100430.fec_validez%TYPE);
 --
 */
 --
  /* -----------------------------------------------------
 || f_con_val_sub_modelo:
 || 
 || Devuelve informacion de los valores del vehiculo
 */ -----------------------------------------------------
 --
 FUNCTION f_con_val_sub_modelo(p_cod_cia           a2100430.cod_cia        %TYPE,
                               p_cod_marca         a2100430.cod_marca      %TYPE,
                               p_cod_modelo        a2100430.cod_modelo     %TYPE,
                               p_cod_sub_modelo    a2100430.cod_sub_modelo %TYPE,
                               p_anio_sub_modelo   a2100430.anio_sub_modelo%TYPE,
                               p_fec_validez       a2100430.fec_validez    %TYPE)
           RETURN record_valor_vehiculo;
 --
END em_k_ptd_rsk_mot;
/
