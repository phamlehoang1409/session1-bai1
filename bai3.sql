USE session2;
CREATE TABLE custom01(
    customID INT PRIMARY KEY AUTO_INCREMENT,
    fullName varchar(50) NOT NULL,
    email varchar(100) UNIQUE NOT NULL
);

CREATE TABLE oder(
    oderID INT PRIMARY KEY AUTO_INCREMENT,
    oderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    totalAmount DECIMAL(15, 0) NOT NULL,
    customID INT,
    
    FOREIGN KEY (customID) REFERENCES custom01(customID)
);
/*
Mã đơn (OrderID): Kiểu INT, là Khóa chính,nên để tự động tăng.
Ngày đặt (OrderDate): Kiểu DATETIME hoặc DATE. Ràng buộc: DEFAULT CURRENT_TIMESTAMP
Tổng tiền (TotalAmount): Kiểu BIGINT
Mã khách hàng (CustomerID): Kiểu INT. Đây là Khóa ngoại nối sang bảng CUSTOMERS.
*/