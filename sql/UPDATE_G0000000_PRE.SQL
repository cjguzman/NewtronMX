BEGIN
   UPDATE tron2000.g0000000
      SET val_param = 'http://10.184.60.81:8080/pre/mapfre.srv.SVTronWeb'
    WHERE cod_param = 'URL_APPLICATION_SERVER';

   UPDATE tron2000.g0000000
      SET val_param = 'APLIS'
    WHERE cod_param = 'TXT_MSPOOL_DIR';

   UPDATE tron2000.g0000000
      SET val_param = 'APLIS'
    WHERE cod_param = 'TXT_MSPOOL_DIR_REAL';

   UPDATE tron2000.g0000000
      SET val_param = 'APSQL'
    WHERE cod_param = 'TXT_SQL_DIR';

   UPDATE tron2000.g0000000
      SET val_param = 'APSQL'
    WHERE cod_param = 'TXT_SQL_DIR_REAL';

   COMMIT;
END;
/
