<?php

return [
    'success' => [
        'title'  => 'Đã xong!',
        'reason' => [
            'submitted_to_post'       => 'Đã phản hồi thành công '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
            'updated_post'            => 'Đã cập nhật thành công '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
            'destroy_post'            => 'Đã xóa thành công '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
            'destroy_from_discussion' => 'Đã xóa bình luận thành công '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
            'created_discussion'      => 'Đã tạo thành công bài viết '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
        ],
    ],
    'info' => [
        'title' => 'Heads Up!',
    ],
    'warning' => [
        'title' => 'Woo Hoo!',
    ],
    'danger'  => [
        'title'  => 'Oh Nhìn nè!',
        'reason' => [
            'errors'            => 'Vui lòng xử lý mấy lỗi sau:',
            'prevent_spam'      => 'Để ngăn spam, vui lòng chờ ít nhất :minutes phút để có thể comment tiếp nhé!',
            'trouble'           => 'Xin lỗi, hình như có vấn đề gì đó trong quá trình xác nhận phản hồi của bạn!',
            'update_post'       => 'Well well well... Không thể cập nhật post của bạn. Hãy chắc rằng bạn không làm gì mờ ám.',
            'destroy_post'      => 'Well well well... hông thể xóa post của bạn. Hãy chắc rằng bạn không làm gì mờ ám.',
            'create_discussion' => 'Whoops :(Hình như có vấn đề khi tạo bài post '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
        	'title_required'    => 'Vui lòng viết "TIÊU ĐỀ" nhé',
        	'title_min'		    => 'Tiêu đề phải ít nhất :min ký tự.',
        	'title_max'		    => 'Tiêu đề không hơn :max ký tự.',
        	'content_required'  => 'Vui lòng viết nội dung DISCUSSION của bạn',
        	'content_min'  		=> 'Nội dụng cần ít nhất :min ký tự',
        	'category_required' => 'Vui lòng mục cần post vào!',

       
       
        ],
    ],
];
