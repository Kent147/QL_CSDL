create database QLNHATRO_DinhHoangKhang_Ps09055_Assignment;
use QLNHATRO_DinhHoangKhang_PS09055_Assignment;
create table LOAINHA
(
cacloaihinhnhatro nvarchar(20),
primary key (cacloaihinhnhatro)
);
create table NGUOIDUNG
(
tennguoidung nvarchar(20) not null,
gioitinh nvarchar(3) not null,
dienthoai int not null,
diachi nvarchar(50) not null,
email varchar(20),
primary key (tennguoidung)
);
create table NHATRO
(
loaihinhnhatrochothue nvarchar(20) not null,
dientich int not null,
giaphong float not null,
diachi nvarchar(50) not null,
motaphongtro nvarchar(100),
ngaydangtin date not null,
nguoilienhe nvarchar(20),
primary key (diachi),
foreign key (nguoilienhe) references NGUOIDUNG(tennguoidung),
foreign key (loaihinhnhatrochothue) references LOAINHA(cacloaihinhnhatro)
);
create table DANHGIA
(
nguoidanhgia nvarchar(20) not null,
nhatroduocdanhgiachatluong nvarchar(3) not null,
[dislike/like] int,
noidungdanhgia nvarchar(200),
primary key(nhatroduocdanhgiachatluong),
foreign key (nguoidanhgia) references NGUOIDUNG(tennguoidung)
);
insert into LOAINHA(cacloaihinhnhatro)
values('chungcu','nhatro','nharieng'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Nguyễn Văn Long','Nam','090123045','23A,phường 7,quận 3'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Trần Minh Khôi','Nam','091230054','43B,phường 9,quận 5'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Đinh Ngọc Hân','Nữ','0912319093','53C,phường 2,quận 8'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Hồ Xuân Hà','Nữ','0931313041','5/6, phường 6,quận bình thạnh'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Nguyễn Xuân Hùng','Nam','0937313041','590, phường 5,quận 2'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Hồ Quốc Công','Nam','0931312041','868, phường 10,quận 7'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Đinh Công Mạnh','Nam','0931321341','55, phường 10,quận 4'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Nguyễn thị Hồng Hà','Nữ','0913513041','56A, phường 6,quận bình thạnh'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Huỳnh Văn Minh','Nam','0941463041','908A, phường 9,quận 2'); go
insert into NGUOIDUNG(tennguoidung,gioitinh,dienthoai,diachi)
values ('Hồ Thị Xuân','Nữ','0941013041','608, phường 17,quận 1'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('phòng trọ','400m2','56A, phường 6,quận bình thạn','2tr5/tháng','23/4/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('chung cư','800m2','868, phường 10,quận 7','5tr5/tháng','2/8/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('phòng trọ','400m2','55, phường 10,quận 4','1tr5/tháng','3/7/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('phòng trọ','500m2','608, phường 17,quận 1','2tr7/tháng','21/8/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('nhà riêng','1200m2','908A, phường 9,quận 2','50tr/tháng','8/4/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('chung cư','1000m2','23A,phường 7,quận 3','20tr/tháng','3/6/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('phòng trọ','400m2','53C,phường 2,quận 8','2tr5/tháng','3/10/2018');go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('phòng trọ','400m2','608, phường 17,quận 1','3tr/tháng','28/10/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('phòng trọ','700m2','53C,phường 2,quận 8','5tr5/tháng','20/5/2018'); go
insert into NHATRO(loaihinhnhatrochothue,dientich,diachi,giaphong,ngaydangtin)
values ('nhà riêng','1000m2','908A, phường 9,quận 2','15tr/tháng','18/9/2018'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Nguyễn Văn Long','Tốt','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Trần Minh Khôi','Tạm','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Đinh Ngọc Hân','Tốt','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Hồ Xuân Hà','Tốt','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Nguyễn Xuân Hùng','Kém','dislike'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Hồ Quốc Công','Tạm','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Đinh Công Mạnh','Tốt','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Nguyễn thị Hồng Hà','Tốt','like'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Huỳnh Văn Minh','Kém','dislike'); go
insert into DANHGIA(nguoidanhgia,nhatroduocdanhgiachatluong,[dislike/like])
values ('Hồ Thị Xuân','Tạm','dislike'); go