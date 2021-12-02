
//Tools Carousel

$(document).ready(function () {

    $(window).scroll(function () {
        if ($(window).scrollTop() < $(window).height()) {
            $(".navbar").css({ "background-color": "transparent" });
        }
        else {
            $(".navbar").css({ "background-color": "white" });
        }

    })

    $(window).scroll(function () {
        var $nav = $(".nav");
        $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
    });

    $('.tools-carousel').owlCarousel({
        loop: true,
        margin:0,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
            },
            600: {
                items: 2,

            },
            1000: {
                items: 3,

            }
        }
    })
});
