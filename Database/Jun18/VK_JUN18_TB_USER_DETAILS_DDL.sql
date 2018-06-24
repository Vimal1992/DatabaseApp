CREATE TABLE tb_user_details
  (
    pk_tb_user_details VARCHAR(20) PRIMARY KEY,
    first_name         VARCHAR(20),
    last_name          VARCHAR(20),
    contact_no         NUMBER(10),
    country_code       NUMBER(2),
    fk_tb_login_master VARCHAR(20) REFERENCES tb_login_master(pk_tb_login_master)
  ); 
