CREATE OR REPLACE PACKAGE TRP_MX_DL.EM_K_999_ATR AS
 --
 /* -------------------------- DESCRIPCION -----------------------------------
 || Validacion de atibutos del ramo 999
 ||
 */ --------------------------------------------------------------------------
 --
 /* -------------------------- VERSION = 1.13 --------------------------------*/
 --
 /* -------------------------- MODIFICACIONES --------------------------------
 || 2020/12/01 - jaluis2 - v 1.13
 || Se crea procedimiento p_val_cod_producto:
 || Procedimiento que valida el dato variable cod_producto.
 || --
 || hsolive
 || Se crea el procedimiento p_val_cod_modalidad
 || Procedimiento que se usa para validar el dato variable modalidad
 */ --------------------------------------------------------------------------
 --
 /* --------------------------------------------------------------------------
 || Definicion de constantes globales
 */ -------------------------------------------------------------------------- 
 g_k_cod_sexo_masculino         CONSTANT VARCHAR2(1) := 'M'   ;   
 g_k_cod_sexo_femenino          CONSTANT VARCHAR2(1) := 'F'   ;  
 g_k_cod_sexo_indeterminado     CONSTANT VARCHAR2(1) := 'I'   ;
 g_k_cod_persona_fisica         CONSTANT VARCHAR2(1) := 'F'   ;
 g_k_cod_persona_moral          CONSTANT VARCHAR2(1) := 'M'   ;  
 g_k_cod_persona_indefinido     CONSTANT VARCHAR2(1) := 'I'   ;  
 g_k_txt_nulo                   CONSTANT VARCHAR2(4) := 'NULO';
 g_k_chr_nulo                   CONSTANT VARCHAR2(1) := 'X'   ;   
 --
 COD_PRODUCTO_GEN               CONSTANT ta999501.cod_producto          %TYPE := 999   ;
 COD_AMB_CIRCULACION_GEN        CONSTANT ta999501.cod_amb_circulacion   %TYPE := 999   ;
 COD_TIP_INDEM_GEN              CONSTANT ta999501.cod_tip_indem         %TYPE := 999   ;
 COD_SECTOR_GEN                 CONSTANT ta999501.cod_sector            %TYPE := 9999  ;
 --
 /* --------------------------------------------------------------------------
 || p_val_cod_mapfre:
 || Procedimiento que valida que el codigo mapfre sea a 12 posiciones 
 || y exista en los catalogos internos de mapfre una vez que sea ingresada.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_mapfre;
 --
 /* --------------------------------------------------------------------------
 || p_pre_cod_marca:
 || Procedimiento donde se obtiene el codigo marca
 || del codigo mapfre la cual se asigna al campo codigo marca.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_pre_cod_marca;
 --
 /* --------------------------------------------------------------------------
 || p_pre_cod_modelo:
 || Procedimiento donde se obtiene el codigo modelo
 || del codigo mapfre la cual se asigna al campo codigo modelo.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_pre_cod_modelo;
 /* --------------------------------------------------------------------------
 || p_pre_cod_sub_modelo:
 || Procedimiento donde se obtiene el codigo sub modelo
 || del codigo la cual se asigna al campo codigo sub modelo.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_pre_cod_sub_modelo;
 --
 /* --------------------------------------------------------------------------
 || p_val_cod_marca:
 || Valida que exista el codigo de la marca del vehiculo 
 || en el catalogo y recupera su descripcion.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_marca;
  --
 /* --------------------------------------------------------------------------
 || p_val_cod_modelo:
 || Valida que exista el codigo de modelo del vehiculo
 || en el catalogo y recupera su descripcion.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_modelo;
 --
 /* --------------------------------------------------------------------------
 || p_val_cod_sub_modelo:
 || Valida que exista el codigo de submodelo del vehiculo
 || en el catalogo y recupera su descripcion.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_sub_modelo;
 --
 /* --------------------------------------------------------------------------
 || p_pre_num_factura:
 || Comprueba que el tipo de indemnizacion sea diferente de (Valor Factura).
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_pre_num_factura;
 --
 /* --------------------------------------------------------------------------
 || p_val_num_factura:
 || Comprueba que el tipo de indemnizacion sea igual (Valor Factura).
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_num_factura;
 --
 /* --------------------------------------------------------------------------
 || p_val_num_serie:
 || Procedimiento donde se validara el campo Numero de serie
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_num_serie;
 --
 /* --------------------------------------------------------------------------
 || p_val_cod_amb_circulacion:
 || Procedimiento que valida que ambito de circulacion 
 || proporcionado sea correcto en funcion de ramo y  
 || codigo de producto
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_amb_circulacion;
 --
 /* --------------------------------------------------------------------------
 || p_pre_val_remolque:
 || Valida Si MCA_REMOLQUE trae una S, dejara campo val_remolque editable
 || si MCA_REMOLQUE trae una N, limpiara el campo val_remolque.
 */ --------------------------------------------------------------------------
 PROCEDURE p_pre_val_remolque;
  --
 /* -----------------------------------------------------
 || p_val_val_remolque:
 || Valida valor introducido en val_remolque 
 || emitiendo error si es menor o igual a cero.
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_val_remolque;
  --
 /* -----------------------------------------------------
 || p_val_mca_remolque:
 || Valida Si MCA_REMOLQUE es diferente de S o N, emitira mensaje de error y
 || no podra continuar.
 */ -----------------------------------------------------
 --
 PROCEDURE p_val_mca_remolque;
 -- 
 /* -------------------------------------------------------------------------
 || p_pre_des_remolque:
 || Valida que en caso de tener N la marca de remolque, se limpie la
 || informacion del campo descripcion del remolque.
 */ -------------------------------------------------------------------------
 --
 PROCEDURE p_pre_des_remolque;
 --
 /* --------------------------------------------------------------------------
 || p_pre_fol_solicitud:  
 || Valida si el campo asiga Numero de Folio (dato variable FOL_SOLICITUD )
 || es nulo entonces colocara un 0 en el campo
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_pre_fol_solicitud;
 --
 /* -------------------------------------------------------------------------
 || p_val_mca_salvamento:
 || Valida que MCA_SALVAMENTO sean diferentes de S o N y si lo son manda un
 || mensaje de error.
 */ -------------------------------------------------------------------------
 --
 PROCEDURE p_val_mca_salvamento;
 --
 /* -------------------------------------------------------------------------
 || p_pre_fec_factura:
 || Comprueba tipo de indemnizacion sea diferente de (Valor Factura). 
 */ -------------------------------------------------------------------------
 -- 
 PROCEDURE p_pre_fec_factura;
 --
 /* -----------------------------------------------------
 || p_val_cod_tip_vehi
 ||
 || Procedimiento que valida que tipo de vehiculo 
 || proporcionado sea correcto en funcion del   
 || codigo de producto y ambito de circulacion
 */ -----------------------------------------------------
 PROCEDURE p_val_cod_tip_vehi;
 --
 /* -----------------------------------------------------
 || p_val_cod_uso_alt
 ||
 || Procedimiento que valida que el codigo de uso alterno 
 || exista, este vigente, y sea distinto y con nivel de 
 || riesgo menor o igual al codigo de uso principal
 */ -----------------------------------------------------
 PROCEDURE p_val_cod_uso_alt;
 --
 /* -----------------------------------------------------
 || p_val_cod_uso_vehi
 ||
 || Procedimiento que verifica que uso de vehiculo 
 || ingresado sea un uso de vehiculo que exista y 
 || que este vigente en la tabla de configuracion de usos 
 || de vehiculo por producto.
 */ -----------------------------------------------------
 PROCEDURE p_val_cod_uso_vehi;
 --
 /* -------------------------------------------------------
 || p_val_anio_sub_modelo:
 || Valida que exista el anio sub modelo, y que si es a 
 || valor factura solo permita ingresar el anio actual o anio
 || actual mas uno
 */ -------------------------------------------------------
 --
 PROCEDURE p_val_anio_sub_modelo;
 --
 /* -------------------------------------------------------
 || p_pre_val_factura:
 || Sugiere el valor del sub modelo en el valor factura
 */ -------------------------------------------------------
 --
 PROCEDURE p_pre_val_factura;
 --
 /* -------------------------------------------------------
 || p_val_val_factura:  
 || Asigna al valor de factura, el valor del submodelo
 */ -------------------------------------------------------
 --
 PROCEDURE p_val_val_factura;
  --
 /* -----------------------------------------------------
 || p_pre_tip_per_ch_riesgo
 || Procedimiento donde se define el tipo de persona
 || del conductor habitual de mayor riesgo.  En la 
 || variable ptd_val_04 se recupera una marca que indique 
 || si en un suplemento ha cambiado el valor de DV de 
 || tip_docum o cod_docum_de conductor de mayor riesgo.
 */ -----------------------------------------------------------
 --
 PROCEDURE p_pre_tip_per_ch_riesgo;
 --
 /* -----------------------------------------------------
 || p_pre_sexo_ch_riesgo:
 || Asigna valor al dato variable sexo_ch_riesgo. En la 
 || variable ptd_val_04 se recupera una marca que indique 
 || si en un suplemento ha cambiado el valor de DV de 
 || tip_docum o cod_docum_de conductor de mayor riesgo.
 */ -----------------------------------------------------
 --
 PROCEDURE p_pre_sexo_ch_riesgo;
 --
 /* -----------------------------------------------------------
 || p_pre_num_puertas_vehi
 || Obtener del numero de puertas del vehiculo.
 */ -----------------------------------------------------------
 --
 PROCEDURE p_pre_num_puertas_vehi;                                   
 --
 /* -----------------------------------------------------------
 || p_pre_tip_docum_ch_riesgo :
 || asigna valor al dato variable tip_docum_ch_riesgo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_pre_tip_docum_ch_riesgo; 
 --
 /* -----------------------------------------------------------
 || p_pre_cod_docum_ch_riesgo :
 || asigna valor al dato variable cod_docum_ch_riesgo
 */ -----------------------------------------------------------
 --
 PROCEDURE p_pre_cod_docum_ch_riesgo;
 -- 
 /* --------------------------------------------------------------------------
 || p_pre_cod_pob_ch_riesgo:
 || Procedimiento que obtiene el codigo de poblacion del conductor de 
 || mayor riesgo (COD_POB_CH_RIESGO).
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_pre_cod_pob_ch_riesgo;
 -- 
 /* --------------------------------------------------------------------------
 || p_val_cod_producto:
 || Procedimiento que valida el dato variable cod_producto.
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_producto;
 --
 /* --------------------------------------------------------------------------
 || p_val_cod_modalidad:
 || Procedimiento que valida el dato variable codigo de modalidad (cod_modalidad).
 */ --------------------------------------------------------------------------
 --
 PROCEDURE p_val_cod_modalidad;
 --  
END em_k_999_atr;
/
