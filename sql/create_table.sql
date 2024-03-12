-- 数据库初始化

-- 新建库
create database if not exists mybi;

-- 切换库
use mybi;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userAccount  varchar(256)  not null comment '账号',
    userPassword varchar(512)  not null comment '密码',
    userName     varchar(256)  null comment '用户昵称',
    userAvatar   varchar(1024) null comment '用户头像',
    userProfile   varchar(512)  null comment '用户简介',
    userRole     varchar(256)  not null default 'user' comment '用户角色：user/admin',
    createTime   datetime      not null default CURRENT_TIMESTAMP comment '创建时间',
    updateTime   datetime      not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint       not null default 0 comment '是否删除',
    index idx_userAccount (userAccount)
) comment '用户表' collate = utf8mb4_unicode_ci;

-- 图表信息表
create table if not exists chart
(
    id            bigint auto_increment comment 'id' primary key,
    goal          text         null comment '分析目标',
    chartData     text         null comment '图表数据',
    chartType     varchar(128) null comment '图表类型',
    genChart      text         null comment '生成的图表数据',
    genResult     text         null comment '生成的分析结论',
    userId        bigint       null comment '用户ID',
    createTime    datetime     not null default CURRENT_TIMESTAMP comment '创建时间',
    updateTime    datetime     not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete      tinyint      not null default 0 comment '是否删除'
) comment '图表信息表' collate = utf8mb4_unicode_ci;