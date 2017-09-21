

CREATE TABLE IF NOT EXISTS Users(
	User_ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	user_name varchar(100) NOT NULL,
	user_pass varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	first_name varchar(50) NULL,
	last_name varchar(50) NULL,
	access_denied char(1) NOT NULL,
	touched char(1) NOT NULL,
	do_nothing char(1) NULL,
	last_login_date datetime NULL,
	login_count int NOT NULL,
	failed_logins int NOT NULL,
	customer_id varchar(50) NOT NULL,
	roster_access char(1) NOT NULL,
	resolution_access char(1) NOT NULL,
	superuser_access char(1) NOT NULL,
	email_sent datetime NULL,
	epaq_access char(1) NOT NULL,
	image_access char(1) NOT NULL,
	elig_access char(1) NOT NULL,
	report_access char(1) NOT NULL,
	mail_order_access char(1) NOT NULL,
	manager_access char(1) NOT NULL,
	dme_access char(1) NOT NULL,
	ex02_access char(1) NOT NULL,
	ipe_access char(1) NOT NULL,
	user_manager_access char(1) NOT NULL,
	modified_by varchar(100) NULL,
	modified_date datetime NULL,
	phone varchar(25) NULL,
	cae_access char(1) NULL,
	region char(120) NULL,
	rxcard_access char(1) NOT NULL,
	eob_access char(1) NULL,
	accounting_access char(1) NOT NULL,
	customer_user_number varchar(50) NULL,
	job_title varchar(30) NULL,
	supervisor_first_name varchar(50) NULL,
	supervisor_last_name varchar(50) NULL,
	supervisor_email varchar(100) NULL,
	inactive_date datetime NULL,
	sensitive_flag char(1) NOT NULL,
	appeal_assignment_access char(1) NOT NULL,
	abm_catalog_access char(1) NOT NULL,
	abm_read_only_access char(1) NOT NULL,
	version_ind char(1) NOT NULL,
	reset char(1) NULL,
	bvd_special_access char(1) NULL,
	super_pharmacist_access char(1) NOT NULL,
	ABM_Access char(1) NOT NULL,
	User_Created varchar(100) NOT NULL,
	Date_Time_Created datetime NOT NULL,
	Form_ID VARCHAR(255) NOT NULL,
	Recon_Access char(1) NOT NULL,
	Related_User_ID int NULL,
	Supervisor_Phone varchar(25) NULL,
	Welcome_Email_Sent_Flag char(1) NOT NULL,
	Update_Claim_Data_Flag char(1) NOT NULL,
	Send_Welcome_Email_Flag char(1) NOT NULL,
	ABM_Referral_Read_Only_Access_Flag char(1) NOT NULL,
	RMD_Access_Flag char(1) NOT NULL,
	Customer_User_Group_ID smallint NULL,
	User_Status varchar(50) );
	
	
CREATE TABLE Role(
	Role_ID int IDENTITY(1,1)  NOT NULL,
	Role_Name varchar(50) NOT NULL,
	Role_Desc varchar(255) NOT NULL,
	Effective_Date datetime NOT NULL,
	Termination_Date datetime NOT NULL,
	User_Created varchar(100) NOT NULL,
	Date_Time_Created datetime NOT NULL,
	User_Modified varchar(100) NOT NULL,
	Date_Time_Modified datetime NOT NULL,
	Form_ID varchar(128) NOT NULL,
 CONSTRAINT PK_Role PRIMARY KEY  
(
	Role_ID ASC
));


CREATE TABLE User_Role(
	User_Role_ID int IDENTITY(1,1)  NOT NULL,
	User_ID int NOT NULL,
	Role_ID int NOT NULL,
	Effective_Date datetime NOT NULL,
	Termination_Date datetime NOT NULL,
	User_Created varchar(100) NOT NULL,
	Date_Time_Created datetime NOT NULL,
	User_Modified varchar(100) NOT NULL,
	Date_Time_Modified datetime NOT NULL,
	Form_ID varchar(128) NOT NULL,
 CONSTRAINT PK_User_Role PRIMARY KEY  
(
	User_Role_ID ASC
));


CREATE TABLE User_Category(
	User_Category_ID int IDENTITY(1,1) NOT NULL,
	Customer_ID varchar(50) NOT NULL,
	User_Category_Code varchar(50) NOT NULL,
	User_Category_Description varchar(850) NOT NULL,
	Available_Row_Flag varchar(1) NULL,
	Active_Flag varchar(1) NOT NULL,
	Effective_Date datetime NOT NULL,
	Termination_Date datetime NOT NULL,
	User_Created varchar(100) NOT NULL,
	Date_Time_Created datetime NOT NULL,
	User_Modified varchar(100) NOT NULL,
	Date_Time_Modified datetime NOT NULL,
	Form_ID varchar(128) NOT NULL,
	InternalRowVersion timestamp NULL,
	Is_User_Manager_Hidden varchar(1) NOT NULL,
	CONSTRAINT PK_User_Category PRIMARY KEY  
(
	User_Category_ID ASC
));

CREATE TABLE Users_By_User_Category(
	Users_By_User_Category_ID int IDENTITY(1,1) NOT NULL,
	User_Category_ID int NOT NULL,
	User_ID int NOT NULL,
	User_Created varchar(100) NOT NULL,
	Date_Time_Created datetime NOT NULL,
	User_Modified varchar(100) NOT NULL,
	Date_Time_Modified datetime NOT NULL,
	Form_ID varchar(128) NOT NULL,
	InternalRowVersion timestamp NULL,
 CONSTRAINT PK_Users_By_User_Category PRIMARY KEY  
(
	Users_By_User_Category_ID ASC
));