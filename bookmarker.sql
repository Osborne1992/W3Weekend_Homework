drop table bookmarks;
create table bookmarks (
  id serial4 primary key,
  url varchar(255),
  name varchar(255) not null,
  type varchar(255) not null,
  details text
);