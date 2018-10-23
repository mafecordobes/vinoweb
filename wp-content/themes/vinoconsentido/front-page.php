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
    $bg_contacto = get_field("background_contacto");
    $args = array(
        'post_type' => 'eventos',
        'post_status' => 'publish',
        'posts_per_page' => '-1'
    );
	$eventos = new WP_Query( $args );

?>

<div class="section-parallax">
    <div class="parallax" style="background-image:url(<?php echo $heroForm;?>)"></div>
    <div class="container hero">
        <div class="text-center">
            <h1 class="vc-title">Bienvenidos a Vino Con Sentido</h1>
        </div>
    </div>
</div>
<div class="vc-who" id="section-filosofia">
    <div class="container">
        <div class="col-xs-12">
            <h1 class="text-center">Nuestra filosofía</h1>
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
<div class="vc-services bg-service" style="background-image:url(<?php echo $bg_services;?>)" id="section-servicios"> 
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
<?php if($eventos->have_posts()):?>
<section class="vc-reservas" id="section-reservas">
    <div class="col-xs-12">
        <h1 class="text-center">Próximos Eventos</h1>
        <div class="container">
            <div class="eventos">
                <?php while ( $eventos->have_posts() ) : $eventos->the_post();
                    // Set variables
                    $title = get_the_title();
                    $image = get_field('imagen');
                    $price_person = get_field('precio_individual');
                    $price_pair = get_field('precio_por_pareja');
                    $fecha = get_field('fecha');
					$lugar = get_field('lugar');
					$qty = get_field('cantidad_de_personas');
					$id_evento = $post->ID; 
					
                ?>
                    <div class="col-xs-12">
                        <div class="col-sm-7">
                            <div class="bg-event" style="background-image: url(<?php echo $image; ?>)"></div>
                        </div>
                        <div class="col-sm-5 description text-center">
                            <h2 class="text-center"><?php echo $title; ?></h2>
                            <div class="vc-description-div text-left">
                                <p><i class="far fa-calendar-check"></i> <?php echo $fecha; ?></p>
                                <p><i class="fas fa-map-marker"></i></i><?php echo $lugar; ?></p>
                                <p><i class="fas fa-dollar-sign"></i><?php echo number_format($price_person, 2, '.', ','); ?> COP por persona <a href="/registro?people=1&e=<?php echo $id_evento; ?>">Reservar</a></p>
                                <p><i class="fas fa-dollar-sign"></i><?php echo number_format($price_pair, 2, '.', ','); ?> COP por pareja <a href="/registro?people=2&e=<?php echo $id_evento; ?>">Reservar</a></p>
								<p><i class="fas fa-users"></i>Cupos disponibles: <?php echo $qty; ?></p>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
            <div class="terms-conditions text-center">
                Puedes revisar <a href="/terminos-y-condiciones">aquí</a> nuestros términos y condiciones
            </div>
        </div>
    </div>
</section>
<?php endif; ?>
<section class="vc-contacto" style="background-image:url(<?php echo $bg_contacto;?>)" id="section-contacto">
    <div class="col-xs-12">
        <h1 class="text-center">¿Cómo podemos ayudarte?</h1>
    </div>
    <div class="container container-form">
        <?php echo do_shortcode( '[contact-form-7 id="5" title="Contact form 1"]' ); ?>
    </div>
</section>
<?php get_footer(); ?>
