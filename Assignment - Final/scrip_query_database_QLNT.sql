USE QLNHATRO_minhnqtv00291;
GO

--B1
CREATE OR ALTER PROC PROC_INSERT_NGUOIDUNG
	@TenNguoiDung NVARCHAR(100)
  , @GioiTinh NVARCHAR(3)
  , @DienThoai VARCHAR(10)
  , @DiaChi NVARCHAR(255)
  , @Email VARCHAR(254)
AS
	BEGIN
		BEGIN TRY
			IF @TenNguoiDung IS NULL OR @GioiTinh IS NULL OR @DienThoai IS NULL OR @DiaChi IS NULL OR @Email IS NULL
			BEGIN
				PRINT N'Lỗi vui lòng nhập đầy đủ thông tin'
			END

			INSERT INTO NGUOIDUNG VALUES (@TenNguoiDung, @GioiTinh, @DienThoai, @DiaChi, @Email)
			PRINT N'Thêm thành công'
		END TRY
		BEGIN CATCH
			PRINT N'Lỗi hệ thống: ' + ERROR_MESSAGE();
		END CATCH
	END
GO

CREATE OR ALTER PROC PROC_INSERT_NHATRO
	@MaLoaiNha INT
  , @DienTich FLOAT
  , @GiaPhong MONEY
  , @DiaChi NVARCHAR(255)
  , @Quan NVARCHAR(50)
  , @ThongTinNhaTro NVARCHAR(500)
  , @NgayDang DATE
  , @NguoiLienHe INT
AS
	BEGIN
		BEGIN TRY
			IF @MaLoaiNha IS NULL OR @DienTich IS NULL OR @GiaPhong IS NULL OR @DiaChi IS NULL OR @Quan IS NULL OR @ThongTinNhaTro IS NULL OR @NgayDang IS NULL OR @NguoiLienHe IS NULL
			BEGIN
				PRINT N'Lỗi vui lòng nhập đầy đủ thông tin'
			END

			INSERT INTO NHATRO VALUES (@MaLoaiNha, @DienTich, @GiaPhong, @DiaChi, @Quan, @ThongTinNhaTro, @NgayDang, @NguoiLienHe)
		END TRY
		BEGIN CATCH
			PRINT N'Lỗi hệ thống: ' + ERROR_MESSAGE();
		END CATCH
	END 

GO

CREATE OR ALTER PROC PROC_INSERT_DANHGIA
	@MaNguoiDung INT
  , @MaNhaTro INT
  , @DanhGia BIT
  , @NoiDungDanhGia NVARCHAR(500)
AS
	BEGIN
		BEGIN TRY
			IF @MaNguoiDung IS NULL OR @MaNhaTro IS NULL OR @DanhGia IS NULL OR @NoiDungDanhGia IS NULL
			BEGIN
				PRINT N'Lỗi vui lòng nhập đầy đủ thông tin'
			END

			INSERT INTO DANHGIA VALUES (@MaNguoiDung, @MaNhaTro, @DanhGia, @NoiDungDanhGia)
		END TRY
		BEGIN CATCH
			PRINT N'Lỗi hệ thống: ' + ERROR_MESSAGE();
		END CATCH
	END
GO

-- B2
CREATE OR ALTER PROC PROC_SEARCH_NHATRO
	@Quan NVARCHAR(50) = N'%'
  , @LoaiNhaTro NVARCHAR(50) = N'%'
  , @DienTichMin FLOAT = NULL
  , @DienTichMax FLOAT = NULL
  , @GiaPhongMin MONEY = NULL
  , @GiaPhongMax MONEY = NULL
  , @NgayDangMin DATE = NULL
  , @NgayDangMax DATE = NULL
AS
BEGIN
    IF (@DienTichMin IS NULL) SELECT @DienTichMin = MIN(Dientich) FROM NhaTro
    IF (@DienTichMax IS NULL) SELECT @DienTichMax = MAX(Dientich) FROM NhaTro
    IF (@GiaPhongMin IS NULL) SELECT @GiaPhongMin = MIN(GiaPhong) FROM NhaTro
    IF (@GiaPhongMax IS NULL) SELECT @GiaPhongMax = MAX(GiaPhong) FROM NhaTro
    IF (@NgayDangMin IS NULL) SELECT @NgayDangMin = MIN(NgayDang) FROM NhaTro
    IF (@NgayDangMax IS NULL) SELECT @NgayDangMax = MAX(NgayDang) FROM NhaTro
	SELECT
		N'Địa chỉ: ' + nt.DiaChi AS DiaChiPhongTro
	  , REPLACE(CONVERT(varchar, DienTich),'.',',') + ' m2' AS N'DienTich'
	  , REPLACE(LEFT(CONVERT(varchar,GiaPhong,1), LEN(CONVERT(varchar,GiaPhong,1))-3),',','.') AS GiaPhong 
	  , ThongTinNhaTro
	  , CONVERT(varchar,NgayDang,105) AS NgayDang 
	  , CASE GioiTinh
			WHEN 'Nam' THEN 'A.' + nd.TenNguoiDung
			WHEN N'Nữ' THEN 'C.' + nd.TenNguoiDung 
		END AS NguoiLienHe
	  , nd.DienThoai
	  , N'Địa chỉ: ' + nd.DiaChi AS DiaChiChuNha
	FROM NHATRO nt INNER JOIN NGUOIDUNG nd ON nt.NguoiLienHe = nd.MaNguoiDung
	WHERE (nt.Quan LIKE @Quan) 
		  AND (nt.MaLoaiNha LIKE @LoaiNhaTro)
		  AND (DienTich BETWEEN @DienTichMin AND @DienTichMax)
		  AND (GiaPhong BETWEEN @GiaPhongMin AND @GiaPhongMax)
		  AND (NgayDang >= @NgayDangMin AND NgayDang <= @NgayDangMax)
END

GO

-- B3
IF OBJECT_ID('FUNC_MaNguoiDung') IS NOT NULL
	DROP FUNCTION FUNC_MaNguoiDung
GO

CREATE OR ALTER FUNCTION FUNC_MaNguoiDung (
	@TenNguoiDung NVARCHAR(50) = N'%'
  , @DienThoai NVARCHAR(12) = N'%'
  , @Quan NVARCHAR(50) = N'%'
)
RETURNS TABLE
RETURN (SELECT MaNguoiDung FROM NGUOIDUNG WHERE TenNguoiDung LIKE @TenNguoiDung AND DienThoai LIKE @DienThoai AND Quan LIKE @Quan)

GO
 
-- B4
CREATE OR ALTER VIEW VIEW_TOP10NHATRO 
AS
SELECT TOP 10 nt.DienTich, nt.GiaPhong, nt.ThongTinNhaTro, nt.NgayDang, nd.TenNguoiDung AS TenNguoiLienHe, nd.DiaChi, nd.DienThoai, nd.Email FROM NHATRO nt
JOIN NGUOIDUNG nd ON nt.NguoiLienHe = nd.MaNguoiDung
ORDER BY (SELECT COUNT(*) FROM DANHGIA 
WHERE MaNhaTro = nt.MaNhaTro AND DanhGia = 1) DESC;

GO

-- B5
CREATE PROCEDURE sp_GetDanhGiaByMaNhaTro
    @MaNhaTro INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        dg.MaNhaTro
      , nd.TenNguoiDung AS TenNguoiDanhGia
      , CASE 
            WHEN dg.DanhGia = 1 THEN 'LIKE'
            WHEN dg.DanhGia = 0 THEN 'DISLIKE'
            ELSE 'UNKNOWN'
        END AS TrangThai
      , dg.NoiDungDanhGia
    FROM DANHGIA dg
    JOIN NGUOIDUNG nd ON dg.MaNguoiDung = nd.MaNguoiDung
    WHERE dg.MaNhaTro = @MaNhaTro;
END

GO

-- Câu 3
-- B1
CREATE OR ALTER PROCEDURE PROC_XOANHATRONHIEUDISLIKE
    @SoLuongDislike INT
AS
BEGIN
    BEGIN TRANSACTION;
    DELETE FROM DANHGIA 
	WHERE MaNhaTro IN (SELECT MaNhaTro FROM DANHGIA 
	WHERE DanhGia = 0
	GROUP BY MaNhaTro 
	HAVING COUNT(*) > @SoLuongDislike);
    DELETE FROM NHATRO 
	WHERE MaNhaTro IN (SELECT MaNhaTro FROM DANHGIA 
	WHERE DanhGia = 0
	GROUP BY MaNhaTro 
	HAVING COUNT(*) > @SoLuongDislike);
    COMMIT TRANSACTION;
END;

GO

-- B2
CREATE OR ALTER PROCEDURE PROC_XOANHATROTHEOTHOIGIAN
    @NgayBD DATE, 
	@NgayKT DATE
AS
BEGIN
    BEGIN TRANSACTION;
    DELETE FROM DANHGIA 
	WHERE MaNhaTro IN (SELECT MaNhaTro FROM NHATRO 
	WHERE NgayDang BETWEEN @NgayBD AND @NgayKT);
    DELETE FROM NHATRO 
	WHERE NgayDang BETWEEN @NgayBD AND @NgayKT;
    COMMIT TRANSACTION;
END;


















