<?php
    /**
     *  Created by PhpStorm.
     *  User: mcordobes
     *  Date: 3/8/17
     *  Time: 8:19 AM
     **/

    // Loads css file
	wp_enqueue_style( 'style', get_template_directory_uri() . 'style.css', array(), '1' );
	
    // Register custom navigation walker
    require_once('wp_bootstrap_navwalker.php');

    register_nav_menus( array(
        'primary' => __( 'Primary Menu', '8digital' ),
        'extra-menu' => __( 'Extra Menu' )
    ) );

	add_theme_support( 'menus' );
	add_theme_support( 'html5', array( 'custom-form' ) );

	add_action('init', 'register_custom_posts_init');
	add_action('init', 'people_custom_posts_init');

    function register_custom_posts_init() {
        // Register Products
        $products_labels = array(
            'name'               => 'Eventos',
            'singular_name'      => 'Evento',
            'menu_name'          => 'Eventos'
        );
        $products_args = array(
            'labels'             => $products_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'supports'           => array( 'title', 'thumbnail', 'revisions' )
        );
        register_post_type('eventos', $products_args);
	}
	
	function people_custom_posts_init() {
        // Register Products
        $people_labels = array(
            'name'               => 'Asistentes',
            'singular_name'      => 'Asistente',
            'menu_name'          => 'Asistentes'
        );
        $people_args = array(
            'labels'             => $people_labels,
            'public'             => true,
            'capability_type'    => 'post',
            'has_archive'        => true,
            'supports'           => array( 'title', 'thumbnail', 'revisions' )
        );
        register_post_type('personas', $people_args);
    }

    if ( !defined('AH_DIRNAME') )
		define( 'AH_DIRNAME', get_theme_file_path() );
		

	function prefix_save_data() {

		$name = $_POST['name'];
		$partner = $_POST['partner'];
		$mail = $_POST['mail'];
		$phone = $_POST['phone'];
		$food = $_POST['food'];
		$requirements = $_POST['requirements'];
		$event = $_POST['id-evento'];
		$fecha = $_POST['fecha-evento'];
		$name_evento = $_POST['name-evento'];
		$price = $_POST['precio-evento'];
		$people = $_POST['people'];

		// vars
		$my_post = array(
			'post_title'	=> 'Evento '.$fecha.' '.$name,
			'post_type'		=> 'personas',
			'post_status'	=> 'publish'
		);

		// insert the post into the database
		$post_id = wp_insert_post( $my_post, true );
		$field_1 = "field_5bcf958eb61f0";
		$field_2 = "field_5bcf9595b61f1";
		$field_3 = "field_5bcf95a0b61f2";
		$field_4 = "field_5bcf95a7b61f3";
		$field_5 = "field_5bcf95b2b61f4";
		$field_6 = "field_5bcf95bbb61f5";
		$field_7 = "field_5bcf95c4b61f6";

		update_field( $field_1, $name, $post_id );
		update_field( $field_2, $partner, $post_id );
		update_field( $field_3, $mail, $post_id );
		update_field( $field_4, $phone, $post_id );
		update_field( $field_5, $food, $post_id );
		update_field( $field_6, $requirements, $post_id );
		update_field( $field_7, $event, $post_id );

		$var = "/?e=".$event."-".$post_id."-".$people;

		$url_redirect =  home_url() . "/pago". $var;

		wp_redirect($url_redirect); 
		exit; 
		
	}
	add_action( 'admin_post_nopriv_save_data_asistent', 'prefix_save_data' );
	add_action( 'admin_post_save_data_asistent', 'prefix_save_data' );

	function folder_contents() {

		$fecha = $_POST['fecha'] ;
		$ref = $_POST['ref'] ;
		$recibo = $_POST['recibo'] ;
		$total = $_POST['total'] ;
		$status = $_POST['status'] ;
		$post_id = $_POST['post_id'] ;

		$field_1 = "field_5bcf95cab61f7";
		$field_2 = "field_5bcf95d1b61f8";
		$field_3 = "field_5bcf95d7b61f9";
		$field_4 = "field_5bcf95deb61fa";
		$field_5 = "field_5bcf95e5b61fb";

		update_field( $field_1, $fecha, $post_id );
		update_field( $field_2, $ref, $post_id );
		update_field( $field_3, $recibo, $post_id );
		update_field( $field_4, $total, $post_id );

		if($status == "Aceptada"){
			update_field( $field_5, 1, $post_id );
		}
	
		return $post_id;
		
		die(); 
	}
		
	add_action('wp_ajax_folder_contents', 'folder_contents');
	add_action('wp_ajax_nopriv_folder_contents', 'folder_contents');