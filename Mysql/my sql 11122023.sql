Create database CAD_OS;
use CAD_OS;
create table OS_User_Reg(
Sno int,
First_Name varchar(255),
Middle_Name varchar(255),
Last_Name varchar(255),
Contact_Number long,
Address varchar(255),
Email_id varchar(255),
User_id int not null primary key, 
Password varchar(255),
Type_of_Account varchar(255),
Created_by varchar(50),
created_on varchar(50),
Modified_by varchar(50),
Modified_on varchar(50));
select*from OS_User_Reg;
select*from OS_User_Login;
select*from  OS_order_id;
alter table OS_User_Reg 
add column last_name varchar(50),
add column middle_name varchar(50);
select*from OS_User_Login;
show tables;
create table OS_User_Login(
sno int not null primary key,
Old_Password varchar(255),
New_Password varchar(255),
Email_id varchar(50),
Phone_no long,
Created_by varchar(50),
created_on varchar(50),
Modified_by varchar(50),
Modified_on varchar(50),
User_id int not null,
foreign key (User_id) references OS_User_Reg (User_id)); 


select*from OS_order_id;
Create table OS_order_id(
sno int not null,
Product_name varchar(255) not null,
Product_id varchar(15) not null primary key,
Price double not null,
Quantity int not null,
Delivered date,
Created_by varchar(50),
created_on varchar(50),
Modified_by varchar(50),
Modified_on varchar(50),
User_id int (255),
foreign key (User_id) references OS_User_Reg (User_id)); 
create table OS_promotion( sno int not null,
Product_name varchar(255) not null,
Product_id varchar(15) not null primary key,
Created_by varchar(50),
created_on varchar(50),
Modified_by varchar(50),
Modified_on varchar(50),
User_id int(255),
foreign key (User_id) references OS_User_Reg (User_id)); 
create table OS_Usr_int(sno int not null,
User_name varchar(50) not null primary key,
Product varchar(255) not null,
Views int not null,
Created_by varchar(50),
created_on varchar(50),
Modified_by varchar(50),
Modified_on varchar(50),
User_id int(255),
foreign key (User_id) references OS_User_Reg (User_id)); 
create table OS_items_list(
sno int,
product_name varchar(255) ,
product_id varchar(255) primary key not null ,
price double,
Qty_on_hand int,
Created_by varchar(50),
created_on varchar(50),
Modified_by varchar(50),
Modified_on varchar(50));
alter table OS_order_id add foreign key (Product_id) references OS_items_list(Product_id);
ALTER TABLE OS_order_id ADD CONSTRAINT fk_Product_id FOREIGN KEY (Product_id) REFERENCES OS_items_list(Product_id);
alter table OS_order_id add foreign key (User_id) references OS_User_Reg(User_id);
describe OS_order_id;
alter table OS_order_id modify sno int primary key;
alter table OS_Usr_int add column Product_id varchar(255) not null;
drop table OS_items_list ;
show tables;
select*from OS_Usr_int;
insert into OS_order_id(sno, Product_name, Product_id, Price, Quantity, Delivered, Created_by, Created_on, 
Modified_by, Modified_on,User_id)
values(1,'Dumbell','D01',300.20,2, '2023-11-10','Dinesh','Dinesh','Dinesh','Dinesh',1002);
alter table OS_order_id drop foreign key OS_order_id_ibfk_2;

insert into OS_User_Reg(sno,First_Name,Middle_Name, Last_Name, Contact_Number, Address, Email_id, User_id, 
Password, Type_of_Account)
values
(1,'Aarif S','Aarif S','Aarif S',9025171297,'MADURAI','aarif01cad@gmail.com',1001,'Password@123','Free Use'),
(2,'Abdul rahman A','Abdul rahman A','Abdul rahman A',9042116396,'Trichy ','abdulrahmancad01@gmail.com',1002,'Password@123','Free Use'),
(3,'Abinaya.J','Abinaya.J','Abinaya.J',8124568273,'srirangam','abinayakumarcad01@gmail.com',1003,'Password@123','Free Use'),
(4,'Ahamed J','Ahamed J','Ahamed J',9659021407,'trichy','ahamedcad01@gmail.com',1004,'Password@123','Free Use'),
(5,'ALEXANDAR A ','ALEXANDAR A ','ALEXANDAR A ',9360415014,'keeranur','alexandaracad01@gmail.com',1005,'Password@123','Free Use'),
(6,'Anand R','Anand R','Anand R',8489903993,'Trichy','anandravichandrancad01@gmail.com',1006,'Password@123','Free Use'),
(7,'Anjuka P','Anjuka P','Anjuka P',6379944693,'Trichy','anjukapugaz02@gmail.com',1007,'Password@123','Free Use'),
(8,'Aravind.K','Aravind.K','Aravind.K',8778624466,'trichy','aravind2k23cad01@gmail.com',1008,'Password@123','Free Use'),
(9,'Basheer Ahamed M','Basheer Ahamed M','Basheer Ahamed M',9514690405,'trichy','basheercad01@gmail.com',1009,'Password@123','Free Use'),
(10,'Chandran P','Chandran P','Chandran P',9361313775,'KARUR','chandrancad01@gmail.com',1010,'Password@123','Free Use'),
(11,'Danielraj A','Danielraj A','Danielraj A',9092838116,'thanjavur','danielrajcad01@gmail.com',1011,'Password@123','Free Use'),
(12,'Dinesh T','Dinesh T','Dinesh T',9629724889,'Trichy','tdineshcad01@gmail.com',1012,'Password@123','Free Use'),
(13,'Domenig Vasanthan A','Domenig Vasanthan A','Domenig Vasanthan A',8220904749,'Trichy','vasanthcad01@gmail.com',1013,'Password@123','Free Use'),
(14,'Gopal S','Gopal S','Gopal S',9361448297,'KARUR','gopalcad01@gmail.com',1014,'Password@123','Free Use'),
(15,'HARSH A','HARSH A','HARSH A',9025664587,'TRICHY','harshcad01@gmail.com',1015,'Password@123','Free Use'),
(16,'Jayapravin D','Jayapravin D','Jayapravin D',7094937902,'TRICHY','jayapravincad01@gmail.com',1016,'Password@123','Free Use'),
(17,'jemimah j','jemimah j','jemimah j',9489189043,'TRICHY','jemimahcad01@gmail.com',1017,'Password@123','Free Use'),
(18,'Manimohana S','Manimohana S','Manimohana S',9994987424,'TRICHY','Mohanacad01@gmail.com',1018,'Password@123','Free Use'),
(19,'Kiruthiga R','Kiruthiga R','Kiruthiga R',7339220870,'TRICHY','kiruthigarcad01@gmail.com',1019,'Password@123','Free Use'),
(20,'Nancy A','Nancy A','Nancy A',8428267221,'Pudukkottai','nancyacad01@gmail.com',1020,'Password@123','Free Use'),
(21,'Natrayan M','Natrayan M','Natrayan M',8825684098,'TRICHY','natrayancad01@gmail.com',1021,'Password@123','Free Use'),
(22,'Pavithra K','Pavithra K','Pavithra K',9025862493,'Trichy','pavithracad01@gmail.com',1022,'Password@123','Free Use'),
(23,'prabhaharn.M','prabhaharn.M','prabhaharn.M',9043792705,'Trichy','prabhaharncad01@gmail.com',1023,'Password@123','Free Use'),
(24,'RAMKI S','RAMKI S','RAMKI S',6383693933,'Trichy','ramkisridharcad01@gmail.com',1024,'Password@123','Free Use'),
(25,'Sahith Afridi Sabibulla','Sahith Afridi Sabibulla','Sahith Afridi Sabibulla',9042314497,'Trichy','sahithcad01@gmail.com',1025,'Password@123','Free Use'),
(26,'sakthivel. S','sakthivel. S','sakthivel. S',9514605031,'Perambalur','jerrycad01@gmail.com',1026,'Password@123','Free Use'),
(27,'Sanjay Balakrishnan','Sanjay Balakrishnan','Sanjay Balakrishnan',7708407173,'Trichy','sanjayrbcad01@gmail.com',1027,'Password@123','Free Use'),
(28,'Santhosh Kumar S','Santhosh Kumar S','Santhosh Kumar S',9344560546,'Trichy','santhoshcad01@gmail.Com',1028,'Password@123','Free Use'),
(29,'Saran S','Saran S','Saran S',6380026784,'Cuddalore','sarancad01@gmail.com',1029,'Password@123','Free Use'),
(30,'Siranjeevi S','Siranjeevi S','Siranjeevi S',6383685553,'Perambalur','siranjeevicad01@gmail.com',1030,'Password@123','Free Use');

select*from OS_items_list;
insert into OS_User_Login(sno, old_password, user_id)
values
(1,'Password@123',1001),
(2,'Password@123',1002),
(3,'Password@123',1003),
(4,'Password@123',1004),
(5,'Password@123',1005),
(6,'Password@123',1006),
(7,'Password@123',1007),
(8,'Password@123',1008),
(9,'Password@123',1009),
(10,'Password@123',1010),
(11,'Password@123',1011),
(12,'Password@123',1012),
(13,'Password@123',1013),
(14,'Password@123',1014),
(15,'Password@123',1015),
(16,'Password@123',1016),
(17,'Password@123',1017),
(18,'Password@123',1018),
(19,'Password@123',1019),
(20,'Password@123',1020),
(21,'Password@123',1021),
(22,'Password@123',1022),
(23,'Password@123',1023),
(24,'Password@123',1024),
(25,'Password@123',1025),
(26,'Password@123',1026),
(27,'Password@123',1027),
(28,'Password@123',1028),
(29,'Password@123',1029),
(30,'Password@123',1030);

select*from OS_User_Login;
update OS_User_Login set phone_no=
case sno
when	1	then	'9025171297'
when	2	then	'9042116396'
when	3	then	'8124568273'
when	4	then	'9659021407'
when	5	then	'9360415014'
when	6	then	'8489903993'
when	7	then	'6379944693'
when	8	then	'8778624466'
when	9	then	'9514690405'
when	10	then	'9361313775'
when	11	then	'9092838116'
when	12	then	'9629724889'
when	13	then	'8220904749'
when	14	then	'9361448297'
when	15	then	'9025664587'
when	16	then	'7094937902'
when	17	then	'9489189043'
when	18	then	'9994987424'
when	19	then	'7339220870'
when	20	then	'8428267221'
when	21	then	'8825684098'
when	22	then	'9025862493'
when	23	then	'9043792705'
when	24	then	'6383693933'
when	25	then	'9042314497'
when	26	then	'9514605031'
when	27	then	'7708407173'
when	28	then	'9344560546'
when	29	then	'6380026784'
when	30	then	'6383685553'
end
where sno in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30);
select*from OS_promotion;
describe OS_Usr_int;
 
insert into OS_Usr_int(sno,product_name, product_id, price, quantity, user_id)
values
(1,'Skipping Rope','S01',150,1,1001),
(2,'Resistance Band.','R01',300,1,1003),
(3,'Yoga Mat','Y01',550,21,1005),
(4,'Weights & Dumbbells','W01',1000,10,1008),
(5,'Exercise Bikes.','E01',7500,25,1002),
(6,'Elliptical & Cross Trainer.','E02',1500,5,1009),
(7,'Treadmills.','T01',1220,9,1030),
(8,'Punching Bag','P01',1200,8,1025),
(9,'Gloves','G01',500,2,1020),
(10,'Shoes','S02',3000,9,1016);

