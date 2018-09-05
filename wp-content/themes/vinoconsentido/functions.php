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

    if ( !defined('AH_DIRNAME') )
        define( 'AH_DIRNAME', get_theme_file_path() );