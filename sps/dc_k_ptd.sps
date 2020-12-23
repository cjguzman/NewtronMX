CREATE OR REPLACE PACKAGE TRON2000.DC_K_PTD AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Utilidades e información que existe durante una 
 || operación que pertenece a cualquier módulo.
 ||
 || Utiliado en el desarrollo de productos. 
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.02 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/12/02 - hsolive - 1.02 
 ||
 || Definicion del método (f_con_cod_postal) que devuelve
 || el registro de la tabla de codigos postales correspondiente al 
 || pais y codigo postal enviado. Solo permite codigos postales reales 
 || Se añade la constante de codigo de localidad generica
 || Se añade el subtipo 
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de tipos
 */ -----------------------------------------------------
 --
 TYPE record_est     IS RECORD
      ( nom_est      g9990003.nom_est          %TYPE,
        cod_pgm      g9990003.cod_pgm          %TYPE);
 --
 SUBTYPE t_cod_cia        IS a1000900.cod_cia             %TYPE; 
 SUBTYPE t_fec_validez    IS g2000020.fec_validez         %TYPE;
 SUBTYPE t_vrb_nam        IS df_cmn_nwt_xx_cnn.vrb_nam    %TYPE;
 SUBTYPE t_vrb_nam_val    IS df_cmn_nwt_xx_cnn.vrb_nam_val%TYPE;
 SUBTYPE t_cod_est        IS g9990003.cod_est             %TYPE;
 SUBTYPE t_cod_postal     IS a1000103.cod_postal          %TYPE;
 --
TYPE record_codigo_postal IS RECORD
      ( cod_pais           a1000103.cod_pais              %TYPE ,
        cod_postal         a1000103.cod_postal            %TYPE ,
        cod_estado         a1000103.cod_estado            %TYPE ,
        cod_prov           a1000103.cod_prov              %TYPE ,
        cod_localidad      a1000103.cod_localidad         %TYPE ,
        cod_usr            a1000103.cod_usr               %TYPE ,
        fec_actu           a1000103.fec_actu              %TYPE ,
        mca_inh            a1000103.mca_inh               %TYPE ,
        mca_codpostal_real a1000103.mca_codpostal_real    %TYPE );
 
      
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de constantes
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || Definición de constantes genericos
 */ -----------------------------------------------------
 --
 COD_CANAL3_GEN      CONSTANT g2002153.cod_canal3%  TYPE  := 'ZZZZ'           ; 
 COD_SECTOR_GEN      CONSTANT NUMBER(4)                   := 9999             ;
 COD_PAIS_GEN        CONSTANT a1000103.cod_pais     %TYPE := '999'            ;
 COD_ESTADO_GEN      CONSTANT a1000104.cod_estado   %TYPE := 999              ;
 COD_PROVINCIA_GEN   CONSTANT a1000100.cod_prov     %TYPE := 999999           ;
 COD_CODPOSTAL_GEN   CONSTANT a1000103.cod_postal   %TYPE := 'ZZZZZZZZZZZZZZZ';
 COD_LOCALIDAD_GEN   CONSTANT a1000102.cod_localidad%TYPE := 999999           ;
 --
 SEXO_MASCULINO      CONSTANT a1001331.mca_sexo%TYPE := '1';
 SEXO_FEMENINO       CONSTANT a1001331.mca_sexo%TYPE := '0' ;
 --
 /* -----------------------------------------------------
 || f_dev_...:
 || 
 || Devuelve atributos propios del contexto común a 
 || cualquier módulo
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_cia         RETURN a1000900.cod_cia    %TYPE;
 FUNCTION f_dev_cod_mon         RETURN a1000900.cod_mon    %TYPE;
 FUNCTION f_dev_cod_idioma_cia  RETURN g1010010.cod_idioma %TYPE;
 FUNCTION f_dev_fec_validez     RETURN g2000020.fec_validez%TYPE;
 --
 --
 /* --------------------------------------------------------
 || f_dev_vrb_nam_val :
 ||
 || Devuelve el valor de la constante.
 */ --------------------------------------------------------
 --
 FUNCTION f_dev_vrb_nam_val(p_vrb_nam df_cmn_nwt_xx_cnn.vrb_nam%TYPE)
          RETURN df_cmn_nwt_xx_cnn.vrb_nam_val%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_est:
 ||
 || Devuelve el codigo de estructura
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_est RETURN g9990003.cod_est%TYPE;
 --
 /* -----------------------------------------------------
 || f_dev_c_cod_est:
 ||
 || Devuelve el codigo de estructura
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_c_cod_est RETURN g9990003.cod_est%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_con_def_...:
 || 
 || Consultas a la definición de producto
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || f_con_estructura:
 || 
 || Devuelve informacion del código de estructura.
 */ -----------------------------------------------------
 --
 FUNCTION f_con_estructura (p_cod_est    g9990003.cod_est %TYPE)
          RETURN record_est;
 --
  /* -----------------------------------------------------
 || f_con_cod_postal:
 || 
 || Devuelve informacion del código postal.
 */ -----------------------------------------------------
 --
 FUNCTION f_con_cod_postal (p_cod_pais    A1000103.cod_pais%TYPE,
                            p_cod_postal    A1000103.cod_postal%TYPE)
          RETURN record_codigo_postal;
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
 /* -----------------------------------------------------
 || p_asg_...:
 || 
 || Asignación de información a atributos
 */ -----------------------------------------------------
 --
END dc_k_ptd;
/
