<?php

return [
    'preheader'       => 'Nếu như bạn muốn biết ai đó đã phản hồi trong bài post của mình.',
    'greeting'        => 'Chào bạn,',
    'body'            => 'Just wanted to let you know that someone has responded to a forum post at',
    'view_discussion' => 'Xem '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
    'farewell'        => 'Chúc một ngày tốt lành!',
    'unsuscribe'      => [
        'message' => 'Nếu bạn không còn muốn được thông báo khi ai đó phản hồi bài đăng trên biểu mẫu này, hãy nhớ bỏ chọn cài đặt thông báo ở cuối trang :)',
        'action'  => 'Không muốn những email này?',
        'link'    => 'Hủy đăng ký đối với '.mb_strtolower(trans('chatter::intro.titles.discussion')).'.',
    ],
];
