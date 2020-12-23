DECLARE
   CURSOR c_cursor 
   IS
      SELECT COUNT (1)
        FROM all_tab_columns t
       WHERE t.table_name  = 'TRP_MX_DL.TA999002';
   --
   l_count NUMBER;
   --
   -- Definicion del Create Table.
   l_create_table VARCHAR2(6000) := 'CREATE TABLE TRP_MX_DL.TA999002                                   '||
                                    '  (                                                     '||
                                    '    COD_CIA              NUMBER(2)    NOT NULL ENABLE , '||
                                    '    COD_PRODUCTO         NUMBER(3)    NOT NULL ENABLE , '||                                    
                                    '    COD_REG_CNSF         VARCHAR2(22) NOT NULL ENABLE , '||
                                    '    FEC_CNSF             DATE         NOT NULL ENABLE , '||
                                    '    COD_REG_CONDUSEF     VARCHAR2(22) NOT NULL ENABLE , '||
                                    '    FEC_VALIDEZ          DATE         NOT NULL ENABLE , '||
                                    '    MCA_INH              VARCHAR2(1)  NOT NULL ENABLE , '||
                                    '    COD_USR              VARCHAR2(8)  NOT NULL ENABLE , '||                        
                                    '    FEC_ACTU             DATE         NOT NULL ENABLE) ';
   --
	-- Definicion de la PK.
    l_alter_pk     VARCHAR2(2000) := 'ALTER TABLE TRP_MX_DL.TA999002 ADD CONSTRAINT PK_TA999002 PRIMARY KEY  '||
                                     '(                                                            '||
                                     'COD_CIA,                                                     '||
                                     'COD_PRODUCTO,                                                '||
                                     'FEC_VALIDEZ                                                  '||
                                     ')                                                            ' ;
   --
	-- Definicion de comentarios de columnas de tabla.
   l_comentario_tabla   VARCHAR2(2000) :='  COMMENT ON TABLE  TRP_MX_DL.TA999002                   IS ''CONDICIONES DEL PRODUCTO'''         ;
   l_comentario_col_1   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.COD_CIA           IS ''COMPANIA'''                         ;
   l_comentario_col_2   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.COD_PRODUCTO      IS ''CODIGO DE PRODUCTO'''               ;
   l_comentario_col_3   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.COD_REG_CNSF      IS ''CODIGO DE REGISTRO CNSF'''          ;
   l_comentario_col_4   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.FEC_CNSF          IS ''FECHA REGISTRO CNSF'''              ;
   l_comentario_col_5   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.COD_REG_CONDUSEF  IS ''CODIGO DE REGISTRO CONDUSEF'''      ;
   l_comentario_col_6   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.FEC_VALIDEZ       IS ''FECHA DE VALIDEZ'''                 ;
   l_comentario_col_7   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.MCA_INH           IS ''MARCA DE CAMPO INHABILITADO'''      ;
   l_comentario_col_8   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.COD_USR           IS ''USUARIO QUE ACTUALIZO LA FILA'''    ;
   l_comentario_col_9   VARCHAR2(2000) :='  COMMENT ON COLUMN TRP_MX_DL.TA999002.FEC_ACTU          IS ''FECHA DE ACTUALIZACIÓN DE LA FILA''';

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
     --
   END IF;
   --
END;
/
