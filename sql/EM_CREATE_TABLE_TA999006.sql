DECLARE
   CURSOR c_cursor 
   IS
      SELECT COUNT (1)
        FROM all_tab_columns t
       WHERE t.table_name  = 'TRP_MX_DL.TA999006';
   --
   l_count NUMBER;
   --
   -- Definicion del Create Table.
   l_create_table VARCHAR2(6000) := 'CREATE TABLE TRP_MX_DL.TA999006                                       '||
                                    '  (                                                         '||
                                    '    COD_CIA                  NUMBER(2)    NOT NULL ENABLE , '||
                                    '    COD_SECTOR               NUMBER(4)    NOT NULL ENABLE , '||
                                    '    COD_RAMO                 NUMBER(3)    NOT NULL ENABLE , '||
                                    '    NUM_POLIZA_GRUPO         VARCHAR2(13) NOT NULL ENABLE , '||
                                    '    NUM_CONTRATO             NUMBER(5)    NOT NULL ENABLE , '||
                                    '    NUM_SUBCONTRATO          NUMBER(5)    NOT NULL ENABLE , '||
                                    '    COD_CANAL3               VARCHAR2(4)  NOT NULL ENABLE , '||
                                    '    COD_PRODUCTO             NUMBER(3)    NOT NULL ENABLE , '||
                                    '    COD_AMB_CIRCULACION      NUMBER(3)    NOT NULL ENABLE , '||
                                    '    COD_TIP_VEHI             NUMBER(3)    NOT NULL ENABLE , '||
                                    '    FEC_VALIDEZ              DATE         NOT NULL ENABLE , '||
                                    '    MCA_INH                  VARCHAR2(1)  NOT NULL ENABLE , '||
                                    '    COD_USR                  VARCHAR2(8)  NOT NULL ENABLE , '||
                                    '    FEC_ACTU                 DATE         NOT NULL ENABLE)  ';
   --
    -- Definicion de la PK.
    l_alter_pk     VARCHAR2(2000) := 'ALTER TABLE TRP_MX_DL.TA999006 ADD CONSTRAINT PK_TA999006 PRIMARY KEY  '||
                                     '(                                                            '||
                                     'COD_CIA,                                                     '||
                                     'COD_SECTOR,                                                  '||
                                     'COD_RAMO,                                                    '||
                                     'NUM_POLIZA_GRUPO,                                            '||
                                     'NUM_CONTRATO,                                                '||
                                     'NUM_SUBCONTRATO,                                             '||
                                     'COD_CANAL3,                                                  '||
                                     'COD_PRODUCTO,                                                '||
                                     'COD_AMB_CIRCULACION,                                         '||
                                     'COD_TIP_VEHI,                                                '||
                                     'FEC_VALIDEZ                                                  '||
                                     ')                                                            ' ;
   --
   -- Definicion de comentarios de columnas de tabla.
   l_comentario_tabla   VARCHAR2(2000) :='  COMMENT ON TABLE  TRP_MX_DL.TA999006                       IS ''TIPOS DE VEHICULO POR PRODUCTO Y AMBITO DE CIRCULACION''';
   l_comentario_col_1   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_CIA               IS ''COMPANIA'''                                              ;
   l_comentario_col_2   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_SECTOR            IS ''SECTOR'''                                                ;
   l_comentario_col_3   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_RAMO              IS ''RAMO'''                                                  ;
   l_comentario_col_4   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.NUM_POLIZA_GRUPO      IS ''NUMERO DE POLIZA GRUPO'''                                ;
   l_comentario_col_5   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.NUM_CONTRATO          IS ''NUMERO DE CONTRATO'''                                    ;
   l_comentario_col_6   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.NUM_SUBCONTRATO       IS ''NUMERO DE SUB CONTRATO'''                                ;
   l_comentario_col_7   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_CANAL3            IS ''NIVEL 3 CANAL DE COMERCIALIZACION'''                     ;
   l_comentario_col_8   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_PRODUCTO          IS ''CODIGO DE PRODUCTO'''                                    ;
   l_comentario_col_9   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_AMB_CIRCULACION   IS ''AMBITO DE CIRCULACION'''                                 ;
   l_comentario_col_10  VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_TIP_VEHI          IS ''TIPO DE VEHICULO'''                                      ;
   l_comentario_col_11  VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.FEC_VALIDEZ           IS ''FECHA DE VALIDEZ'''                                      ;
   l_comentario_col_12  VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.MCA_INH               IS ''MARCA DE CAMPO INHABILITADO'''                           ;
   l_comentario_col_13  VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.COD_USR               IS ''USUARIO QUE ACTUALIZO LA FILA'''                         ;
   l_comentario_col_14  VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999006.FEC_ACTU              IS ''FECHA DE ACTUALIZACIÓN DE LA FILA'''                     ;
   --
BEGIN      
   --
   OPEN  c_cursor;
   --
   FETCH c_cursor INTO l_count;
   --
   CLOSE c_cursor;
   --
   -- En el caso que la tabla no exista se crea, junto con su pk y sus comentarios de columna.
   IF l_count = 0
   THEN
     --
     EXECUTE IMMEDIATE l_create_table      ;
     EXECUTE IMMEDIATE l_alter_pk          ;
     EXECUTE IMMEDIATE l_comentario_tabla  ;
     EXECUTE IMMEDIATE l_comentario_col_1  ;
     EXECUTE IMMEDIATE l_comentario_col_2  ;
     EXECUTE IMMEDIATE l_comentario_col_3  ;
     EXECUTE IMMEDIATE l_comentario_col_4  ;
     EXECUTE IMMEDIATE l_comentario_col_5  ;
     EXECUTE IMMEDIATE l_comentario_col_6  ;
     EXECUTE IMMEDIATE l_comentario_col_7  ;
     EXECUTE IMMEDIATE l_comentario_col_8  ;
     EXECUTE IMMEDIATE l_comentario_col_9  ;
     EXECUTE IMMEDIATE l_comentario_col_10 ;
     EXECUTE IMMEDIATE l_comentario_col_11 ;
     EXECUTE IMMEDIATE l_comentario_col_12 ;
     EXECUTE IMMEDIATE l_comentario_col_13 ;
     EXECUTE IMMEDIATE l_comentario_col_14 ;
     --
   END IF;
   --
END;
/
