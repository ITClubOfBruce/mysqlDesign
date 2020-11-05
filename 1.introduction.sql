/*
    关系型数据库(数据表): sqlite  db2  mysql oracle  access   sql Server  
    非关系型数据库（key-value）:mongodb  redis  memcache
*/


--- 查看当前用户 ---
select user();

---  退出mysql ---
quit;
exit;

--- 创建账号  ---
--- 指定某一个IP ---
create user 'bruce'@'119.3.39.119';

--- 指定网段  ---
create user 'bruce'@'119.3.39.%';

--- 所有IP（机器）都能访问 ---
create user 'bruce'@'%';

--- 远程登录指令  ---
mysql -u root -p 123456 -h 119.3.39.119;

--- 查看某个账号的权限 ---
show grants for 'bruce'@'119.3.39.119';

--- 给账号授权  ---
grant all on *.* to 'bruce'@'%';
flush privileges;

--- 创建账号并授权 ---
grant all on *.* to 'bruce'@'%' identified by '123456'



/*
    SQL 结构查询语言，分成三种类型
    1. DDL  数据库定义语言: 数据库，表，视图，索引，存储过程，比如：create drop alter
    2. DML  数据库操纵语言：插入数据 insert  删除 delete   更新 update  查询 select
    3. DCL  数据库控制语言：比如控制用户的访问权限 grant revoke
*/

--- 创建一个数据库 ---
create database `db1` charset utf8;
show databases;
alter database `db1` charset gbk;
drop databse `db1`


--- 操作表  ---
use db1;
create table `t1`(id int,name char);
show tables;
alter table `t1` modify `name` char(3);
alter table `t1` change `name` `username` char(2);

drop table `t1`