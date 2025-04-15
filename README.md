# Thực Hành Quản Trị CSDL với SQL Server

Dự án này chứa các bài thực hành SQL Server dựa trên khóa học **COM2034 – Quản Trị CSDL với SQL Server**. Mỗi bài lab tập trung vào một khía cạnh khác nhau của SQL Server, từ cài đặt và cấu hình, xây dựng và quản lý cơ sở dữ liệu, đến viết T-SQL, stored procedures, trigger, function và thực hiện backup/restore.

---

## Mục Lục

1. [Tổng Quan](#tổng-quan)
2. [Tóm Tắt Các Lab](#tóm-tắt-các-lab)
   - [Lab 1: Tổng Quan & Cài Đặt SQL Server và SSMS](#lab-1-tổng-quan--cài-đặt-sql-server-và-ssms)
   - [Lab 2: Tạo CSDL và T-SQL](#lab-2-tạo-csdl-và-t-sql)
   - [Lab 3: Hàm Hệ Thống & Xử Lý Chuỗi](#lab-3-hàm-hệ-thống--xử-lý-chuỗi)
   - [Lab 4: Điều Kiện & Vòng Lặp](#lab-4-điều-kiện--vòng-lặp)
   - [Lab 5: Stored Procedures](#lab-5-stored-procedures)
   - [Lab 6: SQL Trigger](#lab-6-sql-trigger)
   - [Lab 7: Hàm Người Dùng & View](#lab-7-hàm-người-dùng--view)
   - [Lab 8: Các Thao Tác Quản Trị CSDL](#lab-8-các-thao-tác-quản-trị-csdl)
3. [Hướng Dẫn Cài Đặt](#hướng-dẫn-cài-đặt)
4. [Cách Đóng Góp](#cách-đóng-góp)
5. [Thông Tin Liên Hệ](#thông-tin-liên-hệ)

---

## Tổng Quan

Các bài lab trong dự án này được thiết kế nhằm trang bị cho sinh viên các kỹ năng quản trị cơ sở dữ liệu sử dụng SQL Server. Từ việc cài đặt SQL Server và SSMS, xây dựng cơ sở dữ liệu, lập trình T-SQL cho đến viết stored procedures, trigger, hàm do người dùng định nghĩa và thực hiện sao lưu phục hồi, các lab đều giúp sinh viên làm quen và nắm vững những khái niệm quan trọng trong quản trị CSDL.

---

## Tóm Tắt Các Lab

### Lab 1: Tổng Quan & Cài Đặt SQL Server và SSMS
- **Mục Tiêu**:
  - Hiểu và báo cáo các yêu cầu phần cứng, phần mềm của các edition SQL Server (Enterprise, Standard, Developer, Express, …).
  - Thực hành cài đặt SQL Server và SQL Server Management Studio (SSMS).
  - Thực hiện thao tác Attach/Detach cơ sở dữ liệu và truy vấn SQL cơ bản.
- **Nội Dung**:
  - Báo cáo yêu cầu phần cứng, phần mềm.
  - Cài đặt SQL Server và SSMS.
  - Thực hành Attach, Detach cơ sở dữ liệu và truy vấn đơn giản.

### Lab 2: Tạo CSDL và T-SQL
- **Mục Tiêu**:
  - Tạo cơ sở dữ liệu QLDA qua giao diện tool và thông qua lệnh T-SQL.
  - Sử dụng biến trong T-SQL để thực hiện các truy vấn động.
- **Nội Dung**:
  - Xây dựng lược đồ, định nghĩa bảng và chèn dữ liệu mẫu cho CSDL QLDA.
  - Thực hiện các truy vấn T-SQL sử dụng biến và các phép tính.

### Lab 3: Hàm Hệ Thống & Xử Lý Chuỗi
- **Mục Tiêu**:
  - Sử dụng các hàm chuyển đổi kiểu dữ liệu (CAST, CONVERT) và hàm toán học.
  - Áp dụng các hàm xử lý chuỗi và định dạng dữ liệu, ngày tháng.
- **Nội Dung**:
  - Định dạng dữ liệu số và chuỗi bằng các hàm hệ thống.
  - Sử dụng hàm toán học như CEILING, FLOOR.
  - Áp dụng hàm xử lý chuỗi và định dạng ngày tháng năm.

### Lab 4: Điều Kiện & Vòng Lặp
- **Mục Tiêu**:
  - Áp dụng các cấu trúc điều kiện (IF...ELSE, CASE) và vòng lặp trong T-SQL.
  - Xử lý lỗi thông qua TRY...CATCH và RAISERROR.
- **Nội Dung**:
  - Phân loại dữ liệu dựa trên các điều kiện về lương, tuổi, …
  - Sử dụng vòng lặp để xử lý tập hợp dữ liệu.
  - Xử lý lỗi khi chèn hoặc cập nhật dữ liệu.

### Lab 5: Stored Procedures
- **Mục Tiêu**:
  - Tạo và sử dụng stored procedures trong SQL Server.
  - Kết hợp điều kiện và vòng lặp trong stored procedures để xử lý nghiệp vụ.
- **Nội Dung**:
  - Viết stored procedures cho các tác vụ tính toán, truy vấn và xử lý dữ liệu.
  - Xử lý tham số đầu vào và đầu ra.
  - Áp dụng stored procedures trong quản trị dữ liệu.

### Lab 6: SQL Trigger
- **Mục Tiêu**:
  - Tạo và quản lý các trigger (DML, AFTER, INSTEAD OF) trong SQL Server.
  - Tự động hóa kiểm tra và xử lý ràng buộc dữ liệu thông qua trigger.
- **Nội Dung**:
  - Viết trigger để ràng buộc lương, tuổi và các quy định khi thao tác dữ liệu.
  - Thực hiện trigger AFTER để thống kê số liệu sau thao tác.
  - Sử dụng trigger INSTEAD OF cho các thao tác đặc biệt.

### Lab 7: Hàm Người Dùng & View
- **Mục Tiêu**:
  - Tạo các hàm do người dùng định nghĩa và view để tối ưu hóa truy vấn.
- **Nội Dung**:
  - Viết hàm để tính tuổi, đếm số đề án tham gia, tính mức lương trung bình, …
  - Tạo view để hiển thị thông tin tổng hợp từ nhiều bảng.
  - Thực hành truy vấn kết hợp với hàm và view.

### Lab 8: Các Thao Tác Quản Trị CSDL
- **Mục Tiêu**:
  - Thực hiện sao lưu và phục hồi cơ sở dữ liệu với Full backup và Differential backup.
  - Đặt lịch sao lưu tự động cho CSDL.
- **Nội Dung**:
  - Tạo và kiểm tra bản sao lưu Full backup và Differential backup.
  - Thực hiện phục hồi CSDL từ các bản sao lưu khác nhau.
  - Thiết lập lịch sao lưu tự động để đảm bảo an toàn dữ liệu.

---

## Hướng Dẫn Cài Đặt

1. Tải và cài đặt [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) (chọn phiên bản phù hợp: Developer hoặc Express).
2. Tải và cài đặt [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms).
3. Clone dự án về máy:
   ```bash
   git clone https://github.com/NguyenMinh1301/MOB1014.git
---
## Thông Tin Liên Hệ
Nếu bạn có bất kỳ câu hỏi hoặc ý kiến nào, vui lòng liên hệ:

- **Email**: nguyenminh1301.dev@gmail.com
- **GitHub**: [NguyenMinh1301](https://github.com/NguyenMinh1301)

Chúc bạn học tốt!
