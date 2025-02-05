USE QLDA;
GO

-- Bài 1
-- B1
CREATE OR ALTER PROC Lab05_Bai1_B1
	@ten NVARCHAR(20)
AS
	BEGIN
		PRINT N'Xin chào ' + @ten
	END
GO
EXEC Lab05_Bai1_B1 N'Nguyễn Quang Minh'
GO

-- B2
CREATE OR ALTER PROC Lab05_Bai1_B2
	@s1 FLOAT
  , @s2 FLOAT
AS
	BEGIN
		DECLARE @tong FLOAT;
		SET @tong = @s1 + @s2
		PRINT N'Tổng là: ' + CAST(@tong AS NVARCHAR)
	END
GO
EXEC Lab05_Bai1_B2 10, 10
GO

-- B3
CREATE OR ALTER PROC Lab05_Bai1_B3
	@n INT
AS
	BEGIN
		DECLARE @tong INT = 0, @i INT = 2
		WHILE(@i <= @n)
			BEGIN
				IF(@i % 2 = 0)
					BEGIN
						SET @tong = @tong + @i
					END
				SET @i = @i + 2
			END
		PRINT N'Tổng số chẵn là: ' + CAST(@tong AS NVARCHAR)
	END
GO
EXEC Lab05_Bai1_B3 10
GO

-- B4
CREATE OR ALTER PROC Lab05_Bai1_B4
	@s1 INT
  , @s2 INT
AS
	BEGIN
		WHILE(@s1 != @s2)
			BEGIN
				IF(@s1 > @s2)
					SET @s1 = @s1 - @s2
				ELSE
					SET @s2 = @s2 - @s1
			END
			PRINT N'Ước chung lớn nhất là: ' + CAST(@s2 AS NVARCHAR)
	END
GO
EXEC Lab05_Bai1_B4 18, 22
GO

-- Bài 2
-- B1
CREATE OR ALTER PROC Lab05_Bai2_B1
	@manv NVARCHAR(9)
AS
	BEGIN
		SELECT * FROM NHANVIEN
		WHERE manv = @manv
	END
GO
EXEC Lab05_Bai2_B1 '001'
GO

-- B2
CREATE OR ALTER PROC Lab05_Bai2_B2
	@mada INT
AS
	BEGIN
		SELECT COUNT(MANV) AS N'Tổng số nhân viên'
			 , mada FROM NHANVIEN NV
		INNER JOIN DEAN DA ON NV.PHG = DA.PHONG
		GROUP BY mada
		HAVING mada = @mada
	END
GO
EXEC Lab05_Bai2_B2 2
GO

-- B3
CREATE OR ALTER PROC Lab05_Bai2_B3
	@mada INT
  , @ddiem_da NVARCHAR(50)
AS
	BEGIN
		SELECT COUNT(MANV) AS N'Tổng số nhân viên'
			 , mada AS N'Mã đề án'
			 , ddiem_da AS N'Địa điểm'
			 FROM NHANVIEN NV
		INNER JOIN DEAN DA ON NV.PHG = DA.PHONG
		GROUP BY mada
			   , ddiem_da
		HAVING mada = @mada AND ddiem_da = @ddiem_da
	END
GO
EXEC Lab05_Bai2_B3 1, N'Vũng Tàu'
GO

-- B4
CREATE OR ALTER PROC Lab05_Bai2_B4
	@trphg CHAR(9)
AS
	BEGIN
		SELECT CONCAT(NV.HONV, ' ', NV.TENLOT, ' ', NV.TENNV) AS N'Họ tên'
			 , NV.MANV
			 , NV.DCHI
			 , NV.PHAI
			 , NV.LUONG
			 , NV.MA_NQL
			 , PB.TENPHG
			 , PB.TRPHG
		FROM NHANVIEN NV
		JOIN PHONGBAN PB ON PB.TRPHG = NV.MANV
		LEFT JOIN THANNHAN TN ON TN.MA_NVIEN = NV.MANV
		WHERE PB.TRPHG = @trphg AND TN.MA_NVIEN IS NULL
	END
GO
EXEC Lab05_Bai2_B4 '006'
GO

-- B5
CREATE OR ALTER PROC Lab05_Bai2_B5
	@manv NVARCHAR(9)
  , @mapb INT
AS
	BEGIN
		IF EXISTS (SELECT * FROM NHANVIEN NV WHERE NV.MANV = @manv AND NV.PHG = @mapb)
			PRINT N'Nhân viên: ' + @manv + N' CÓ! thuộc phòng: ' + CAST(@mapb AS NVARCHAR)
		ELSE 
			PRINT N'Nhân viên: ' + @manv + N' KHÔNG! thuộc phòng: ' + CAST(@mapb AS NVARCHAR)
	END
GO
EXEC Lab05_Bai2_B5 '001', 4
GO
EXEC Lab05_Bai2_B5 '001', 2
GO

-- Bài 3
-- B1
CREATE OR ALTER PROCEDURE Lab05_Bai3_B1
      @TenPHG NVARCHAR(50)
    , @MAPHG INT
    , @TRPHG CHAR(9)
    , @NG_NHANCHUC DATE
AS
BEGIN
    IF EXISTS (SELECT * FROM PHONGBAN WHERE MAPHG = @MAPHG)
    BEGIN
        PRINT N'Phòng ban đã tồn tại. Không thể thêm.'
    END
    ELSE
    BEGIN
        INSERT INTO PHONGBAN (TENPHG, MAPHG, TRPHG, NG_NHANCHUC)
        VALUES (@TenPHG, @MAPHG, @TRPHG, @NG_NHANCHUC)
        PRINT N'Đã thêm phòng ban thành công.'
    END
END
GO

EXEC Lab05_Bai3_B1 N'CNTT', 10, '007', '2025-01-01'
GO


-- B2
CREATE OR ALTER PROCEDURE Lab05_Bai3_B2
AS
BEGIN
    UPDATE PHONGBAN
    SET TENPHG = N'IT'
    WHERE TENPHG = N'CNTT'

    PRINT N'Đã cập nhật phòng CNTT thành IT.'
END
GO

EXEC Lab05_Bai3_B2
GO

-- B3
CREATE OR ALTER PROCEDURE Lab05_Bai3_B3
      @HONV NVARCHAR(15)
    , @TENLOT NVARCHAR(15)
    , @TENNV NVARCHAR(15)
    , @MANV CHAR(9)
    , @NGSINH DATE
    , @DCHI NVARCHAR(50)
    , @PHAI NCHAR(3)
    , @LUONG FLOAT
AS
BEGIN
    DECLARE @TUOI INT, @MA_NQL CHAR(9), @PHG INT

    -- Tính tuổi nhân viên
    SET @TUOI = DATEDIFF(YEAR, @NGSINH, GETDATE())

    -- Xác định trưởng phòng dựa trên lương
    IF @LUONG < 25000
        SET @MA_NQL = '009'
    ELSE
        SET @MA_NQL = '005'

    -- Kiểm tra tuổi
    IF (@PHAI = N'Nam' AND (@TUOI < 18 OR @TUOI > 65))
    BEGIN
        PRINT N'Lỗi: Nhân viên nam phải từ 18 đến 65 tuổi.'
        RETURN
    END
    ELSE IF (@PHAI = N'Nữ' AND (@TUOI < 18 OR @TUOI > 60))
    BEGIN
        PRINT N'Lỗi: Nhân viên nữ phải từ 18 đến 60 tuổi.'
        RETURN
    END

    -- Lấy mã phòng ban IT
    SELECT @PHG = MAPHG FROM PHONGBAN WHERE TENPHG = N'IT'

    -- Kiểm tra phòng ban IT có tồn tại không
    IF @PHG IS NULL
    BEGIN
        PRINT N'Lỗi: Phòng IT chưa tồn tại.'
        RETURN
    END

    -- Chèn nhân viên vào bảng NHANVIEN
    INSERT INTO NHANVIEN (HONV, TENLOT, TENNV, MANV, NGSINH, DCHI, PHAI, LUONG, MA_NQL, PHG)
    VALUES (@HONV, @TENLOT, @TENNV, @MANV, @NGSINH, @DCHI, @PHAI, @LUONG, @MA_NQL, @PHG)

    PRINT N'Đã thêm nhân viên thành công.'
END
GO

EXEC Lab05_Bai3_B3 N'Nguyễn', N'Quang', N'Minh', '010', '1990-05-15', N'Thuận An, Bình Dương', N'Nam', 30000
GO





































