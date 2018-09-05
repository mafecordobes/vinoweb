<?php
    /**
     * Template Name: Front Page
     **/
    get_header();
    $heroForm = get_field("background");
    $imagen = get_field("imagen_quienes_somos");
    $bg_services = get_field("background_servicios");
    $empresas = get_field("servicio_empresa");
    $familiar = get_field("servicio_familiar");
    $domicilio = get_field("servicio_domicilio");
?>

<div class="section-parallax">
    <div class="parallax" style="background-image:url(<?php echo $heroForm;?>)"></div>
    <div class="container hero">
        <div class="text-center">
            <h1 class="vc-title">Bienvenidos a Vino Con Sentido</h1>
        </div>
    </div>
</div>
<div class="vc-who">
    <div class="container">
        <div class="col-xs-12">
            <h1 class="text-center">Nuestra fílosofia</h1>
            <div class="col-sm-6 col-xs-12">
               <img src="<?php echo $imagen; ?>" class="img-responsive"/>
            </div>
            <div class="col-sm-6 col-xs-12">
                <hr/>
                <ul>
                    <li>¿No sabes que vino comprar para acompañar tus comidas?</li>
                    <li>¿No sabes que vino pedir en un restaurante?</li>
                    <li>¿No sabes cómo identificar un buen vino?</li>
                    <li>¿Estás aburrido de los mismos planes de siempre?</li>
                    <li>¿Quieres tener un bonito detalle con alguien?</li>
                </ul>
            </div>
            <div class="col-sm-12 col-xs-12 content">
                <p>
                    Vino Con-Sentido está dirigido para aquellos curiosos que no saben cómo apreciar el vino pero
                    están interesados en hacerlo. Vino Con-Sentido es una experiencia en la que se pueden obtener de
                    manera agradable y sencilla unos conocimientos básicos sobre el vino, su producción, algunas
                    cepas y maridaje, basado en una experiencia que envuelve los cinco sentidos, pero sobre todo es
                    un momento para disfrutar de un momento agradable y diferente.
                </p>
                <p>
                    En Vino – Consentido compartimos vino, quesos, risas y buenos momentos, anímate a agendar
                    con nosotros.
                </p>
            </div>
        </div>
    </div>
</div>
<div class="vc-services bg-service" style="background-image:url(<?php echo $bg_services;?>)"> 
    <div class="col-xs-12">
        <h1 class="text-center">Servicios</h1>
    </div>
    <div class="container">
        <div class="col-sm-12 col-md-4 service col-xs-12">
            <div style="background-image:url(<?php echo $empresas;?>)">
                <p class="stripe">Eventos empresariales</p>
            </div>
        </div>
        <div class="col-sm-12 col-md-4 service col-xs-12">
            <div style="background-image:url(<?php echo $familiar;?>)">
                <p class="stripe">Eventos familiares</p>
            </div>
        </div>
        <div class="col-sm-12 col-md-4 service col-xs-12">
            <div style="background-image:url(<?php echo $domicilio;?>)">
                <p class="stripe">Catas a domicilio</p>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>
