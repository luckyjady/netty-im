use centerim_avatar;

-- drop table callbacks;
-- CREATE TABLE `callbacks` (
--   `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
--   `sendtaskid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
--   `systemcode` varchar(100) NOT NULL DEFAULT '',
--   `systemtype` varchar(20) NOT NULL DEFAULT '',
--   `method` varchar(100) NOT NULL DEFAULT '',
--   `cancallagain` int(2) UNSIGNED NOT NULL DEFAULT 0,
--   `methodparams` json NULL,
--   `status` int(2) UNSIGNED NOT NULL DEFAULT 0,
--   `ctime` timestamp NOT NULL ,
--   `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table sendtasks;
CREATE TABLE `sendtasks` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `providerid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `providertype` varchar(50) NOT NULL DEFAULT '',
  `receiveuserid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `receiveusertype` varchar(50) NOT NULL DEFAULT '',
  `iscall` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `trytimes` int(200) UNSIGNED NOT NULL DEFAULT 0,
  `status` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `data` json NULL,
  `ctime` timestamp NOT NULL ,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table logininfos;
CREATE TABLE `logininfos` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `islogin` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `lastlogintime` timestamp NOT NULL ,
  `lastlogouttime` timestamp NOT NULL ,
  `routeurl` varchar(500) NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL  ,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- drop table businesses;
-- CREATE TABLE `businesses` (
--   `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
--   `name` varchar(50) NOT NULL DEFAULT '',
--   `describe` varchar(500) NOT NULL DEFAULT '',
--   `ctime` timestamp NOT NULL  ,
--   `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table tasklogs;
CREATE TABLE `tasklogs` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taskid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` varchar(500) NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL  ,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table users;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `usertype` varchar(50) NOT NULL DEFAULT '',
  `headimg` varchar(500) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `status` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL  ,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

drop table friends;
CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `usertype` varchar(50) NOT NULL DEFAULT '',
  `frienduserid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `friendusertype` varchar(50) NOT NULL DEFAULT '',
  `status` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL  ,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- drop table userloginlogs;
-- CREATE TABLE `userloginlogs` (
--   `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
--   `userId` varchar(50) NOT NULL DEFAULT '',
--   `openId` varchar(200) NOT NULL DEFAULT '',
--   `cid` varchar(200) NOT NULL DEFAULT '',
--   `status` int(2) UNSIGNED NOT NULL DEFAULT 0,
--   `ctime` timestamp NOT NULL  ,
--   `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;