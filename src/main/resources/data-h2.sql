<<<<<<< HEAD
INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 1, 'testuser01', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'msinclair@healthesystems.com', 'Mark', 'Sinclair', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 1, 'ACCOUNT MGMT', 'Account Management', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Role Manager';

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 2, 'RULES_MGR', 'Account Management', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Rules Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 1, 1, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 22, 'sbourges', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'msinclair@healthesystems.com', 'Stephan', 'Bourges', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 2, 22, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'sbourges', '2010-11-16 10:35:53.127', 'sbourges', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 3, 22, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'sbourges', '2010-11-16 10:35:53.127', 'sbourges', '2010-11-16 10:35:53.127', 'User Manager';
=======
INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 1, 'testuser01', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'msinclair@healthesystems.com', 'Mark', 'Sinclair', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 1, 'ACCOUNT MGMT', 'Account Management', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Role Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 1, 1, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO users(User_ID, user_name, user_pass, email, first_name, last_name, access_denied, touched, do_nothing, last_login_date, login_count, failed_logins, customer_id, roster_access, resolution_access, superuser_access, email_sent, epaq_access, image_access, elig_access, report_access, mail_order_access, manager_access, dme_access, ex02_access, ipe_access, user_manager_access, modified_by, modified_date, phone, cae_access, region, rxcard_access, eob_access, accounting_access, customer_user_number, job_title, supervisor_first_name, supervisor_last_name, supervisor_email, inactive_date, sensitive_flag, appeal_assignment_access, abm_catalog_access, abm_read_only_access, version_ind, reset, bvd_special_access, super_pharmacist_access, ABM_Access, User_Created, Date_Time_Created, Form_ID, Recon_Access, Related_User_ID, Supervisor_Phone, Welcome_Email_Sent_Flag, Update_Claim_Data_Flag, Send_Welcome_Email_Flag, ABM_Referral_Read_Only_Access_Flag, RMD_Access_Flag, Customer_User_Group_ID)
SELECT 2, 'bhollister', '3f9038664b9f76795f732de56b995884fc8e136b', 'msinclair@healthesystems.com', 'Mark', 'Sinclair', '', '', '', '2012-09-17 14:13:28.900', 0, 0, '', 'Y', 'Y', 'Y', NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', 'TAMPA\ereardo', '2011-02-28 16:40:23.850', '7777777777', 'Y', NULL, '', '', '', NULL, NULL, '', '', '', NULL, '', '', '', '', '0', '', '', '', 'Y', 'Post Script', '2011-01-18 11:38:19.003', 'Post Script', '', NULL, '', '', '', '', '', '', NULL;

INSERT INTO Role(Role_ID, Role_Name, Role_Desc, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 2, 'RULES_MGR', 'Rules Manager', '2010-10-26 00:00:00.000', '9999-12-31 00:00:00.000', 'fcarringto', '2010-10-26 08:14:34.110', 'dferry', '2010-12-06 08:48:29.497', 'Role Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 2, 2, 2, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';

INSERT INTO User_Role(User_Role_ID, User_ID, Role_ID, Effective_Date, Termination_Date, User_Created, Date_Time_Created, User_Modified, Date_Time_Modified, Form_ID)
SELECT 3, 2, 1, '2010-11-16 10:35:53.127', '9999-01-01 00:00:00.000', 'dferry', '2010-11-16 10:35:53.127', 'dferry', '2010-11-16 10:35:53.127', 'User Manager';
>>>>>>> c1b96d225b5270f82f808bfdddc195c58a053bdf
