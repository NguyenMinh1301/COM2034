-- Tạo database
CREATE DATABASE QLDA;
GO
USE QLDA;
GO

-- Tạo bảng
CREATE TABLE DIADIEM_PHG (
    MAPHG INT,
    DIADIEM NVARCHAR(50),
	PRIMARY KEY(MAPHG, DIADIEM)
);

CREATE TABLE CONGVIEC (
    MADA INT,
    STT INT,
    TEN_CONG_VIEC NVARCHAR(50),
    PRIMARY KEY (MADA, STT)
);

CREATE TABLE PHONGBAN (
    TENPHG NVARCHAR(50),
	MAPHG INT PRIMARY KEY,
    TRPHG CHAR(9) NOT NULL,
    NG_NHANCHUC DATE
);

CREATE TABLE DEAN (
	TENDA NVARCHAR(50),
    MADA INT PRIMARY KEY,
    DDIEM_DA NVARCHAR(50),
    PHONG INT
);

CREATE TABLE PHANCONG (
    MA_NVIEN CHAR(9),
    MADA INT,
    STT INT,
    THOIGIAN FLOAT,
    PRIMARY KEY (MA_NVIEN, MADA, STT)
);

CREATE TABLE THANNHAN (
    MA_NVIEN CHAR(9),
    TENTN NVARCHAR(50),
    PHAI NCHAR(3),
    NGSINH DATE,
    QUANHE NVARCHAR(50),
    PRIMARY KEY (MA_NVIEN, TENTN)
);

CREATE TABLE NHANVIEN (
    HONV NVARCHAR(15),
    TENLOT NVARCHAR(15),
    TENNV NVARCHAR(15),
    MANV CHAR(9) PRIMARY KEY,
    NGSINH DATE,
    DCHI NVARCHAR(30),
    PHAI NCHAR(3),
    LUONG FLOAT,
    MA_NQL CHAR(9),
    PHG INT
);

-- Thêm khóa ngoại cho bảng NHANVIEN
ALTER TABLE NHANVIEN
ADD FOREIGN KEY (PHG) REFERENCES PHONGBAN (MAPHG);

ALTER TABLE NHANVIEN
ADD FOREIGN KEY (MA_NQL) REFERENCES NHANVIEN (MANV);

-- Thêm khóa ngoại cho bảng PHONGBAN
ALTER TABLE PHONGBAN
ADD FOREIGN KEY (TRPHG) REFERENCES NHANVIEN (MANV);

-- Thêm khóa ngoại cho bảng DIADIEM_PHG
ALTER TABLE DIADIEM_PHG
ADD FOREIGN KEY (MAPHG) REFERENCES PHONGBAN (MAPHG);

-- Thêm khóa ngoại cho bảng DEAN
ALTER TABLE DEAN
ADD FOREIGN KEY (PHONG) REFERENCES PHONGBAN (MAPHG);

-- Thêm khóa ngoại cho bảng CONGVIEC
ALTER TABLE CONGVIEC
ADD FOREIGN KEY (MADA) REFERENCES DEAN (MADA);

-- Thêm khóa ngoại cho bảng PHANCONG
ALTER TABLE PHANCONG
ADD FOREIGN KEY (MA_NVIEN) REFERENCES NHANVIEN (MANV),
FOREIGN KEY (MADA, STT) REFERENCES CONGVIEC (MADA, STT);

-- Thêm khóa ngoại cho bảng THANNHAN
ALTER TABLE THANNHAN
ADD FOREIGN KEY (MA_NVIEN) REFERENCES NHANVIEN (MANV);
