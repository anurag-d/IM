1.infacmd. Use infacmd to access the Informatica application services.
2.infasetup. Use infasetup to complete installation tasks such as defining a node or a domain.
3.pmcmd. Use pmcmd to manage workflows. You can start, stop, schedule, and monitor workflows using pmcmd.
4.pmrep. Use pmrep to complete repository administration tasks such as listing repository objects, creating and editing groups, and restoring and deleting repositories.

https://www.youtube.com/watch?v=6dryZkFUhQw
https://lobianijs.com/lobiadmin/version/1.0/ajax/#dashboard

1. Running Jobs / Suspended Jobs / Failed Jobs
2. Failed Jobs - Email Trigger setup and function
3. pmrep - export folders / 



CREATE TABLE `im_groups` (
  `id` char(36) NOT NULL,
  `group_name` varchar(60) NOT NULL,
  `isadmin` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` char(36) NOT NULL,
  `isdeleted` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user groups'



CREATE TABLE `im_users` (
  `id` char(36) NOT NULL,
  `group_id` char(36) NOT NULL,
  `username` varchar(60) NOT NULL,
  `indentity` varchar(8) NOT NULL,
  `f_name` varchar(256) NOT NULL,
  `l_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` char(36) NOT NULL,
  `isdeleted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user'

insert into im_users values (uuid(),'712bf216-f302-11e7-970e-80fa5b4095b4','Administrator','admin123','Administrator','Administrator','anurag.deshmukh@hotmail.com',''
 sysdate(),uuid(),sysdate(),uuid(),0);