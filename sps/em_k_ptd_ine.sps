CREATE OR REPLACE PACKAGE tron2000.em_k_ptd_ine AS
 --
 /* -------------------- DESCRIPCION -----------------------
 || Utilidades e información que existe durante la 
 || operación perteneciente al módulo de emisión y  
 || exclusivas del concepto de negocio
 ||
 || Utilizado en el desarrollo de productos
 */ --------------------------------------------------------
 --
 /* -------------------- VERSION = 1.03 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/11/12 - JAPERE4 - 1.02
 || Se crea nueva funcion f_dev_beneficiarios_riesgo que devuelve 
 || los intervinientes de un tip_benef concreto.
 || --
 || 2020/12/11 - hsolive - 1.03
 || Inclusion del campo de secuencia de tarjeta en el registro
 || del beneficiario
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de tipos
 */ -----------------------------------------------------
 --
 SUBTYPE t_tip_docum         IS x2000060.tip_docum%TYPE; 
 SUBTYPE t_cod_docum         IS x2000060.cod_docum%TYPE;
 --
 TYPE record_docum_benef     IS RECORD
      ( cod_cia                 x2000060.cod_cia               %TYPE,
        num_poliza              x2000060.num_poliza            %TYPE,
        num_riesgo              x2000060.num_riesgo            %TYPE,
        tip_benef               x2000060.tip_benef             %TYPE,
        num_secu                x2000060.num_secu              %TYPE,
        tip_docum               x2000060.tip_docum             %TYPE,
        cod_docum               x2000060.cod_docum             %TYPE,
        mca_principal           x2000060.mca_principal         %TYPE,
        mca_calculo             x2000060.mca_calculo           %TYPE,
        pct_participacion       x2000060.pct_participacion     %TYPE,
        fec_vcto_cesion         x2000060.fec_vcto_cesion       %TYPE,
        imp_cesion              x2000060.imp_cesion            %TYPE,
        mca_baja                x2000060.mca_baja              %TYPE,
        mca_vigente             x2000060.mca_vigente           %TYPE,
        tip_docum_ant           x2000060.tip_docum_ant         %TYPE,
        cod_docum_ant           x2000060.cod_docum_ant         %TYPE,
        mca_baja_ant            x2000060.mca_baja_ant          %TYPE,
        num_prestamo            x2000060.num_prestamo          %TYPE,
        tip_relac               x2000060.tip_relac             %TYPE,
        num_spto                a2000060.num_spto              %TYPE,
        num_apli                a2000060.num_apli              %TYPE,
        num_spto_apli           a2000060.num_spto_apli         %TYPE,
        num_secu_cta_tar        NUMBER                              );
 --
 TYPE t_tb_docum_benef        IS TABLE OF record_docum_benef INDEX BY BINARY_INTEGER;
 --
 /* -----------------------------------------------------
 || Definición de constantes genericos
 */ -----------------------------------------------------
 --
 TIP_BENEF_CONDUCTOR CONSTANT x2000060.tip_benef%TYPE:= '3';
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
 || f_dev_tip_docum:
 ||
 || Devuelve el tipo de documento de la intervención
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_docum RETURN x2000060.tip_docum%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_docum:
 ||
 || Devuelve el código de documento de la intervención
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_docum RETURN x2000060.cod_docum%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_docum_defecto:
 ||
 || Devuelve el tipo de documento por defecto de la
 || intervención
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_docum_defecto RETURN x2000060.tip_docum%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_cod_docum_defecto:
 ||
 || Devuelve el código de documento de la intervención
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_docum_defecto RETURN x2000060.cod_docum%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_tip_benef:
 ||
 || Devuelve el código de beneficiario
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_benef RETURN x2000060.tip_benef%TYPE;
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
 || p_asg_tip_docum_defecto:
 ||
 || Asigna el valor al tipo de documento por defecto
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_tip_docum_defecto(p_tip_docum_defecto x2000060.tip_docum%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_cod_docum_defecto:
 ||
 || Asigna el valor al código de documento por defecto
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_cod_docum_defecto(p_cod_docum_defecto x2000060.cod_docum%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_tip_docum_mca:
 ||
 || Asigna el valor al tipo de documento para determinar
 || el cálculo
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_tip_docum_mca(p_tip_docum_defecto x2000060.tip_docum%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_cod_docum_mca:
 ||
 || Asigna el valor al código de documento para 
 || determinar el cálculo
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_cod_docum_mca(p_cod_docum_defecto x2000060.cod_docum%TYPE);
 --
 --
 /* -----------------------------------------------------
 || p_asg_mca_tip_benef:
 ||
 || Indica si se desea o no que la intervención
 || (tip_benef) se solicita en el proceso
 */ -----------------------------------------------------
 --
 PROCEDURE p_asg_mca_tip_benef(p_mca_tip_benef VARCHAR2);
 --
 /* -----------------------------------------------------
 || f_dev_beneficiarios_riesgo:
 ||
 || Devuelve los intervinientes de un tip_benef concreto 
 || para la poliza y riesgo indicado
 */ -----------------------------------------------------
 --
 FUNCTION f_con_beneficiarios_riesgo(p_cod_cia    x2000060.cod_cia    %TYPE,
                                     p_num_poliza x2000060.num_poliza %TYPE,
                                     p_num_riesgo x2000060.num_riesgo %TYPE,
                                     p_tip_benef  x2000060.tip_benef  %TYPE)
     RETURN t_tb_docum_benef;
 --
 /* -----------------------------------------------------
 || f_dev_tip_docum_tomador:
 ||
 || Devuelve el tipo de documento del tomador
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_cod_docum_tomador RETURN x2000060.cod_docum%TYPE;
 --  
 /* -----------------------------------------------------
 || f_dev_tip_docum_tomador:
 ||
 || Devuelve el tipo de documento del tomador
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_tip_docum_tomador RETURN x2000060.tip_docum%TYPE;
 --
END em_k_ptd_ine;
/
