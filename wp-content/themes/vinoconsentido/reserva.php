<?php
    /**
     * Template Name: Registration
     **/
	$heroForm = get_field("background");
	get_header(); 
	$people = $_GET["people"];
	$evento = $_GET["e"];

	$name = get_the_title($evento);
	$precio_i = get_field("precio_individual", $evento);
	$precio_p = get_field("precio_por_pareja", $evento);
	$fecha = get_field("fecha", $evento);

?>
<script>
	str1 = window.location.pathname;
	str2 = "registro";
	if(str1.indexOf(str2) != -1){
    	$(".dv-menu-right").css("display", "none");
	}

</script>
<div class="section-parallax section-reserva">
    <div class="parallax" style="background-image:url(<?php echo $heroForm;?>)"></div>
    <div class="container hero">
        <div class="text-center">
            <h1 class="vc-title-reserva">Reserva para el evento:</h1>
			<div role="form" class="vc-contacto">
				<form action="<?php echo esc_url( admin_url('admin-post.php') ); ?>" method="post" class="custom-form">
		
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<label> Nombre<br>
					<span class=" your-name"><input type="text" id="your-name" name="name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" required ></span> </label>
				</div>
				<?php if($people == "2"):?>
					<div class="col-sm-12 col-md-12 form col-xs-12 partner">
						<label> Nombre acompañante<br>
						<span class=" your-name"><input type="text" id="your-name-2" name="partner" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" required></span> </label>
					</div>
				<?php endif; ?>
				<div class="col-sm-6 col-md-6 form col-xs-12">
					<label> Correo<br>
					<span class=" your-subject"><input type="email" id="your-mail" name="mail" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" required></span> </label>
				</div>
				<div class="col-sm-6 col-md-6 form col-xs-12">
					<label> Teléfono<br>
					<span class=" your-subject"><input type="text" id="your-phone" name="phone" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" required></span> </label>
				</div>
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<label> Restricciones alimentarias: (alérgias, vegetariano, vegano, entre otros).<br>
					<span class=" your-subject"><input type="text" id="your-food" value="" name="food" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" ></span> </label>
				</div>
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<label> Requerimiento adicional<br>
					<span class=" your-message"><textarea id="your-requirements" cols="10" rows="3" name="requirements" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" ></textarea></span> </label>
				</div>
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<input type="hidden" value="<?php echo $evento; ?>" name="id-evento" />
					<input type="hidden" value="<?php echo $fecha; ?>" name="fecha-evento" />
					<input type="hidden" value="<?php echo $name; ?>" name="name-evento" />
					<input type="hidden" value="<?php echo $people; ?>" name="people" />
					<input type="hidden" value="<?php echo ($people == "1") ? $precio_i : $precio_p; ?>" name="precio-evento" />
					<input type="hidden" name="action" value="save_data_asistent">
					<input type="submit" id="save_form" value="Pagar">
				</div>
			</div>
		
	
		</div>
		
    </div>
</div>
<div class="vc-reservation">
    <div class="container">
        <div class="col-xs-12">
           
        </div>
    </div>
</div>
<?php get_footer(); ?>
