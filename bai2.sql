USE session2;
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email NVARCHAR(100),
    Age INT CHECK(Age >= 0)
); 

ALTER TABLE CUSTOMERS 
MODIFY Email NVARCHAR(100) NOT NULL;
/*Thiếu ràng buộc NOT NULL cho cột Email: 
Hiện trạng: Cột Email đang cho phép để trống (NULL)
Hệ quả: Khi chạy chiến dịch gửi Email, code ứng dụng lấy giá trị trống ra để gửi dẫn đến lỗi hệ thống (Crash).
Thiếu ràng buộc UNIQUE cho cột Email:
Vấn đề: Một khách hàng không nên có 2 tài khoản cùng 1 email, hoặc nhiều khách hàng dùng chung 1 email. Điều này gây lãng phí tài nguyên và làm phiền khách hàng.
Thiếu ràng buộc CHECK cho cột Age:
Hiện trạng: Kiểu INT cho phép nhập cả số âm (như -5).
Hệ quả: Dữ liệu về tuổi bị vô lý, không thể sử dụng để phân loại khách hàng mục tiêu
*/