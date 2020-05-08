use Week03_DB
--�������ͱ�
create table WorkType
(
	Id			int identity primary key,	--���
	Name		varchar(20)			--����
)
insert WorkType values('���')
insert WorkType values('�ϰ�')

--����һ����˱��ɫ
create table OneRoles
(
	Id		int identity primary key,
	Name	varchar(20)
)
insert into OneRoles values('���ž���')
insert into OneRoles values('��������')

--����������˱��ɫ
create table TwoRoles
(
	Id		int identity primary key,
	Name	varchar(20)
)
insert into TwoRoles values('�ܾ���')
insert into TwoRoles values('�ܼ�')

--����������˱��ɫ
create table ThreeRoles
(
	Id		int identity primary key,
	Name	varchar(20)
)
insert into ThreeRoles values('�ܲ�')
insert into ThreeRoles values('���³�')

--������������
create table WorkReader
(
	Id			int identity primary key,
	WorkType	varchar(20),		--��������
	WorkDay		varchar(20),				--����
	OneRoles	varchar(20),		--һ����˽�ɫ
	TwoRoles	varchar(20),		--������˽�ɫ
	ThreeRoles	varchar(20)		--������˽�ɫ
)
