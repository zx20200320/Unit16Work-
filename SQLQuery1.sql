use Week03_DB
--工作类型表
create table WorkType
(
	Id			int identity primary key,	--编号
	Name		varchar(20)			--名称
)
insert WorkType values('请假')
insert WorkType values('上班')

--创建一级审核表角色
create table OneRoles
(
	Id		int identity primary key,
	Name	varchar(20)
)
insert into OneRoles values('部门经理')
insert into OneRoles values('部门主管')

--创建二级审核表角色
create table TwoRoles
(
	Id		int identity primary key,
	Name	varchar(20)
)
insert into TwoRoles values('总经理')
insert into TwoRoles values('总监')

--创建三级审核表角色
create table ThreeRoles
(
	Id		int identity primary key,
	Name	varchar(20)
)
insert into ThreeRoles values('总裁')
insert into ThreeRoles values('董事长')

--创建工作流表
create table WorkReader
(
	Id			int identity primary key,
	WorkType	varchar(20),		--工作类型
	WorkDay		varchar(20),				--天数
	OneRoles	varchar(20),		--一级审核角色
	TwoRoles	varchar(20),		--二级审核角色
	ThreeRoles	varchar(20)		--三级审核角色
)
