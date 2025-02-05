USE QLDA;
GO
-- Thêm dữ liệu
INSERT INTO DIADIEM_PHG (MAPHG, DIADIEM)
VALUES (1, N'TP HCM'),
	   (4, N'Hà Nội'),
	   (5, N'TAU'),
	   (5, N'NHA TRANG'),
	   (5, N'TP HCM');

INSERT INTO CONGVIEC (MADA, STT, TEN_CONG_VIEC)
VALUES (1 , 1 , N'Thiết kế sản phẩm X'),
	   (1 , 2 , N'Thử nghiệm sản phẩm Y'),
	   (2 , 1 , N'Sản Xuất sản phẩm Y'),
	   (2 , 2 , N'Quảng cáo sản phẩm Y'),
	   (3 , 1 , N'Khuyến mãi sản phẩm Z'),
	   (10 , 1 , N'Tin học hoá phòng nhân sự'),
	   (10 , 2 , N'Tin học hoá phòng kinh doanh'),
	   (20 , 1 , N'Lắp đặt cáp quang'),
	   (30 , 1 , N'Đào tạo nhân viên Marketing'),
	   (30 , 2 , N'Đào tạo chuyên viên thiết kế');

INSERT INTO PHONGBAN (TENPHG, MAPHG, TRPHG, NG_NHANCHUC)
VALUES (N'Nghiên cứu', 5, '005', '1978/05/20'),
	   (N'Điều hành', 4, '008', '1985/01/01'),
	   (N'Quản Lý', 1, '006', '1971/06/19');

INSERT INTO DEAN (TENDA, MADA, DDIEM_DA, PHONG)
VALUES (N'Sản phẩm X', 1, N'Vũng Tàu', 5),
	   (N'Sản phẩm Y', 2, N'Nha Trang', 5),
	   (N'Sản phẩm Z', 3, N'TP HCM', 5),
	   (N'Tin hoc hoá', 10, N'Hà Nội', 4),
	   (N'Cáp quang', 20, N'TP HCM', 1),
	   (N'Đào tạo', 30, N'Hà Nội', 4);

INSERT INTO PHANCONG (MA_NVIEN, MADA, STT, THOIGIAN)
VALUES ('009', 1, 1, 32),
	   ('009', 2, 2, 8),
	   ('004', 3, 1, 40),
	   ('003', 1, 2, 20),
	   ('003', 2, 1, 20),
	   ('008', 10, 1, 35),
	   ('008', 30, 2, 5),
	   ('001', 30, 1, 20),
	   ('001', 20, 1, 15),
	   ('006', 20, 1, 30),
       ('005', 3, 1, 10),
	   ('005', 10, 2, 10),
	   ('005', 20, 1, 10),
	   ('007', 30, 2, 30),
	   ('007', 10, 2, 10);

INSERT INTO THANNHAN (MA_NVIEN, TENTN, PHAI, NGSINH, QUANHE)
VALUES ('005', N'Trinh', N'Nữ', '1976/04/05', N'Con gái'),
	   ('005', N'Khang', N'Nam', '1973/10/25', N'Con trai'),
   	   ('005', N'Phương', N'Nữ', '1948/05/03', N'Vợ chồng'),
	   ('001', N'Minh', N'Nam', '1932/02/29', N'Vợ chồng'),
	   ('009', N'Tiến', N'Nam', '1978/01/01', N'Con trai'),
	   ('009', N'Châu', N'Nữ', '1978/12/30', N'Con gái'),
	   ('009', N'Phương', N'Nữ', '1957/05/05', N'Vợ chồng');

INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
VALUES (N'Đinh', N'Bá', N'Tiên', '009', '1960/11/02', N'119 Cống Quỳnh, TP HCM', N'Nam', 30000, '005', 5),
	   (N'Nguyễn', N'Thanh', N'Tùng', '005', '1962/08/20', N'222 Nguyễn Văn Cừ, TP HCM', N'Nam', 40000, '006', 5),
	   (N'Bùi', N'Ngọc', N'Hằng', '007', '1954/11/03', N'332, Nguyễn Thái Học, TP HCM', N'Nam', 25000, '001', 4),
	   (N'Lê', N'Quỳnh', N'Như', '001', '1967/01/02', N'291, Hồ Văn Huê, TP HCM', N'Nữ', 43000, '006', 4),
	   (N'Nguyễn', N'Minh', N'Hùng', '004', '1967/04/03', N'95, Bà Rịa, Vũng Tàu', N'Nam', 38000, '005', 5),
	   (N'Trần', N'Thanh', N'Tâm', '003', '1957/04/05', N'34, Mai Thị Lự, TP HCM', N'Nam', 25000, '005', 5),
	   (N'Trần', N'Hồng', N'Quang', '008', '1967/01/09', N'45, Lê Hồng Phong, TP HCM', N'Nam', 25000, '001', 4),
	   (N'Phạm', N'Văn', N'Vinh', '006', '1965/01/01', N'45, Trưng Vương, TP.HCM', N'Nữ', 55000, NULL, 1);
