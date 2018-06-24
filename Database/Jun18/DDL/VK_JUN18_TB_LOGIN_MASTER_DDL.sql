CREATE TABLE tb_login_master
  (
    pk_tb_login_master VARCHAR2(20) PRIMARY KEY,
    user_id            VARCHAR2(20),
    password           VARCHAR(50),
    created_on         TIMESTAMP,
    modified_on        TIMESTAMP,
    modified_by        TIMESTAMP
  );
DESC tb_login_master ALTER TABLE tb_login_master MODIFY pk_tb_login_master NOT NULL NOVALIDATE;
