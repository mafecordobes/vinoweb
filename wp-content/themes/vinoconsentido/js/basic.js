/**
 * Created by mtoledo on 3/8/17.
 */

$(document).ready(function() {
    $(window).on("scroll", function(){
        if ($(document).scrollTop() == 0){
            $(".div-top").css("display", "block");
            $(".dv-top-bar").css("position", "absolute");
            $(".dv-top-bar").removeClass("sticky");
        } else {
            if ($(document).scrollTop() >= $(".dv-header-container").offset().top){
                $(".div-top").css("display", "none");
                $(".dv-top-bar").css("position", "fixed");
                $(".dv-top-bar").addClass("sticky");
            }
        }
    });

    setTimeout(function(){
        odometer.innerHTML = 20;
    }, 1000);

    $('.contacto-menu').click(function(){
        $('html,body').animate({
            scrollTop: $("#section-contacto").offset().top - 50
        }, 1500);
    });

    $('.servicios-menu').click(function(){
        $('html,body').animate({
            scrollTop: $("#section-servicios").offset().top - 80
        }, 1500);
    });

    $('.filosofia-menu').click(function(){
        $('html,body').animate({
            scrollTop: $("#section-filosofia").offset().top - 50
        }, 1500);
    });

});