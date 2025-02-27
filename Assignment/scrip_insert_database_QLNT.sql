-- Chuyển đến database
USE QLNHATRO_minhnqtv00291;
GO

-- Bảng LOAINHA
INSERT INTO LOAINHA (TenLoaiNha) VALUES
  (N'Phòng trọ sinh viên')
, (N'Căn hộ mini')
, (N'Nhà nguyên căn')
, (N'Chung cư mini')
, (N'Ký túc xá');
GO

-- Bảng NGUOIDUNG
INSERT INTO NGUOIDUNG (TenNguoiDung, GioiTinh, DienThoai, DiaChi, Email) VALUES
  (N'Phan Quốc Huy', N'Nam', '0900000001', N'Số 12, Quận 1, TP.HCM', 'huypqtv00248@gmail.com')
, (N'Nguyễn Tiến Bình', N'Nam', '0900000002', N'Số 34, Quận 2, TP.HCM', 'binhnttv00241@gmail.com')
, (N'Nguyễn Thành Luân', N'Nam', '0900000003', N'Số 56, Quận 3, TP.HCM', 'luannttv00245@gmail.com')
, (N'Nguyễn Hữu Anh Duy', N'Nam', '0900000004', N'Số 78, Quận 4, TP.HCM', 'duynhatv000303@gmail.com')
, (N'Đặng Tấn Lộc', N'Nam', '0900000005', N'Số 90, Quận 5, TP.HCM', 'locdttv00244@gmail.com')
, (N'Trần Văn Bảo', N'Nam', '0910000051', N'Số 12, Quận 6, TP.HCM', 'bao.tran@gmail.com')
, (N'Nguyễn Thị Hương', N'Nữ', '0910000052', N'Số 88, Quận 7, TP.HCM', 'huong.nguyen@gmail.com')
, (N'Phạm Văn Lâm', N'Nam', '0910000053', N'Số 23, Quận 8, TP.HCM', 'lam.pham@gmail.com')
, (N'Lê Minh Đức', N'Nam', '0910000054', N'Số 45, Quận 9, TP.HCM', 'duc.le@gmail.com')
, (N'Vũ Thị Lan', N'Nữ', '0910000055', N'Số 67, Quận 10, TP.HCM', 'lan.vu@gmail.com')
, (N'Trương Minh Tâm', N'Nam', '0920000056', N'Số 89, Quận 11, TP.HCM', 'tam.truong@gmail.com')
, (N'Đỗ Văn Khoa', N'Nam', '0920000057', N'Số 34, Quận 12, TP.HCM', 'khoa.do@gmail.com')
, (N'Bùi Thị Thanh', N'Nữ', '0920000058', N'Số 56, Quận Tân Bình, TP.HCM', 'thanh.bui@gmail.com')
, (N'Huỳnh Văn Hòa', N'Nam', '0920000059', N'Số 78, Quận Bình Thạnh, TP.HCM', 'hoa.huynh@gmail.com')
, (N'Nguyễn Minh Quân', N'Nam', '0930000060', N'Số 11, Quận Gò Vấp, TP.HCM', 'quan.nguyen@gmail.com')
, (N'Phạm Thị Thảo', N'Nữ', '0930000061', N'Số 99, Quận Phú Nhuận, TP.HCM', 'thao.pham@gmail.com')
, (N'Lê Văn Nghĩa', N'Nam', '0930000062', N'Số 44, Quận Tân Phú, TP.HCM', 'nghia.le@gmail.com')
, (N'Trần Thị Mỹ Linh', N'Nữ', '0940000063', N'Số 66, Quận 7, TP.HCM', 'mylinh.tran@gmail.com')
, (N'Võ Quang Hưng', N'Nam', '0940000064', N'Số 88, Quận 9, TP.HCM', 'hung.vo@gmail.com');
GO

-- Bảng NHATRO
INSERT INTO NHATRO (MaLoaiNha, DienTich, GiaPhong, DiaChi, ThongTinNhaTro, NgayDang, NguoiLienHe) VALUES
  (1, 25.5, 2500000, N'Số 123, Quận 1, TP.HCM', N'Phòng trọ giá rẻ, gần trường học.', '2025-02-05', 1)
, (2, 40.0, 5000000, N'Số 234, Quận 2, TP.HCM', N'Căn hộ mini đầy đủ nội thất.', '2025-02-05', 2)
, (3, 70.0, 10000000, N'Số 345, Quận 3, TP.HCM', N'Nhà nguyên căn 2 phòng ngủ.', '2025-02-05', 3)
, (4, 35.0, 4000000, N'Số 456, Quận 4, TP.HCM', N'Chung cư mini có bảo vệ 24/7.', '2025-02-05', 4)
, (5, 15.0, 1500000, N'Số 567, Quận 5, TP.HCM', N'Ký túc xá giường tầng, giá sinh viên.', '2025-02-05', 5);
GO

-- Bảng DANHGIA
INSERT INTO DANHGIA (MaNguoiDung, MaNhaTro, DanhGia, NoiDungDanhGia) VALUES
  (1, 2, 1, N'Điện nước ổn định, không bị mất đột xuất.')
, (2, 4, 1, N'Khu vực yên tĩnh, thích hợp nghỉ ngơi.')
, (3, 4, 1, N'Điện nước ổn định, không bị mất đột xuất.')
, (4, 3, 1, N'Chủ nhà dễ tính, hỗ trợ người thuê nhiệt tình.')
, (5, 4, 0, N'Nhà trọ cũ, cần sửa chữa nhiều.')
, (6, 1, 1, N'Phòng rộng rãi, thoáng mát, an ninh tốt.')
, (7, 3, 0, N'Nước yếu vào buổi tối, hơi bất tiện.')
, (8, 5, 1, N'Giá phòng hợp lý, chủ nhà thân thiện.')
, (9, 2, 0, N'Mất wifi thường xuyên, không ổn định.')
, (10, 4, 1, N'Gần trung tâm, thuận tiện đi lại.')
, (11, 3, 0, N'Giá phòng quá cao so với chất lượng.')
, (12, 5, 1, N'Ký túc xá sạch sẽ, phù hợp sinh viên.')
, (13, 1, 1, N'Chủ nhà rất nhiệt tình, hỗ trợ hết mình.')
, (14, 2, 0, N'Có chuột vào ban đêm, hơi đáng sợ.')
, (15, 4, 1, N'Nhà vệ sinh sạch sẽ, không có mùi hôi.')
, (16, 1, 1, N'Phòng đẹp, thoáng mát, giá cả hợp lý.')
, (17, 2, 0, N'Gần đường lớn nhưng hơi ồn.')
, (18, 3, 1, N'Nhà rộng rãi, có bãi đỗ xe.')
, (19, 4, 1, N'Tiện nghi đầy đủ, chủ nhà thân thiện.')
GO
