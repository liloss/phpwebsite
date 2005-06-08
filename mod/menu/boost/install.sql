CREATE TABLE menu_links (
  id int NOT NULL default '0',
  module varchar(30) NOT NULL default '',
  item_name varchar(30) NOT NULL default '',
  item_id int NOT NULL default '0',
  menu_id int NOT NULL default '0',
  url varchar(255) default NULL,
  parent int NOT NULL default '0',
  active smallint NOT NULL default '0',
  link_order smallint NOT NULL default '0',
  PRIMARY KEY  (id)
);

CREATE TABLE menus (
  id int NOT NULL default '0',
  title varchar(30) NOT NULL default '',
  template varchar(50) NOT NULL default '',
  module varchar(30) default NULL,
  item_name varchar(30) default NULL,
  item_id int NOT NULL default '0',
  pin_all smallint NOT NULL default '0',
  PRIMARY KEY  (id)
);
