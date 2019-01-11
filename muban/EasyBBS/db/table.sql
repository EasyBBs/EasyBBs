/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019-01-11 16:03:30                          */
/*==============================================================*/


drop table if exists Board;

drop table if exists Reply;

drop table if exists Topic;

drop table if exists User;

/*==============================================================*/
/* Table: Board                                                 */
/*==============================================================*/
create table Board
(
   boardId              int not null auto_increment,
   boardName            varchar(200),
   remark               varchar(1000),
   primary key (boardId)
);

/*==============================================================*/
/* Table: Reply                                                 */
/*==============================================================*/
create table Reply
(
   replyId              bigint not null auto_increment,
   userId               bigint,
   topicId              bigint,
   content              longtext,
   replyTime            datetime,
   primary key (replyId)
);

/*==============================================================*/
/* Table: Topic                                                 */
/*==============================================================*/
create table Topic
(
   topicId              bigint not null auto_increment,
   boardId              int,
   userId               bigint,
   title                varchar(250),
   content              longtext,
   postTime             datetime,
   primary key (topicId)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   userId               bigint not null auto_increment,
   userName             varchar(100),
   userPwd              varchar(100),
   primary key (userId)
);

alter table Reply add constraint FK_Relationship_3 foreign key (userId)
      references User (userId) on delete restrict on update restrict;

alter table Reply add constraint FK_Relationship_4 foreign key (topicId)
      references Topic (topicId) on delete restrict on update restrict;

alter table Topic add constraint FK_Relationship_1 foreign key (boardId)
      references Board (boardId) on delete restrict on update restrict;

alter table Topic add constraint FK_Relationship_2 foreign key (userId)
      references User (userId) on delete restrict on update restrict;

