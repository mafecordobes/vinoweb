<?php
    /**
     * Template Name: Terms
     **/
    get_header();
    $terms = get_field("terminos_y_condiciones");
    $heroForm = get_field("background", 9);
?>
<div class="section-parallax">
    <div class="parallax" style="background-image:url(<?php echo $heroForm;?>)"></div>
    <div class="container hero">
        <div class="text-center">
            <h1 class="vc-title">Términos y condiciones participación en el evento:</h1>
        </div>
    </div>
</div>
<div class="vc-who">
    <div class="container">
        <div class="col-xs-12">
            <div class="col-sm-12 content text-left">
                <?php echo $terms; ?>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>
