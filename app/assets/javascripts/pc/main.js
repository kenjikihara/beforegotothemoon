$(function() {
    var topBtn = $('.arrow');
    // topBtn.hide();
    //スクロールが100に達したらボタン表示
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            topBtn.fadeOut();
        } else {
            topBtn.fadeIn();
        }
    });
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,  html').animate({
            scrollBottom: 1
        },   500);
        return false;
    });
});
