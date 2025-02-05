USE QLDA;

-- Câu 1
-- B1: Tạo bảng tạm @LUONGTB để lưu thông tin lương trung bình theo phòng ban
DECLARE @LUONGTB TABLE (PHG INT, LUONGTB FLOAT)
INSERT INTO @LUONGTB 
	SELECT PHG
		 , AVG(LUONG) 
	FROM NHANVIEN 
	GROUP BY PHG

-- Lấy thông tin nhân viên, phòng ban, lương, lương trung bình và đánh giá lương
SELECT CONCAT(NV.HONV, ' ', NV.TENLOT, ' ',NV.TENNV) 
	 , NV.PHG
	 , NV.LUONG
	 , TB.LUONGTB
	 , XEMXET = CASE WHEN NV.LUONG > TB.LUONGTB THEN 'KHONGTANGLUONG'
					 WHEN NV.LUONG < TB.LUONGTB THEN 'TANGLUONG'
					 WHEN NV.LUONG = TB.LUONGTB THEN 'KHONGTHUCHIEN'
					 ELSE 'LOI'
				END
FROM NHANVIEN NV INNER JOIN @LUONGTB TB ON NV.PHG = TB.PHG
ORDER BY NV.PHG ASC;

-- B2: Tạo bảng tạm @LUONGTB2 để lưu thông tin lương trung bình theo phòng ban
DECLARE @LUONGTB2 TABLE (PHG INT, LUONGTB FLOAT)
INSERT INTO @LUONGTB2 
	SELECT PHG
		 , AVG(LUONG) 
	FROM NHANVIEN 
	GROUP BY PHG

-- Lấy thông tin nhân viên, phòng ban, lương, lương trung bình và đánh giá chức vụ
SELECT CONCAT(NV.HONV, ' ', NV.TENLOT, ' ',NV.TENNV) 
	 , NV.PHG
	 , NV.LUONG
	 , TB.LUONGTB
	 , CASE WHEN NV.LUONG > TB.LUONGTB THEN 'TRUONGPHONG'
			WHEN NV.LUONG < TB.LUONGTB THEN 'NHANVIEN'
			WHEN NV.LUONG = TB.LUONGTB THEN 'KHONGTHUCHIEN'
			ELSE 'LOI'
	   END AS XEMXET
FROM NHANVIEN NV INNER JOIN @LUONGTB2 TB ON NV.PHG = TB.PHG
ORDER BY NV.PHG ASC;

-- B3: Định dạng tên nhân viên dựa trên giới tính
SELECT CASE WHEN PHAI = 'Nam' THEN CONCAT('Mr. ' + HONV, ' ', TENLOT, ' ', TENNV)
			WHEN PHAI = N'Nữ' THEN CONCAT('Ms. ' + HONV, ' ', TENLOT, ' ', TENNV)
			ELSE 'GIOITINHTHU3'
END AS TENNV
FROM NHANVIEN 

-- B4: Tính lương sau thuế và phần trăm thuế cho từng nhân viên
SELECT TENNV
	 , LUONG
	 , CASE WHEN LUONG BETWEEN 0 AND 25000 THEN LUONG * 0.1
			WHEN LUONG BETWEEN 25000 AND 30000 THEN LUONG * 0.12
			WHEN LUONG BETWEEN 30000 AND 40000 THEN LUONG * 0.15
			WHEN LUONG BETWEEN 40000 AND 50000 THEN LUONG * 0.2
			ELSE NULL
	   END AS LUONGSAUTHUE
	 , CASE WHEN LUONG BETWEEN 0 AND 25000 THEN '10%'
            WHEN LUONG BETWEEN 25001 AND 30000 THEN '12%'
            WHEN LUONG BETWEEN 30001 AND 40000 THEN '15%'
            WHEN LUONG BETWEEN 40001 AND 50000 THEN '20%'
            ELSE 'LOI'
       END AS PHANTRAMTHUE
FROM NHANVIEN

-- Câu 2
-- B1: Lặp qua danh sách nhân viên với ID chẵn
DECLARE @i INT = 2
	  , @COUNT INT
-- Đếm tổng số nhân viên
SET @COUNT = (
				SELECT COUNT(MANV) 
				FROM NHANVIEN
			 )
WHILE(@I <= @COUNT)
	BEGIN
		-- Lấy thông tin nhân viên có ID chẵn
		SELECT MANV
			 , CONCAT(HONV, ' ', TENLOT, ' ', TENNV) 
		FROM NHANVIEN
		WHERE CAST(MANV AS INT) = @i
		SET @i = @i + 2;
	END

-- B2: Lặp qua danh sách nhân viên với ID chẵn, bỏ qua ID = 4
DECLARE @i2 INT = 2
	  , @COUNT2 INT
SET @COUNT2 = (
				SELECT COUNT(MANV) 
				FROM NHANVIEN
			 )
WHILE(@i2 <= @COUNT2)
	BEGIN
		-- Bỏ qua nhân viên có ID = 4
		IF(@i2 = 4)
			BEGIN
				SET @i2 = @i2 + 2;
				CONTINUE;
			END
		-- Lấy thông tin nhân viên còn lại
		SELECT MANV
			 , CONCAT(HONV, ' ', TENLOT, ' ', TENNV) 
		FROM NHANVIEN
		WHERE CAST(MANV AS INT) = @i2
		SET @i2 = @i2 + 2;
	END

-- Câu 3
-- B1: Thêm mới một phòng ban, xử lý lỗi nếu có
BEGIN TRY
	INSERT INTO PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
	VALUES(7, N'Đào tạo', 1, '1999-01-13')
	PRINT N'Thêm dữ liệu thành công'
END TRY

BEGIN CATCH
	PRINT N'Thêm dữ liệu thất bại'
END CATCH

-- B2: Xử lý lỗi khi thực hiện phép chia
BEGIN TRY
    DECLARE @a INT = 4 
          , @b INT = 0
          , @result INT;
	-- Thực hiện phép chia (gây lỗi chia cho 0)
	SET @result = @a / @b; 
END TRY

BEGIN CATCH
    DECLARE @ErMessage NVARCHAR(2048)
          , @ErSeverity INT
          , @ErState INT;
    -- Lấy thông tin lỗi
    SELECT @ErMessage = ERROR_MESSAGE()
         , @ErSeverity = ERROR_SEVERITY()
         , @ErState = ERROR_STATE();
    -- Hiển thị thông báo lỗi
    RAISERROR(
				  @ErMessage
				, @ErSeverity
				, @ErState
			 );
END CATCH;
