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

});