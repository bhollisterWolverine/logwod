INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 1, 'testuser01', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'msinclair@healthesystems.com', 'Mark', 'Sinclair', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 1, 'ACCOUNT MGMT', 'Account Management', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Role Manager';

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 2, 'RULES_MGR', 'Account Management', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Rules Manager';

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 3, 'INVOICE_MGR', 'Invoice Management', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Invoice Manager';

-- Users def starts here

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 1, 1, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 2, 1, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 3, 1, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

-- SOT Users:

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 2, 'bhollister', '3f9038664b9f76795f732de56b995884fc8e136b', 'msinclair@healthesystems.com', 'Mark', 'Sinclair', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 4, 2, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 5, 2, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 6, 2, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 3, 'sbourges', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'msinclair@healthesystems.com', 'Stephan', 'Bourges', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 7, 3, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'sbourges', '2010-11-16 10:35:53.127', 'sbourges', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 8, 3, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'sbourges', '2010-11-16 10:35:53.127', 'sbourges', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 9, 3, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'sbourges', '2010-11-16 10:35:53.127', 'sbourges', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 4, 'snelson', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'snelson@healthesystems.com', 'Scott', 'Nelson', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 10, 4, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'snelson', '2010-11-16 10:35:53.127', 'snelson', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 11, 4, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'snelson', '2010-11-16 10:35:53.127', 'snelson', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 12, 4, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'snelson', '2010-11-16 10:35:53.127', 'snelson', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 5, 'hcherukuru', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'hcherukuru@healthesystems.com', 'Harsha', 'Cherukuru', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 13, 5, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 14, 5, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 15, 5, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 6, 'hfreeman', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'hfreeman@healthesystems.com', 'Holly', 'Freeman', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 16, 6, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'hfreeman', '2010-11-16 10:35:53.127', 'hfreeman', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 17, 6, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'hfreeman', '2010-11-16 10:35:53.127', 'hfreeman', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 18, 6, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'hfreeman', '2010-11-16 10:35:53.127', 'hfreeman', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 7, 'rribble', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'rribble@healthesystems.com', 'Ray', 'Ribble', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 19, 7, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 20, 7, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 21, 7, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 8, 'anavarro', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'msinclair@healthesystems.com', 'Andres', 'Navarro', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 22, 8, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'anavarro', '2010-11-16 10:35:53.127', 'anavarro', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 23, 8, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'anavarro', '2010-11-16 10:35:53.127', 'anavarro', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 24, 8, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'anavarro', '2010-11-16 10:35:53.127', 'anavarro', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 9, 'reanes', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'reanes@healthesystems.com', 'Robert', 'Eanes', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 25, 9, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'reanes', '2010-11-16 10:35:53.127', 'reanes', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 26, 9, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'reanes', '2010-11-16 10:35:53.127', 'reanes', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 27, 9, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'reanes', '2010-11-16 10:35:53.127', 'reanes', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 10, 'aberry', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'aberrys@healthesystems.com', 'Angus', 'Berry', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 28, 10, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'aberry', '2010-11-16 10:35:53.127', 'aberry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 29, 10, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'aberry', '2010-11-16 10:35:53.127', 'aberry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 30, 10, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'aberry', '2010-11-16 10:35:53.127', 'aberry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 11, 'bribeiro', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'bribeiro@healthesystems.com', 'Bruno', 'Ribeiro', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 31, 11, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'bribeiro', '2010-11-16 10:35:53.127', 'bribeiro', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 32, 11, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'bribeiro', '2010-11-16 10:35:53.127', 'bribeiro', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 33, 11, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'bribeiro', '2010-11-16 10:35:53.127', 'bribeiro', '2010-11-16 10:35:53.127', 'User Manager';

-- standard automation user you would find in INT environments
INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 12, 'tst_qaa_svc01', '0a06f72a10a4a572d4e22a951dc1859083e87de5', 'qaqtp01@healthesystems.com', 'Automation', 'Tester', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 34, 12, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'tst_qaa_svc01', '2010-11-16 10:35:53.127', 'tst_qaa_svc01', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 35, 12, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'tst_qaa_svc01', '2010-11-16 10:35:53.127', 'tst_qaa_svc01', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 36, 12, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'tst_qaa_svc01', '2010-11-16 10:35:53.127', 'tst_qaa_svc01', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 13, 'asaluja', '0a06f72a10a4a572d4e22a951dc1859083e87de5', 'qaqtp01@healthesystems.com', 'Automation', 'Tester', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 37, 13, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'asaluja', '2010-11-16 10:35:53.127', 'asaluja', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 38, 13, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'asaluja', '2010-11-16 10:35:53.127', 'asaluja', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 39, 13, 3, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'asaluja', '2010-11-16 10:35:53.127', 'asaluja', '2010-11-16 10:35:53.127', 'User Manager';
