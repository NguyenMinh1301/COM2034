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
INSERT INTO NGUOIDUNG (TenNguoiDung, GioiTinh, DienThoai, DiaChi, Quan, Email) VALUES
  (N'Phan Quốc Huy', N'Nam', '0900000001', N'Số 12, TP.HCM', N'Quận 1', 'huy.phan@gmail.com')
, (N'Nguyễn Tiến Bình', N'Nam', '0900000002', N'Số 34, TP.HCM', N'Quận 2', 'tienbinh.nguyen@yahoo.com')
, (N'Nguyễn Thành Luân', N'Nam', '0900000003', N'Số 56, TP.HCM', N'Quận 3', 'thanh.luan@outlook.com')
, (N'Nguyễn Hữu Anh Duy', N'Nam', '0900000004', N'Số 78, TP.HCM', N'Quận 4', 'duy.nguyen@hotmail.com')
, (N'Đặng Tấn Lộc', N'Nam', '0900000005', N'Số 90, TP.HCM', N'Quận 5', 'loc.dang@zoho.com')
, (N'Trần Văn Bảo', N'Nam', '0910000051', N'Số 12, TP.HCM', N'Quận 6', 'tran.vbao@icloud.com')
, (N'Nguyễn Thị Hương', N'Nữ', '0910000052', N'Số 88, TP.HCM', N'Quận 7', 'huongth.nguyen@gmail.com')
, (N'Phạm Văn Lâm', N'Nam', '0910000053', N'Số 23, TP.HCM', N'Quận 8', 'pvanlam@yahoo.com')
, (N'Lê Minh Đức', N'Nam', '0910000054', N'Số 45, TP.HCM', N'Quận 9', 'minhduc.le@outlook.com')
, (N'Vũ Thị Lan', N'Nữ', '0910000055', N'Số 67, TP.HCM', N'Quận 10', 'lanvu.work@gmail.com')
, (N'Trương Minh Tâm', N'Nam', '0920000056', N'Số 89, TP.HCM', N'Quận 11', 'truongtam@live.com')
, (N'Đỗ Văn Khoa', N'Nam', '0920000057', N'Số 34, TP.HCM', N'Quận 12', 'dokhoa.tech@hotmail.com')
, (N'Bùi Thị Thanh', N'Nữ', '0920000058', N'Số 56, TP.HCM', N'Quận Tân Bình', 'thanhbui@protonmail.com')
, (N'Huỳnh Văn Hòa', N'Nam', '0920000059', N'Số 78, TP.HCM', N'Quận Bình Thạnh', 'vanhoa.huynh@icloud.com')
, (N'Nguyễn Minh Quân', N'Nam', '0930000060', N'Số 11, TP.HCM', N'Quận Gò Vấp', 'minhquan.n@gmail.com')
, (N'Phạm Thị Thảo', N'Nữ', '0930000061', N'Số 99, TP.HCM', N'Quận Phú Nhuận', 'pthao99@outlook.com')
, (N'Lê Văn Nghĩa', N'Nam', '0930000062', N'Số 44, TP.HCM', N'Quận Tân Phú', 'nghia.lv@yahoo.com')
, (N'Trần Thị Mỹ Linh', N'Nữ', '0940000063', N'Số 66, TP.HCM', N'Quận 7', 'my.linh.tran@gmail.com')
, (N'Võ Quang Hưng', N'Nam', '0940000064', N'Số 88, TP.HCM', N'Quận 9', 'vq.hung@protonmail.com')
, (N'Nguyễn Quang Minh', N'Nam', '0940022012', N'Số 21, TP.HCM', N'Quận 12', 'ng.quang.minh@gmail.com')
, (N'Thế Hoàng Vũ', N'Nam', '0977022012', N'Số 01, TP.HCM', N'Quận 1', 'hoangvu.business@zoho.com')
, (N'Phan Bảo Long', N'Nam', '0972012242', N'Số 12, TP.HCM', N'Quận 2', 'pbaolong@gmail.com')
, (N'Trần Xuân Nhật', N'Nam', '0920062012', N'Số 422, TP.HCM', N'Quận 7', 'xuan.nhat.tran@icloud.com')
, (N'Nguyễn Thảo Vy', N'Nữ', '0919122612', N'Số 221, TP.HCM', N'Quận 6', 'thaovy.nguyen@live.com')
, (N'Lê Hải Đăng', N'Nam', '0950001001', N'Số 10, TP.HCM', N'Quận 1', 'haidang.le@zoho.com')
, (N'Võ Nhật Nam', N'Nam', '0950001002', N'Số 20, TP.HCM', N'Quận 2', 'nhatnam.vo@gmail.com')
, (N'Bùi Thị Hoa', N'Nữ', '0950001003', N'Số 30, TP.HCM', N'Quận 3', 'bthoa@yahoo.com')
, (N'Đặng Minh Hoàng', N'Nam', '0950001004', N'Số 40, TP.HCM', N'Quận 4', 'minhhoang.dang@outlook.com')
, (N'Ngô Bảo Châu', N'Nữ', '0950001005', N'Số 50, TP.HCM', N'Quận 5', 'bao.chau@icloud.com')
, (N'Trịnh Hoàng Long', N'Nam', '0950001006', N'Số 60, TP.HCM', N'Quận 6', 'hoanglong.trinh@gmail.com')
, (N'Nguyễn Mai Anh', N'Nữ', '0950001007', N'Số 70, TP.HCM', N'Quận 7', 'mai.anh@protonmail.com')
, (N'Lý Văn Toàn', N'Nam', '0950001008', N'Số 80, TP.HCM', N'Quận 8', 'van.toan@live.com')
, (N'Trần Đức Trung', N'Nam', '0950001009', N'Số 90, TP.HCM', N'Quận 9', 'ductrung.tran@yahoo.com')
, (N'Phan Thị Thu', N'Nữ', '0950001010', N'Số 100, TP.HCM', N'Quận 10', 'thithu.phan@gmail.com')
, (N'Đỗ Văn Tâm', N'Nam', '0950001011', N'Số 110, TP.HCM', N'Quận 11', 'tamvan.do@icloud.com')
, (N'Hà Thị Thanh', N'Nữ', '0950001012', N'Số 120, TP.HCM', N'Quận 12', 'hathanh@outlook.com')
, (N'Nguyễn Quang Hải', N'Nam', '0950001013', N'Số 130, TP.HCM', N'Quận Bình Thạnh', 'quang.hai.nguyen@zoho.com')
, (N'Phạm Hồng Sơn', N'Nam', '0950001014', N'Số 140, TP.HCM', N'Quận Tân Bình', 'hongson.pham@gmail.com')
, (N'Trịnh Bảo Ngọc', N'Nữ', '0950001015', N'Số 150, TP.HCM', N'Quận Tân Phú', 'baongoc.trinh@live.com')
, (N'Lương Thế Vinh', N'Nam', '0950001016', N'Số 160, TP.HCM', N'Quận Gò Vấp', 'thevinh.luong@hotmail.com')
, (N'Hoàng Văn Tiến', N'Nam', '0967001001', N'Số 99, TP.HCM', N'Quận 1', 'tien.hoang@gmail.com')
, (N'Lê Thị Thanh', N'Nữ', '0967001002', N'Số 88, TP.HCM', N'Quận 2', 'thanh.le@yahoo.com')
, (N'Phạm Minh Anh', N'Nam', '0967001003', N'Số 77, TP.HCM', N'Quận 3', 'minhanh.pham@outlook.com')
, (N'Đặng Quỳnh Hoa', N'Nữ', '0967001004', N'Số 66, TP.HCM', N'Quận 4', 'quynhhoa.dang@hotmail.com')
, (N'Nguyễn Văn Dũng', N'Nam', '0967001005', N'Số 55, TP.HCM', N'Quận 5', 'dung.nguyen@zoho.com')
, (N'Trần Thị Hạnh', N'Nữ', '0967001006', N'Số 44, TP.HCM', N'Quận 6', 'hanh.tran@icloud.com')
, (N'Bùi Hữu Phước', N'Nam', '0967001007', N'Số 33, TP.HCM', N'Quận 7', 'huuphuoc.bui@gmail.com')
, (N'Võ Tấn Tài', N'Nam', '0967001008', N'Số 22, TP.HCM', N'Quận 8', 'tantai.vo@protonmail.com')
, (N'Lý Minh Khoa', N'Nam', '0967001009', N'Số 11, TP.HCM', N'Quận 9', 'minhkhoa.ly@live.com')
, (N'Ngô Thị Lan', N'Nữ', '0967001010', N'Số 00, TP.HCM', N'Quận 10', 'lan.ngo@outlook.com');
GO


-- Bảng NHATRO
INSERT INTO NHATRO (MaLoaiNha, DienTich, GiaPhong, DiaChi, Quan, ThongTinNhaTro, NgayDang, NguoiLienHe) VALUES
  (1, 25.5, 2500000, N'Số 123, TP.HCM', N'Quận 1', N'Phòng trọ giá rẻ, gần trường học.', '2025-01-18', 1)
, (2, 40.2, 5000000, N'Số 234, TP.HCM', N'Quận 2', N'Căn hộ mini đầy đủ nội thất.', '2025-02-26', 2)
, (3, 72.4, 10000000, N'Số 345, TP.HCM', N'Quận 3', N'Nhà nguyên căn 2 phòng ngủ.', '2025-01-13', 3)
, (4, 35.0, 4000000, N'Số 456, TP.HCM', N'Quận 4', N'Chung cư mini có bảo vệ 24/7.', '2025-01-01', 4)
, (5, 15.5, 1500000, N'Số 567, TP.HCM', N'Quận 5', N'Ký túc xá giường tầng, giá sinh viên.', '2025-02-21', 5)
, (1, 20, 2500000, N'123 Đường Lê Văn Sỹ', N'Quận 3', N'Nhà trọ có gác, gần trung tâm, an ninh tốt', '2025-02-01', 6)
, (2, 30, 3500000, N'56 Đường Nguyễn Thị Minh Khai', N'Quận 1', N'Phòng rộng rãi, có máy lạnh, wifi miễn phí', '2025-02-05', 7)
, (3, 25, 2800000, N'78 Đường Hoàng Văn Thụ', N'Quận Tân Bình', N'Khu vực yên tĩnh, gần sân bay, thuận tiện di chuyển', '2025-01-28', 8)
, (1, 18, 2200000, N'90 Đường Trần Hưng Đạo', N'Quận 5', N'Phòng mới xây, có nội thất cơ bản, giờ giấc tự do', '2025-02-10', 9)
, (2, 35, 4200000, N'12 Đường Võ Văn Ngân', N'Thủ Đức', N'Khu trọ cao cấp, bảo vệ 24/7, gần đại học', '2025-02-07', 10)
, (3, 40, 5000000, N'65 Đường Lê Hồng Phong', N'Quận 10', N'Có ban công thoáng mát, đầy đủ tiện nghi', '2025-01-25', 11)
, (1, 22, 2600000, N'34 Đường Nguyễn Kiệm', N'Quận Gò Vấp', N'Phòng sạch sẽ, chủ trọ thân thiện, miễn phí để xe', '2025-02-12', 12)
, (2, 28, 3200000, N'88 Đường Quang Trung', N'Quận 12', N'Gần chợ, trường học, có chỗ nấu ăn riêng', '2025-02-08', 13)
, (3, 50, 6000000, N'21 Đường Phan Xích Long', N'Quận Phú Nhuận', N'Phòng cao cấp, nội thất sang trọng, có máy giặt', '2025-02-15', 14)
, (1, 19, 2300000, N'77 Đường Hậu Giang', N'Quận 6', N'Giá rẻ, có chỗ để xe miễn phí, giờ giấc linh hoạt', '2025-02-03', 15);
GO

-- Bảng DANHGIA
-- Chèn đánh giá cho các nhà trọ với thứ tự ngẫu nhiên
INSERT INTO DANHGIA (MaNguoiDung, MaNhaTro, DanhGia, NoiDungDanhGia) VALUES
  (4, 10, 1, N'Nhà trọ rộng rãi, có chỗ đậu xe máy.')
, (14, 7, 0, N'Có chuột vào ban đêm, cần khắc phục.')
, (20, 11, 1, N'Nhà trọ rộng rãi, có chỗ đậu xe máy.')
, (2, 8, 0, N'Nước yếu vào buổi tối, cần cải thiện.')
, (18, 5, 1, N'Cơ sở vật chất mới, nội thất đầy đủ.')
, (3, 11, 0, N'Có chuột vào ban đêm, cần khắc phục.')
, (6, 11, 1, N'Vị trí gần chợ, thuận tiện mua sắm.')
, (9, 13, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (16, 6, 0, N'Phòng khá cũ, cần sửa chữa nhiều.')
, (42, 8, 0, N'Phòng hơi nhỏ, cần cải thiện nội thất.')
, (33, 13, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (15, 9, 1, N'Chủ nhà nhiệt tình, hỗ trợ rất tốt.')
, (41, 2, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (32, 5, 0, N'Có chuột vào ban đêm, cần khắc phục.')
, (10, 12, 1, N'Chủ nhà nhiệt tình, hỗ trợ rất tốt.')
, (11, 3, 1, N'Không gian yên tĩnh, phù hợp nghỉ ngơi.')
, (36, 8, 1, N'Giá hợp lý, chủ nhà hỗ trợ nhiệt tình.')
, (37, 4, 1, N'Vị trí thuận lợi, an ninh tốt, có bãi giữ xe.')
, (8, 3, 0, N'Mạng wifi yếu vào giờ cao điểm, hơi bất tiện.')
, (35, 8, 1, N'Giá phòng hợp lý, gần siêu thị, thuận tiện sinh hoạt.')
, (21, 1, 1, N'Vị trí thuận lợi, an ninh tốt, có bãi giữ xe.')
, (30, 12, 0, N'Vị trí xa trung tâm, hơi bất tiện khi đi làm.')
, (23, 10, 1, N'Không gian rộng rãi, có camera an ninh.')
, (29, 5, 0, N'Có chuột vào ban đêm, cần khắc phục.')
, (7, 5, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (38, 4, 0, N'Nước yếu vào buổi tối, cần cải thiện.')
, (39, 10, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (28, 14, 1, N'Nhà trọ mới, tiện nghi đầy đủ, không gian thoáng mát.')
, (1, 8, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (44, 12, 0, N'Nước yếu vào buổi tối, cần cải thiện.')
, (19, 9, 0, N'Vị trí xa trung tâm, hơi bất tiện khi đi làm.')
, (12, 12, 0, N'Gần đường lớn nhưng hơi ồn vào ban đêm.')
, (45, 1, 0, N'Vị trí xa trung tâm, hơi bất tiện khi đi làm.')
, (25, 10, 1, N'Cơ sở vật chất mới, nội thất đầy đủ.')
, (34, 1, 1, N'Vị trí thuận lợi, an ninh tốt, có bãi giữ xe.')
, (22, 4, 1, N'Giá hợp lý, chủ nhà hỗ trợ nhiệt tình.')
, (27, 2, 1, N'Nhà trọ sạch sẽ, tiện nghi, chủ nhà thân thiện.')
, (43, 13, 1, N'Nhà trọ mới, tiện nghi đầy đủ, không gian thoáng mát.')
, (17, 1, 0, N'Phòng hơi nhỏ, cần cải thiện nội thất.')
, (24, 1, 1, N'Nhà vệ sinh sạch sẽ, không có mùi hôi.')
, (13, 8, 1, N'Nhà trọ rộng rãi, có chỗ đậu xe máy.')
, (5, 10, 1, N'Nhà vệ sinh sạch sẽ, không có mùi hôi.')
, (26, 15, 1, N'Nhà vệ sinh sạch sẽ, không có mùi hôi.')
, (31, 2, 1, N'Nhà trọ mới, tiện nghi đầy đủ, không gian thoáng mát.')
, (40, 13, 1, N'Cơ sở vật chất mới, nội thất đầy đủ.');
GO