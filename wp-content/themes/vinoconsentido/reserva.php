<?php
    /**
     * Template Name: Registration
     **/
	$heroForm = get_field("background", 9);
	get_header(); 
	$people = $_GET["people"];
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
				<form action="" method="post" class="wpcf7-form" novalidate="novalidate">
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<label> Nombre<br>
					<span class=" your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span> </label>
				</div>
				<?php if($people == "2"):?>
					<div class="col-sm-12 col-md-12 form col-xs-12 partner">
						<label> Nombre acompañante<br>
						<span class=" your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false"></span> </label>
					</div>
				<?php endif; ?>
				<div class="col-sm-6 col-md-6 form col-xs-12">
					<label> Correo<br>
					<span class=" your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span> </label>
				</div>
				<div class="col-sm-6 col-md-6 form col-xs-12">
					<label> Teléfono<br>
					<span class=" your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span> </label>
				</div>
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<label> Restricciones alimentarias: (alérgias, vegetariano, vegano, entre otros).<br>
					<span class=" your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span> </label>
				</div>
				<div class="col-sm-12 col-md-12 form col-xs-12">
					<label> Requerimiento adicional<br>
					<span class=" your-message"><textarea name="your-message" cols="10" rows="3" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false"></textarea></span> </label>
				</div>
			</div>
			<form>
				<script
					src="https://checkout.epayco.co/checkout.js"
					class="epayco-button"
					data-epayco-key="491d6a0b6e992cf924edd8d3d088aff1"
					data-epayco-amount="50000"
					data-epayco-name="Vestido Mujer Primavera"
					data-epayco-description="Vestido Mujer Primavera"
					data-epayco-currency="cop"
					data-epayco-country="co"
					data-epayco-test="true"
					data-epayco-external="false"
					data-epayco-response="https://www.vinoconsentido.com/response/"
					data-epayco-confirmation="https://www.vinoconsentido.com/confirmation/">
				</script>
			</form>
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
