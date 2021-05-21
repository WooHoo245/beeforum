Hướng cài và sử dụng "BeeForum":
Các bước chung:
1. Cài "composer", link hướng dẫn:
https://hocwebchuan.com/tutorial/laravel/install_composer.php

2. Cài "xampp", link hướng dẫn:
https://thachpham.com/thu-thuat/cai-dat-localhost-xampp.html

3. Cài "Git", link hướng dẫn:
https://thachpham.com/tools/git-cai-dat-git-va-thiet-lap-ban-dau.html

4. Đối với BeeForum, để mở và sử dụng:
         1. Bật "Apache" và "MySQL" bằng cách nhấn vào nút "Start".
         2. Nhấp tab "Admin" tại mục MySQL, tại trang chủ MySQL hãy chọn tab "Import". Sau đó nhấp vào "Browse File" để chọn file
            file cơ sở dữ liệu tên "beeforum.sql".
         3. Sao chép thư mục "bee" vào ổ đĩa đã cài "xampp", ví dụ:
            C:\xampp\htdocs ->Lưu ý: Xóa tất cả file và thư mục trong "htdocs" trước khi dán thư mục "bee" vào.
         4. Mở thư mục "bee", sau đó mở cmd (Command Prompt) và nhập lệnh "php artisan serve --port=3232".
         5. Mở trình Microsoft Edge hoặc trình duyệt bạn dùng và nhập đường dẫn "http://localhost:3232/" để duyệt trang Forum.


**Lưu ý: Bạn hãy kết nối internet để có trải nghiệm tốt nhất!