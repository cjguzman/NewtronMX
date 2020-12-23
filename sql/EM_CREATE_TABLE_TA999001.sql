DECLARE
   CURSOR c_cursor 
   IS
      SELECT COUNT (1)
        FROM all_tab_columns t
       WHERE t.table_name  = 'TA999001';
   --
   l_count NUMBER;
   --
   -- Definicion del Create Table.
   l_create_table VARCHAR2(6000) := 'CREATE TABLE TRP_MX_DL.TA999001                                   '||
                                    '  (                                                     '||
                                    '    COD_CIA              NUMBER(2)    NOT NULL ENABLE , '||
                                    '    COD_PAIS             VARCHAR2(3)  NOT NULL ENABLE , '||
                                    '    COD_ESTADO           NUMBER(3)    NOT NULL ENABLE , '||
                                    '    COD_PROV             NUMBER(6)    NOT NULL ENABLE , '||
                                    '    COD_POSTAL           VARCHAR2(15) NOT NULL ENABLE , '||
                                    '    TIP_POB_CH_RIESGO    VARCHAR2(1)  NOT NULL ENABLE , '||
                                    '    FEC_VALIDEZ          DATE         NOT NULL ENABLE , '||
                                    '    MCA_INH              VARCHAR2(1)  NOT NULL ENABLE , '||
                                    '    COD_USR              VARCHAR2(8)  NOT NULL ENABLE , '||												
                                    '    FEC_ACTU             DATE         NOT NULL ENABLE)  ';
   --
	-- Definicion de la PK.
    l_alter_pk     VARCHAR2(2000) := 'ALTER TABLE TRP_MX_DL.TA999001 ADD CONSTRAINT PK_TA999001 PRIMARY KEY  '||
                                     '(                                                            '||
                                     'COD_CIA,                                                     '||
                                     'COD_PAIS,                                                    '||
                                     'COD_ESTADO,                                                  '||
                                     'COD_PROV,                                                    '||
                                     'COD_POSTAL,                                                  '||
                                     'FEC_VALIDEZ                                                  '||
                                     ')                                                            ' ;
   --
	-- Definicion de comentarios de columnas de tabla.
   l_comentario_tabla   VARCHAR2(2000) :='  COMMENT ON TABLE  TRP_MX_DL.TA999001                   IS ''POBLACION POR PROVINCIA'''                  ;
   l_comentario_col_1   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.COD_CIA           IS ''COMPANIA'''                                 ;
   l_comentario_col_2   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.COD_PAIS          IS ''PRIMER NIVEL DE LA ESTRUCTURA GEOGRAFICA''' ;
   l_comentario_col_3   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.COD_ESTADO        IS ''SEGUNDO NIVEL DE LA ESTRUCTURA GEOGRAFICA''';
   l_comentario_col_4   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.COD_PROV          IS ''TERCER NIVEL DE LA ESTRUCTURA GEOGRAFICA''' ;
   l_comentario_col_5   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.COD_POSTAL        IS ''CODIGO POSTAL'''                            ;
   l_comentario_col_6   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.TIP_POB_CH_RIESGO IS ''TIPO DE POBLACION'''                        ;
   l_comentario_col_7   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.FEC_VALIDEZ       IS ''FECHA DE VALIDEZ'''                         ;
   l_comentario_col_8   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.MCA_INH           IS ''MARCA DE CAMPO INHABILITADO'''              ;
   l_comentario_col_9   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.COD_USR           IS ''USUARIO QUE ACTUALIZO LA FILA'''            ;
   l_comentario_col_10  VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999001.FEC_ACTU          IS ''FECHA DE ACTUALIZACION DE LA FILA'''        ;
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
     EXECUTE IMMEDIATE l_create_table     ;
     EXECUTE IMMEDIATE l_alter_pk         ;
     EXECUTE IMMEDIATE l_comentario_tabla ;
     EXECUTE IMMEDIATE l_comentario_col_1 ;
     EXECUTE IMMEDIATE l_comentario_col_2 ;
     EXECUTE IMMEDIATE l_comentario_col_3 ;
     EXECUTE IMMEDIATE l_comentario_col_4 ;
     EXECUTE IMMEDIATE l_comentario_col_5 ;
     EXECUTE IMMEDIATE l_comentario_col_6 ;
     EXECUTE IMMEDIATE l_comentario_col_7 ;
     EXECUTE IMMEDIATE l_comentario_col_8 ;
     EXECUTE IMMEDIATE l_comentario_col_9 ;
     EXECUTE IMMEDIATE l_comentario_col_10;
     --
   END IF;
   --
END;
/
