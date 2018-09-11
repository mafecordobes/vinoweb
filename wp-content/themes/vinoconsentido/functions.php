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

    add_action('init', 'register_custom_posts_init');

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

    if ( !defined('AH_DIRNAME') )
        define( 'AH_DIRNAME', get_theme_file_path() );