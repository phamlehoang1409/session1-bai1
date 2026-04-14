USE session2;
/*
Giải pháp 1: Thay đổi trực tiếp
Sử dụng lệnh ALTER TABLE USERS MODIFY Phone VARCHAR(15
Giải pháp 2: Chiến lược "Online Migration"
Bước 1: Thêm một cột mới Phone_new kiểu VARCHAR(15)
Bước 2: Cập nhật dữ liệu từ Phone sang Phone_new
Bước 3: Đổi tên cột cũ hoặc xóa cột cũ và đổi tên cột mới

2. So sánh va Lựa chọn tiêu chí
Giải pháp 1: Thay đổi trực tiếp
Giải pháp 2: Tạo cột tạm
Ưu điểm:
Nhanh, chỉ mất 1 dòng lệnh SQL
Nhược điểm:
Gây khóa bảng lâu,dễ làm sập ứng dụng
*/
ALTER TABLE USERS ADD COLUMN Phone_v2 VARCHAR(15);
-- 
