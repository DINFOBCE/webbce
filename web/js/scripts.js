
function mycarousel_initCallback(carousel) {

    jQuery('#next').bind('click', function() {
        carousel.next();
        return false;
    });

    jQuery('#prev').bind('click', function() {
        carousel.prev();
        return false;
    });
    
    

        $('.carousel ul li').mouseenter(function(e) {

            $(this).children('a').children('span').fadeIn(200);
        }).mouseleave(function(e) {

            $(this).children('a').children('span').fadeOut(200);
        });
  
    
    
};

// Ride the carousel...
jQuery(document).ready(function() {
    jQuery(".carousel").jcarousel({
        scroll: 5,
        auto: 10,
        initCallback: mycarousel_initCallback,
        // This tells jCarousel NOT to autobuild prev/next buttons
        buttonNextHTML: null,
        buttonPrevHTML: null,
        wrap: 'last',
        animation: 800
    });
});

$(function() {

	// Options for SuperBGImage
	$.fn.superbgimage.options = {
		randomtransition: 2, // 0-none, 1-use random transition (0-7)
		z_index: -1, // z-index for the container
		slideshow: 1, // 0-none, 1-autostart slideshow
		slide_interval: 4000, // interval for the slideshow
		randomimage: 1, // 0-none, 1-random image
		speed: 'slow' // animation speed
	};

	// initialize SuperBGImage
	$('#thumbs').superbgimage().hide();

});
$(document).ready(function(){
			$("a[rel^='prettyPhoto']").prettyPhoto({autoplay_slideshow: false, overlay_gallery: false, social_tools:false, deeplinking: false, theme:'pp_default', slideshow:5000});
		});