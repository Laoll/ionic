CREATE DATABASE wechat;

--建立用户表
create table Persons(
    uId int primary key AUTO_INCREMENT,
    uname varchar(60),
    pwd varchar(12),
    gender varchar(8),
    address varchar(120),
    mobile varchar(11)
);
--为用户表添加记录
INSERT INTO Persons VALUES (null,'Xuanwumen', '123456' ,'female', 'Beijing','18675881240');
INSERT INTO Persons VALUES (null,'Zhuanwu', '123456', 'female', 'Shanghai','18675881241');
INSERT INTO Persons VALUES (null,'Juan', '123456', 'male', 'Shandong','18675881242');
INSERT INTO Persons VALUES (null,'Li', '123456', 'male', 'Shandong','18675881242');
--建立通讯录
create table contactList(
    cId int primary key AUTO_INCREMENT,
    oId int,
    fId int
);
--为通讯录添加记录
INSERT INTO contactList VALUES (null,1,3);
INSERT INTO contactList VALUES (null,1,2);
INSERT INTO contactList VALUES (null,1,4);
INSERT INTO contactList VALUES (null,2,3);
INSERT INTO contactList VALUES (null,4,3);
INSERT INTO contactList VALUES (null,4,2);

--消息记录
create table messageList(
    mId int primary key IDENTITY NOT NULL,
    sender_Id int NOT NULL,
    receiver_Id int NOT NULL,
    departure_Time int NOT NULL,
    content  varchar NOT NULL,
    unread varchar NOT NULL
);
--为消息记录添加数据
INSERT INTO messageList VALUES (null,1,3,);


--微信消息列表
create table chatList(
   cl_Id int primary key NOT NULL ,
   chatId  int,
   uId     int
)
--朋友圈
create table friendCode(
   codeId int primary key IDENTITY NOT NULL,
   userId int NOT NULL,
   content varchar NOT NULL,
   delivery_Time int NOT NULL,
)