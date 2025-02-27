-- Tạo cơ sở dữ liệu
CREATE DATABASE QLNHATRO_minhnqtv00291;
GO
USE QLNHATRO_minhnqtv00291;
GO

-- Bảng LOAINHA: Lưu loại hình nhà trọ
CREATE TABLE LOAINHA (
    MaLoaiNha INT IDENTITY(1,1) PRIMARY KEY
  , TenLoaiNha NVARCHAR(100) NOT NULL
);

-- Bảng NGUOIDUNG: Lưu thông tin người dùng
CREATE TABLE NGUOIDUNG (
    MaNguoiDung INT IDENTITY(1,1) PRIMARY KEY
  , TenNguoiDung NVARCHAR(100) NOT NULL
  , GioiTinh NVARCHAR(3) NOT NULL CHECK (GioiTinh IN (N'Nam', N'Nữ'))
  , DienThoai VARCHAR(10) UNIQUE NOT NULL
  , DiaChi NVARCHAR(255) NOT NULL
  , Email VARCHAR(254) UNIQUE NOT NULL
);

-- Bảng NHATRO: Lưu thông tin nhà trọ
CREATE TABLE NHATRO (
    MaNhaTro INT IDENTITY(1,1) PRIMARY KEY
  , MaLoaiNha INT NOT NULL
  , DienTich FLOAT NOT NULL CHECK (DienTich > 0)
  , GiaPhong MONEY NOT NULL CHECK (GiaPhong > 0)
  , DiaChi NVARCHAR(255) NOT NULL
  , ThongTinNhaTro NVARCHAR(500)
  , NgayDang DATE NOT NULL
  , NguoiLienHe INT NOT NULL
);

-- Bảng DANHGIA: Lưu đánh giá của người dùng về nhà trọ
CREATE TABLE DANHGIA (
    MaDanhGia INT IDENTITY(1,1) 
  , MaNguoiDung INT
  , MaNhaTro INT
  , DanhGia BIT
  , NoiDungDanhGia NVARCHAR(500)
  , PRIMARY KEY(MaDanhGia, MaNguoiDung, MaNhaTro)
);

-- Thêm khóa ngoại
ALTER TABLE NHATRO ADD CONSTRAINT FK_NHATRO_LOAINHA FOREIGN KEY (MaLoaiNha) REFERENCES LOAINHA(MaLoaiNha);
ALTER TABLE NHATRO ADD CONSTRAINT FK_NHATRO_NGUOIDUNG FOREIGN KEY (NguoiLienHe) REFERENCES NGUOIDUNG(MaNguoiDung);
ALTER TABLE DANHGIA ADD CONSTRAINT FK_DANHGIA_NGUOIDUNG FOREIGN KEY (MaNguoiDung) REFERENCES NGUOIDUNG(MaNguoiDung);
ALTER TABLE DANHGIA ADD CONSTRAINT FK_DANHGIA_NHATRO FOREIGN KEY (MaNhaTro) REFERENCES NHATRO(MaNhaTro);
