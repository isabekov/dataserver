CREATE TABLE  `users` (
  `userID`             mediumint      UNSIGNED auto_increment                               NOT NULL,
  `username`           varchar(40)    CHARACTER SET utf8 COLLATE utf8_general_ci            NOT NULL,
  `slug`               varchar(40)    CHARACTER SET utf8 COLLATE utf8_general_ci                NULL,
  `password`           char(40)       CHARACTER SET utf8 COLLATE utf8_bin                   NOT NULL,
  `email`              varchar(100)   CHARACTER SET utf8 COLLATE utf8_general_ci            NOT NULL,
  `openid`             varchar(100)   CHARACTER SET utf8 COLLATE utf8_general_ci                NULL,
  `role`               enum('member','admin')  DEFAULT 'member'                             NOT NULL,
  `resetValidationKey` char(40)       CHARACTER SET utf8 COLLATE utf8_bin                       NULL,
  `resetValidationExp` int                                                                      NULL,
  `emailValidationKey` char(10)       CHARACTER SET utf8 COLLATE utf8_bin                       NULL,
  `emailValidated`     tinyint(1)     DEFAULT '0'                                           NOT NULL,
  `hasImage`           tinyint(1)     DEFAULT '0'                                           NOT NULL,
  `lastUpdated`        timestamp      ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  `dateRegistered`     timestamp                                                            NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY  (`username`),
  UNIQUE KEY  (`slug`),
  UNIQUE KEY  (`email`),
  UNIQUE KEY  (`resetValidationKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
