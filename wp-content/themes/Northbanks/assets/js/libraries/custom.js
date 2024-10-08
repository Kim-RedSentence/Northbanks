var $jq = jQuery.noConflict();
// setting up jquery 
 
$jq(document).ready(function(){
    $jq('.topbar__button').on('click', function() {
        var $nav = $jq('.nav');
        var $navButton = $jq('.topbar__button');
        var $title = $jq('.hero__dot');
        $nav.toggleClass("nav--active");
        $navButton.toggleClass('topbar__button--active');
        $title.toggleClass('hero__dot--active')
    });

    $jq('.count__inner--slick').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        draggable: false,
        dots: true,
        arrows: false
    });

    $jq('.fpost__info').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: false,
        arrows: false,
        draggable: false,
        fade: true,
    });
    
    $jq('.fpost__slider').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        draggable: true,
        dots: false,
        arrows: false,
        asNavFor: '.fpost__info,.fpost__lowerslider',
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToScroll: 1,
                    slidesToShow: 1,
                }
            }
        ]
    });
    
    $jq('.fpost__lowerslider').slick({
        draggable: true,
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: true,
        arrows: false,
        focusOnSelect: true,
        asNavFor: '.fpost__info,.fpost__slider',
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToScroll: 2,
                    slidesToShow: 2,
                }
            }
        ]
    });
    





}); //end of ready