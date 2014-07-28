-- &1 - SCHEMA_NAME
-- &2 - SCHEMA_PASS
SET ESCAPE '\'
CREATE TABLESPACE &1 DATAFILE '/u01/app/oracle/oradata/&1\.dbf' SIZE 100M AUTOEXTEND on NEXT 10M MAXSIZE UNLIMITED;
CREATE USER &1 IDENTIFIED BY &2 DEFAULT TABLESPACE &1;
GRANT CONNECT,RESOURCE TO &1;