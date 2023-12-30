use CAD_OS;
delimiter $$
drop procedure if exists OrderIDinsertvalue;
create procedure OrderIDinsertvalue(
in snoo int,
in Product_nameo varchar(50),
in Product_ido varchar(50),
in Priceo double,
in Quantityo int,
in Deliveredo varchar(50),
in Created_byo varchar(50), 
in created_ono varchar(50) ,
in Modified_byo varchar(50) ,
in Modified_ono varchar(50),
in User_ido int)
begin
insert into OS_order_id (sno, Product_name, Product_id, Price, Quantity, Delivered, Created_by, Created_on, 
Modified_by, Modified_on)
Values(snoo, Product_nameo, Product_ido, Priceo, Quantityo, Deliveredo, Created_byo, Created_ono, 
Modified_byo, Modified_ono);
end $$
delimiter ;




delimiter $$
drop procedure if exists Userreginsertvalue;$$
create procedure Userreginsertvalue(
in snor int,
in First_namer varchar(50),
in Middle_namer varchar(50),
in Last_namer varchar(50),
in Contact_Numberr long,
in Addressr varchar(100),
in Email_idr varchar(50),
in User_idr int,
in Passwordr varchar(50),
in Type_of_accountr varchar(50),
in Created_byr varchar(50), 
in created_onr varchar(50) ,
in Modified_byr varchar(50) ,
in Modified_onr varchar(50))
begin
insert into OS_User_Reg (sno, First_name, Middle_name, Last_name, Contact_Number, Address, Email_id, User_id, Password, Type_of_account, Created_by, Created_on, 
Modified_by, Modified_on)
Values (snor, First_namer, Middle_namer, Last_namer, Contact_Numberr, Addressr, Email_idr, User_idr, Passwordr, Type_of_accountr, Created_byr, Created_onr, 
Modified_byr, Modified_onr);
end $$
delimiter ;


delimiter $$
drop procedure if exists Logininsertvalue; $$
create procedure Logininsertvalue(
in snol int,
in Old_passwordl varchar(100),
in New_passwordl varchar(100), 
in Email_idl varchar(100),
in Phone_nol long,
in Created_byl varchar(50), 
in created_onl varchar(50) ,
in Modified_byl varchar(50) ,
in Modified_onl varchar(50),
in User_id int)
begin
insert into OS_User_Login( sno, Old_password, New_password, Email_id, Phone_no, Created_by, Created_on, 
Modified_by, Modified_on,User_id)
values ( snol, Old_passwordl, New_passwordl, Email_idl, Phone_nol, Created_byl, Created_onl, 
Modified_byl, Modified_onl,User_idl);
end $$
delimiter ;


delimiter $$
drop procedure if exists promotioninsertvalue;$$
create procedure promotioninsertvalue(
  snop int ,
  Product_namep varchar(255) ,
  Product_idp varchar(15) ,
  Created_byp varchar(50) ,
  created_onp varchar(50) ,
  Modified_byp varchar(50) ,
  Modified_onp varchar(50) ,
  User_idp int)
  begin
  insert into OS_promotion(sno, Product_name, Product_id, Created_by, Created_on, 
Modified_by, Modified_on, User_id)
values(snop, Product_namep, Product_idp, Created_byp, Created_onp, 
Modified_byp, Modified_onp, User_idp);
end $$
 delimiter ;

CALL promotioninsertvalue(1, 'Dumbell', 'D01', 'Dinesh','Dinesh','Dinesh','Dinesh',1001);
  
 delimiter $$
drop procedure if exists userintinsertvalue;$$
create procedure userintinsertvalue( 
in snoi int,
in User_namei varchar(50),
in Producti varchar(50),
in Viewsi varchar(50),
in Created_byi varchar(50) ,
in created_oni varchar(50) ,
in Modified_byi varchar(50) ,
in Modified_oni varchar(50) ,
in User_idi int,
in Product_idi varchar(50))
begin
insert into OS_Usr_int(sno,User_name, Product, Views, Created_by, Created_on, 
 Modified_by, Modified_on, User_id, Product_id)
 Values(snoi, User_namei, Producti, Viewsi, Created_byi, Created_oni, 
 Modified_byi, Modified_oni, User_idi, Product_idi);
 end $$
 delimiter ;

Call userintinsertvalue(1, 'Dinesh.T', 'Dumbell', 5, 'Dinesh','2023-12-22',Null,Null,1012, 'D01');




delimiter $$
drop procedure if exists itemlistinsertvalue;$$
Create procedure itemlistinsertvalue( 
in  snoi int ,
in  product_namei varchar(255) ,
in  product_idi varchar(255),
in  pricei double,
in  Qty_on_handi int,
in  Created_byi varchar(50) ,
in  created_oni varchar(50) ,
in  Modified_byi varchar(50) ,
in  Modified_oni varchar(50))
begin
insert into OS_items_list (sno, Product_name, Product_id, price, Qty_on_hand, Created_by, Created_on, Modified_by, Modified_on)
values (snoi, Product_namei, Product_idi, pricei, Qty_on_handi, Created_byi, Created_oni, Modified_byi, Modified_oni);
end$$
delimiter ;
 
call itemlistinsertvalue( 1, 'Dumbell','D01',100.50,25,'Dinesh',2023-12-22,Null,null); 
 