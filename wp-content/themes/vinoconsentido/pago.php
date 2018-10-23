<?php
    /**
     * Template Name: Pago
     **/
	$heroForm = get_field("background", 9);
	get_header(); 

	$info = explode("-", $_GET["e"]);

	$evento = $info[0];
	$person = $info[1];
	$people = $info[2];

	$name = get_the_title($evento);
	$precio_i = get_field("precio_individual", $evento);
	$precio_p = get_field("precio_por_pareja", $evento);
	$fecha = get_field("fecha", $evento);

?>
<script>
	str1 = window.location.pathname;
	str2 = "pago";
	if(str1.indexOf(str2) != -1){
    	$(".dv-menu-right").css("display", "none");
	}

</script>
<div class="section-parallax section-reserva">
    <div class="parallax" style="background-image:url(<?php echo $heroForm;?>)"></div>
    <div class="container hero">
        <div class="text-center">
		<input type="hidden" value="<?php echo $evento; ?>" id="id-evento" />
			<input type="hidden" value="<?php echo $fecha; ?>" id="fecha-evento" />
			<input type="hidden" value="<?php echo $name; ?>" id="name-evento" />
			<input type="hidden" value="<?php echo $person; ?>" id="person" />
			<input type="hidden" value="<?php echo ($people == "1") ? $precio_i : $precio_p; ?>" id="precio-evento" />
		</div>
    </div>
</div>

<?php get_footer(); ?>

<script>
	var handler = ePayco.checkout.configure({
		key: 'f1b6291e49545951b752c0f7c34b6ae0',
		test: true
	})

	var name = $("#name-evento").val();
	var price = $("#precio-evento").val();
	var post_id = $("#person").val();

	var data={
		//Parametros compra (obligatorio)
		name: name,
		description: name,
		currency: "cop",
		amount: price,
		tax_base: "0",
		tax: "0",
		country: "co",
		lang: "es",

		//Onpage="false" - Standard="true"
		external: "true",
		extra1 : post_id,
		//Atributos opcionales
		confirmation: "https://www.vinoconsentido.com/confirmation/",
		response: "https://www.vinoconsentido.com/response/",
	}

	handler.open(data);
		
</script>
