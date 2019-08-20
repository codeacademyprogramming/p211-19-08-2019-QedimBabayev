--create database Advertisement

--use Advertisement


--create table UserInfo(

--Id int primary key identity,
--Firstname nvarchar(50) not null,
--Lastname nvarchar(50) not null,
--UserAdress nvarchar(100) not null,
--PhoneNumber nvarchar(50) not null,

--)


--create table UserAddInfo (

--Id int primary key identity,
--SecondaryPhoneNumber nvarchar (50),
--UserId int references UserInfo(Id),


--)

--alter table UserInfo 
--add UserNewId  int references UserAddInfo(Id)
--select * from UserAddInfo

--create table Cities	(	

--Id int primary key identity,
--CityName nvarchar(50) not null,


--)

--create table BrandName(

--Id int primary key identity,
--BrandName	nvarchar(50) unique ,

--)	



--create table Posts (
--Id int primary key identity,
--ItemName nvarchar(100) not null,
--ItemImage nvarchar(100) not null,
--ItemCount int ,
--UserId int  references UserInfo(Id),
--CityId int references Cities(Id),
--ItemInfo nvarchar (MAX),
--ConnectionTimeWithUser nvarchar(50),
--Area nvarchar(50),
--TypePost nvarchar(20),
--NewOrNot bit,
--BrandId int references BrandName(Id)



--)


select 
concat(UserInfo.Firstname, ' ', UserInfo.Lastname , '-----', UserInfo.PhoneNumber, '  ') 'Saticinin adi soyadi ',
UserInfo.UserAdress 'Saticin yasadigi unvan',
Cities.CityName 'Seher ',
isnull(UserAddInfo.SecondaryPhoneNumber, '  ' )'elave elaqe nomresi',






concat(Posts.ItemName, ' ' , Posts.ItemImage) 'Elanin adi ve fotosu ',
Posts.ItemInfo 'Elan barede melumat ',
Posts.ConnectionTimeWithUser 'Alis-veris ucun musait vaxt',
isnull(Posts.Area, '  ') 'Ev ve ya torpaq sahelerinin erazi olcusu ',
Posts.TypePost 'Hansi cur satilir? ',

case 
when NewOrNot = 1 then 'beli'
when NewOrNot = 0 then 'xeyr'
end as 'Yenidirmi?'

from Posts
join UserInfo on Posts.UserId = UserInfo.id
join Cities on Posts.CityId = Cities.Id
join  UserAddInfo on UserInfo.UserNewId = UserAddInfo.Id






--select * from UserInfo

--select * from Cities



 

