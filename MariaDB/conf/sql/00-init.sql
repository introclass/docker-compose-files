/*
 * eg.sql
 * Copyright (C) 2020 lijiaocn <lijiaocn@foxmail.com wechat:lijiaocn>
 *
 * Distributed under terms of the GPL license.
 */

use testdb;

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(250)  NOT NULL default '',     
  `age` int(11) NOT NULL default '0',       
   PRIMARY KEY  (`id`)
);

-- vim:et
