CREATE DATABASE session2;
CREATE TABLE PRODUCTS (
    ID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(12, 2),
    Description varchar(200)
);
/*
Lỗi 1: Sai lệch tiền tệ do kiểu dữ liệu số thực
Vấn đề: DECIMAL(18, 2) dùng để lưu các số có phần thập phân
Cách sửa: Chuyển sang kiểu số nguyên hoàn toàn
Lỗi 2: Cấp phát dư thừa bộ nhớ
Vấn đề: VARCHAR(255) và TEXT chiếm không gian lưu trữ và làm chậm tốc độ truy xuất nếu dữ liệu thực tế chỉ là những cái tên ngắn
Tại sao sai: Máy chủ báo đầy bộ nhớ vì ta "đặt chỗ" quá lớn cho những nội dung nhỏ
Cách sửa: Thu nhỏ độ dài VARCHAR cho phù hợp với thực tế */   