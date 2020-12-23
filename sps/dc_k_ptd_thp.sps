CREATE OR REPLACE PACKAGE TRON2000.DC_K_PTD_THP AS
 --
 /* -------------------- DESCRIPCION --------------------
 || Utilidades e información que existe durante una 
 || operación que pertenece a cualquier módulo.
 ||
 || Utiliado en el desarrollo de productos. 
 */ -----------------------------------------------------
 --
 /* -------------------- VERSION = 1.06 -------------------- */
 --
 /* -------------------- MODIFICACIONES --------------------
 || 2020/11/26 - hsolive - 1.02
 ||
 || Modificacion del nombre del metodo f_con_datos_asegurado 
 || para incluir la inicializacion de las globales de ptd
 || Modificacion del nombre del metodo f_con_datos_fijos
 || para incluir la inicializacion de las globales de ptd
 || Inclusion de metodos de devolucion de las globales ptd_tip_docum
 || ptd_cod_docum
 || --
 || 2020/12/03 - hsolive - 1.03
 || Inclusion metodo que devuelve ptd_cod_prov y ptd_cod_estado
 || Incluison de los tipos para cod_prov y cod_estado
 || --
 || 2020/12/03 - hsolive - 1.04
 || Inclusion metodo para inicializar las globales de ptd asociadas
 || a los datos fijos del tercero p_ini_globales_ptd_df
 || Inclusion metodo para inicializar las globales de ptd asociadas
 || al asegurado p_ini_globales_ptd_aseg
 || --
 || 2020/12/04 - hsolive - 1.05
 || Inclusion metodo para devolver el pais del tercero. f_dev_ptd_cod_pais
 || Inclusion del tipo para definir variables asociadas al codigo de pais. 
 || t_cod_pais
 || --
 || 2020/12/10 - hsolive - 1.06
 || Inclusion metodo para devolver la fecha del carnet de conducir. f_dev_ptd_fec_carnet_con
 */ --------------------------------------------------------
 --
 --
 /* -------------------- DESCRIPCION --------------------
 || Definición de tipos
 */ -----------------------------------------------------
 --
 SUBTYPE t_mca_fisico     IS a1001399.mca_fisico           %TYPE;
 SUBTYPE t_fec_nacimiento IS a1001331.fec_nacimiento       %TYPE;
 SUBTYPE t_mca_sexo       IS a1001331.mca_sexo             %TYPE;
 SUBTYPE t_cod_prov       IS a1001331.cod_prov             %TYPE;
 SUBTYPE t_cod_estado     IS a1001331.cod_estado           %TYPE;
 SUBTYPE t_cod_pais       IS a1001331.cod_pais             %TYPE;
 -- 
 TYPE record_tercero  IS RECORD
  ( cod_cia                        a1001331.cod_cia                       %TYPE,
    tip_docum                      a1001331.tip_docum                     %TYPE,
    cod_docum                      a1001331.cod_docum                     %TYPE,
    cod_act_tercero                a1001331.cod_act_tercero               %TYPE,
    tip_nacionalidad               a1001331.tip_nacionalidad              %TYPE,
    cod_nacionalidad               a1001331.cod_nacionalidad              %TYPE,
    tip_domicilio                  a1001331.tip_domicilio                 %TYPE,
    nom_domicilio1                 a1001331.nom_domicilio1                %TYPE,
    nom_domicilio2                 a1001331.nom_domicilio2                %TYPE,
    nom_domicilio3                 a1001331.nom_domicilio3                %TYPE,
    nom_localidad                  a1001331.nom_localidad                 %TYPE,
    cod_pais                       a1001331.cod_pais                      %TYPE,
    cod_prov                       a1001331.cod_prov                      %TYPE,
    cod_postal                     a1001331.cod_postal                    %TYPE,
    num_apartado                   a1001331.num_apartado                  %TYPE,
    tlf_pais                       a1001331.tlf_pais                      %TYPE,
    tlf_zona                       a1001331.tlf_zona                      %TYPE,
    tlf_numero                     a1001331.tlf_numero                    %TYPE,
    fax_numero                     a1001331.fax_numero                    %TYPE,
    email                          a1001331.email                         %TYPE,
    tip_domicilio_com              a1001331.tip_domicilio_com             %TYPE,
    nom_domicilio1_com             a1001331.nom_domicilio1_com            %TYPE,
    nom_domicilio2_com             a1001331.nom_domicilio2_com            %TYPE,
    nom_domicilio3_com             a1001331.nom_domicilio3_com            %TYPE,
    nom_localidad_com              a1001331.nom_localidad_com             %TYPE,
    cod_pais_com                   a1001331.cod_pais_com                  %TYPE,
    cod_prov_com                   a1001331.cod_prov_com                  %TYPE,
    cod_postal_com                 a1001331.cod_postal_com                %TYPE,
    tlf_pais_com                   a1001331.tlf_pais_com                  %TYPE,
    tlf_zona_com                   a1001331.tlf_zona_com                  %TYPE,
    tlf_numero_com                 a1001331.tlf_numero_com                %TYPE,
    fax_numero_com                 a1001331.fax_numero_com                %TYPE,
    email_com                      a1001331.email_com                     %TYPE,
    txt_etiqueta1                  a1001331.txt_etiqueta1                 %TYPE,
    txt_etiqueta2                  a1001331.txt_etiqueta2                 %TYPE,
    txt_etiqueta3                  a1001331.txt_etiqueta3                 %TYPE,
    txt_etiqueta4                  a1001331.txt_etiqueta4                 %TYPE,
    txt_etiqueta5                  a1001331.txt_etiqueta5                 %TYPE,
    nom_contacto                   a1001331.nom_contacto                  %TYPE,
    tip_cargo                      a1001331.tip_cargo                     %TYPE,
    tip_act_economica              a1001331.tip_act_economica             %TYPE,
    cod_entidad                    a1001331.cod_entidad                   %TYPE,
    cod_oficina                    a1001331.cod_oficina                   %TYPE,
    cta_cte                        a1001331.cta_cte                       %TYPE,
    cta_dc                         a1001331.cta_dc                        %TYPE,
    fec_nacimiento                 a1001331.fec_nacimiento                %TYPE,
    fec_carnet_con                 a1001331.fec_carnet_con                %TYPE,
    cod_ocupacion                  a1001331.cod_ocupacion                 %TYPE,
    cod_est_civil                  a1001331.cod_est_civil                 %TYPE,
    cod_profesion                  a1001331.cod_profesion                 %TYPE,
    mca_sexo                       a1001331.mca_sexo                      %TYPE,
    cod_calidad                    a1001331.cod_calidad                   %TYPE,
    cod_idioma                     a1001331.cod_idioma                    %TYPE,
    obs_asegurado                  a1001331.obs_asegurado                 %TYPE,
    cod_grp_tercero                a1001331.cod_grp_tercero               %TYPE,
    txt_aux1                       a1001331.txt_aux1                      %TYPE,
    txt_aux2                       a1001331.txt_aux2                      %TYPE,
    txt_aux3                       a1001331.txt_aux3                      %TYPE,
    txt_aux4                       a1001331.txt_aux4                      %TYPE,
    txt_aux5                       a1001331.txt_aux5                      %TYPE,
    txt_aux6                       a1001331.txt_aux6                      %TYPE,
    txt_aux7                       a1001331.txt_aux7                      %TYPE,
    txt_aux8                       a1001331.txt_aux8                      %TYPE,
    txt_aux9                       a1001331.txt_aux9                      %TYPE,
    cod_usr                        a1001331.cod_usr                       %TYPE,
    fec_actu                       a1001331.fec_actu                      %TYPE,
    tlf_movil                      a1001331.tlf_movil                     %TYPE,
    num_busca                      a1001331.num_busca                     %TYPE,
    tip_etiqueta                   a1001331.tip_etiqueta                  %TYPE,
    cod_estado                     a1001331.cod_estado                    %TYPE,
    cod_estado_com                 a1001331.cod_estado_com                %TYPE,
    txt_email                      a1001331.txt_email                     %TYPE,
    num_apartado_com               a1001331.num_apartado_com              %TYPE,
    cod_pais_etiqueta              a1001331.cod_pais_etiqueta             %TYPE,
    cod_estado_etiqueta            a1001331.cod_estado_etiqueta           %TYPE,
    cod_prov_etiqueta              a1001331.cod_prov_etiqueta             %TYPE,
    cod_postal_etiqueta            a1001331.cod_postal_etiqueta           %TYPE,
    num_apartado_etiqueta          a1001331.num_apartado_etiqueta         %TYPE,
    cod_localidad                  a1001331.cod_localidad                 %TYPE,
    tip_tarjeta                    a1001331.tip_tarjeta                   %TYPE,
    cod_tarjeta                    a1001331.cod_tarjeta                   %TYPE,
    num_tarjeta                    a1001331.num_tarjeta                   %TYPE,
    cod_localidad_com              a1001331.cod_localidad_com             %TYPE,
    cod_localidad_etiqueta         a1001331.cod_localidad_etiqueta        %TYPE,
    nom_localidad_etiqueta         a1001331.nom_localidad_etiqueta        %TYPE,
    fec_vcto_tarjeta               a1001331.fec_vcto_tarjeta              %TYPE,
    cod_compensacion               a1001331.cod_compensacion              %TYPE,
    cod_clase_benef                a1001331.cod_clase_benef               %TYPE,
    cod_causa_inh_trc              a1001331.cod_causa_inh_trc             %TYPE,
    mca_inh                        a1001331.mca_inh                       %TYPE,
    num_carnet_con                 a1001331.num_carnet_con                %TYPE,
    cod_situ_carnet_con            a1001331.cod_situ_carnet_con           %TYPE,
    atr_domicilio1                 a1001331.atr_domicilio1                %TYPE,
    atr_domicilio2                 a1001331.atr_domicilio2                %TYPE,
    atr_domicilio3                 a1001331.atr_domicilio3                %TYPE,
    atr_domicilio4                 a1001331.atr_domicilio4                %TYPE,
    atr_domicilio5                 a1001331.atr_domicilio5                %TYPE,
    anx_domicilio                  a1001331.anx_domicilio                 %TYPE,
    ext_cod_postal                 a1001331.ext_cod_postal                %TYPE,
    tlf_extension                  a1001331.tlf_extension                 %TYPE,
    nom_empresa_com                a1001331.nom_empresa_com               %TYPE,
    atr_domicilio1_com             a1001331.atr_domicilio1_com            %TYPE,
    atr_domicilio2_com             a1001331.atr_domicilio2_com            %TYPE,
    atr_domicilio3_com             a1001331.atr_domicilio3_com            %TYPE,
    atr_domicilio4_com             a1001331.atr_domicilio4_com            %TYPE,
    atr_domicilio5_com             a1001331.atr_domicilio5_com            %TYPE,
    anx_domicilio_com              a1001331.anx_domicilio_com             %TYPE,
    ext_cod_postal_com             a1001331.ext_cod_postal_com            %TYPE,
    tlf_extension_com              a1001331.tlf_extension_com             %TYPE,
    ext_cod_postal_etiqueta        a1001331.ext_cod_postal_etiqueta       %TYPE,
    cod_exp_carnet_con             a1001331.cod_exp_carnet_con            %TYPE,
    nom_titular_cta                a1001331.nom_titular_cta               %TYPE,
    apellido_contacto              a1001331.apellido_contacto             %TYPE,
    tip_docum_contacto             a1001331.tip_docum_contacto            %TYPE,
    cod_docum_contacto             a1001331.cod_docum_contacto            %TYPE,
    cod_nacionalidad_contacto      a1001331.cod_nacionalidad_contacto     %TYPE,
    num_hijos                      a1001331.num_hijos                     %TYPE,
    tip_rating                     a1001331.tip_rating                    %TYPE,
    txt_longitud                   a1001331.txt_longitud                  %TYPE,
    txt_latitud                    a1001331.txt_latitud                   %TYPE,
    cod_nivel3_ref                 a1001331.cod_nivel3_ref                %TYPE,
    fec_alta                       a1001331.fec_alta                      %TYPE,
    fec_emi_docum                  a1001331.fec_emi_docum                 %TYPE,
    fec_caduc_docum                a1001331.fec_caduc_docum               %TYPE,
    cod_exp_docum                  a1001331.cod_exp_docum                 %TYPE,
    val_zon_exp_lic_con            a1001331.val_zon_exp_lic_con           %TYPE,
    mca_robinson                   a1001331.mca_robinson                  %TYPE,
    cod_tip_soc                    a1001331.cod_tip_soc                   %TYPE,
    tip_docum_representante_legal  a1001331.tip_docum_representante_legal %TYPE,
    cod_docum_representante_legal  a1001331.cod_docum_representante_legal %TYPE,
    cod_grp_empresarial            a1001331.cod_grp_empresarial           %TYPE,
    cod_estudios                   a1001331.cod_estudios                  %TYPE,
    cod_titulacion                 a1001331.cod_titulacion                %TYPE,
    fec_fallecimiento              a1001331.fec_fallecimiento             %TYPE,
    cod_zona_horaria               a1001331.cod_zona_horaria              %TYPE,
    mca_vip                        a1001331.mca_vip                       %TYPE,
    num_empleados                  a1001331.num_empleados                 %TYPE,
    imp_facturacion                a1001331.imp_facturacion               %TYPE,
    pct_discapacidad               a1001331.pct_discapacidad              %TYPE,
    mca_plan_fidelizacion          a1001331.mca_plan_fidelizacion         %TYPE,
    num_pto_plan_fidelizacion      a1001331.num_pto_plan_fidelizacion     %TYPE,
    mca_domicilio_comprobado       a1001331.mca_domicilio_comprobado      %TYPE,
    mca_domicilio_com_comprobado   a1001331.mca_domicilio_com_comprobado  %TYPE,
    mca_domicilio_etiq_comprobado  a1001331.mca_domicilio_etiq_comprobado %TYPE,
    txt_latitud_domicilio_com      a1001331.txt_latitud_domicilio_com     %TYPE,
    txt_longitud_domicilio_com     a1001331.txt_longitud_domicilio_com    %TYPE,
    txt_latitud_domicilio_etiqueta a1001331.txt_latitud_domicilio_etiqueta%TYPE,
    txt_longitud_domicilio_etiquet a1001331.txt_longitud_domicilio_etiquet%TYPE,
    mca_tlf_numero_comprobado      a1001331.mca_tlf_numero_comprobado     %TYPE,
    mca_fax_numero_comprobado      a1001331.mca_fax_numero_comprobado     %TYPE,
    mca_email_comprobado           a1001331.mca_email_comprobado          %TYPE,
    mca_tlf_numero_com_comprobado  a1001331.mca_tlf_numero_com_comprobado %TYPE,
    mca_fax_numero_com_comprobado  a1001331.mca_fax_numero_com_comprobado %TYPE,
    mca_email_com_comprobado       a1001331.mca_email_com_comprobado      %TYPE,
    mca_tlf_movil_comprobado       a1001331.mca_tlf_movil_comprobado      %TYPE,
    mca_busca_comprobado           a1001331.mca_busca_comprobado          %TYPE,
    mca_txt_email_comprobado       a1001331.mca_txt_email_comprobado      %TYPE);
 --
  TYPE datos_fijos_tercero  IS RECORD
    (cod_cia                       a1001399.cod_cia              %TYPE,
    tip_docum                      a1001399.tip_docum            %TYPE,
    cod_docum                      a1001399.cod_docum            %TYPE,
    mca_fisico                     a1001399.mca_fisico           %TYPE,
    ape1_tercero                   a1001399.ape1_tercero         %TYPE,
    ape2_tercero                   a1001399.ape2_tercero         %TYPE,
    nom_tercero                    a1001399.nom_tercero          %TYPE,
    cod_usr                        a1001399.cod_usr              %TYPE,
    fec_actu                       a1001399.fec_actu             %TYPE,
    cod_soc_gl                     a1001399.cod_soc_gl           %TYPE,
    tlf_movil                      a1001399.tlf_movil            %TYPE,
    nom_alias                      a1001399.nom_alias            %TYPE,
    nom2_tercero                   a1001399.nom2_tercero         %TYPE,
    tip_sufijo_nombre              a1001399.tip_sufijo_nombre    %TYPE,
    tip_prefijo_nombre             a1001399.tip_prefijo_nombre   %TYPE);
 --     
 /* -------------------- DESCRIPCION --------------------
 || Definición de constantes
 */ -----------------------------------------------------
 --     
 /*-----------------------------------------------------------------
 || Terceros genéricos.
 */ ----------------------------------------------------------------
 --
 SUPERVISOR_GENERICO   CONSTANT a1001338.cod_supervisor%TYPE:= trn.COD_TERCERO_GEN;
 TRAMITADOR_GENERICO   CONSTANT a1001339.cod_tramitador%TYPE:= trn.COD_TERCERO_GEN;
 --
 /* -----------------------------------------------------
 || f_dev_...:
 || 
 || Devuelve atributos propios del contexto común a 
 || cualquier módulo
 */ -----------------------------------------------------
 --
  --
 /* -----------------------------------------------------
 || f_con_def_...:
 || 
 || Consultas a la definición de producto
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || f_con_ope_...:
 || 
 || Consultas de información relacioadas con la operación
 || que se está realizando
 */ -----------------------------------------------------
 --
 --
 /* -----------------------------------------------------
 || f_con_car_...:
 || 
 || Consultas a datos de la cartera
 */ -----------------------------------------------------
 --
 /* -----------------------------------------------------
 || f_con_asegurado:
 ||
 || Devuelve los datos de un asegurado. Comprueba si tiene datos personalizados para la poliza
 */ -----------------------------------------------------
 --
 FUNCTION f_con_datos_asegurado(p_cod_cia          a1001331.cod_cia          %TYPE,
                                p_tip_docum        a1001331.tip_docum        %TYPE,
                                p_cod_docum        a1001331.cod_docum        %TYPE,
                                p_num_poliza       a1000802.num_poliza       %TYPE,
                                p_num_spto         a1000802.num_spto         %TYPE,
                                p_num_riesgo       a1000802.num_riesgo       %TYPE,
                                p_num_secu_cta_tar a1002201.num_secu_cta_tar %TYPE)
           RETURN record_tercero;    
 --
 /* -----------------------------------------------------
 || f_con_datos_fijos_tercero:
 ||
 || Devuelve los datos fijos de un tercero
 */ -----------------------------------------------------
 --
 FUNCTION  f_con_datos_fijos_tercero(p_cod_cia      a1001399.cod_cia    %TYPE,
                                     p_tip_docum    a1001399.tip_docum  %TYPE,
                                     p_cod_docum    a1001399.cod_docum  %TYPE)
           RETURN datos_fijos_tercero;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_mca_fisico:
 ||
 || Devuelve el valor de la marca fisico del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_mca_fisico RETURN a1001399.mca_fisico%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_mca_sexo:
 ||
 || Devuelve el valor del sexo del tercero 
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_mca_sexo RETURN a1001331.mca_sexo%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_fec_nacimiento:
 ||
 || Devuelve la fecha de nacimiento del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_fec_nacimiento RETURN a1001331.fec_nacimiento%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_cod_postal:
 ||
 || Devuelve el valor del codigo postal del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_cod_postal RETURN a1001331.cod_postal%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_tip_docum:
 ||
 || Devuelve el valor del tipo de documento del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_tip_docum RETURN a1001331.tip_docum%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_cod_docum:
 ||
 || Devuelve el valor del codigo de documento del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_cod_docum RETURN a1001331.cod_docum%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_cod_prov:
 ||
 || Devuelve el valor del codigo de la provincia del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_cod_prov RETURN a1001331.cod_prov%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_cod_estado:
 ||
 || Devuelve el valor del codigo de la estado del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_cod_estado RETURN a1001331.cod_estado%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_cod_pais:
 ||
 || Devuelve el valor del codigo de pais del tercero
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_cod_pais RETURN a1001331.cod_pais%TYPE;
 --
 --
 /* -----------------------------------------------------
 || f_dev_ptd_fec_carnet_con:
 ||
 || Devuelve el valor de la fecha del carnet de conducir
 */ -----------------------------------------------------
 --
 FUNCTION f_dev_ptd_fec_carnet_con RETURN a1001331.fec_carnet_con%TYPE;
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
 /* -----------------------------------------------------
 || p_ini_globales_ptd_df:
 ||
 || Metodo que asigna a globales ptd información de los 
 || datos fijos de terceros
 */ -----------------------------------------------------
 --
 PROCEDURE p_ini_globales_ptd_df;
 --
 --
 /* -----------------------------------------------------
 || p_ini_globales_ptd_aseg:
 ||
 || Metodo que inicializa las globales ptd información de los 
 || datos del asegurado
 */ -----------------------------------------------------
 --
 PROCEDURE p_ini_globales_ptd_aseg;
 --
END dc_k_ptd_thp;
/
