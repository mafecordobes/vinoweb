<?php
  /**
   * This document contains the fields used for the General Setting custom type
   */

  add_action( 'cmb2_admin_init', 'cmb2_settings_metaboxes' );
  
  /***********************************************
   * Define the metabox and field configurations *
   ***********************************************/
  function cmb2_settings_metaboxes() {
    // Start with an underscore to hide fields from custom fields list
    $prefix = '_settings';
    //Initiation of the metabox Contact group
    $cmb_home = new_cmb2_box( array(
      'id'            => $prefix . '_settings_hero_group',
      'title'         => __( 'Contacto', 'dentalvip' ),
      'object_types'  => array( 'settings', ),
      'context'       => 'normal',
      'priority'      => 'high',
      'show_names'    => true,
      'repeatable'    => true,
      'closed'        => true,
    ) );

    // Hero title setting
    $cmb_home->add_field( array(
      'name'       => __( 'Horario de Atención', 'dentalvip' ),
      'id'         => $prefix . '_hero_hours',
      'type'       => 'text',
      'repeatable' => false
    ) );

    // Hero title setting
    $cmb_home->add_field( array(
      'name'       => __( 'Núm. de Teléfono', 'dentalvip' ),
      'id'         => $prefix . '_hero_phone',
      'type'       => 'text',
      'repeatable' => false
    ) );

    // Hero title setting
    $cmb_home->add_field( array(
      'name'       => __( 'Dirección', 'dentalvip' ),
      'id'         => $prefix . '_hero_address',
      'type'       => 'text',
      'repeatable' => false
    ) );

     // Hero title setting
     $cmb_home->add_field( array(
        'name'       => __( 'Dirección larga', 'dentalvip' ),
        'id'         => $prefix . '_contact_address',
        'type'       => 'textarea',
        'repeatable' => false
      ) );

    // Hero title setting
    $cmb_home->add_field( array(
        'name'       => __( 'Teléfonos', 'dentalvip' ),
        'id'         => $prefix . '_contact_phone',
        'type'       => 'text',
        'repeatable' => true
      ) );
    
    // Hero title setting
    $cmb_home->add_field( array(
        'name'       => __( 'Dias laborables', 'dentalvip' ),
        'id'         => $prefix . '_contact_days',
        'type'       => 'text',
        'repeatable' => false
      ) );

    // Hero title setting
    $cmb_home->add_field( array(
        'name'       => __( 'Horario trabajo', 'dentalvip' ),
        'id'         => $prefix . '_contact_hours',
        'type'       => 'text',
        'repeatable' => false
    ) );

     // Hero title setting
     $cmb_home->add_field( array(
        'name'       => __( 'Cita', 'dentalvip' ),
        'id'         => $prefix . '_contact_cita',
        'type'       => 'text',
        'repeatable' => false
    ) );

    $cmb_home->add_field( array(
        'name'       => __( 'Logos página contacto', 'dentalvip' ),
        'id'         => $prefix . '_contact_logos',
        'type'       => 'file',
        'repeatable' => false
    ) );

    $cmb_home->add_field( array(
        'name'       => __( 'Correo electrónico', 'dentalvip' ),
        'id'         => $prefix . '_contact_email',
        'type'       => 'text',
        'repeatable' => false
    ) );

    //Initiation of the metabox Menu group
    $cmb_home = new_cmb2_box( array(
      'id'            => $prefix . '_settings_menu_group',
      'title'         => __( 'Menú', 'dentalvip' ),
      'object_types'  => array( 'settings', ),
      'context'       => 'normal',
      'priority'      => 'high',
      'show_names'    => true,
      'repeatable'    => true,
      'closed'        => true,
    ) );

    // Menu logo field
    $cmb_home->add_field( array(
      'name'       => __( 'Logo', 'cmb2' ),
      'id'         => $prefix . '_menu_logo',
      'type'       => 'file',
      'repeatable' => false
    ) );

    //Initiation of the metabox Social media group
    $cmb_home = new_cmb2_box( array(
        'id'            => $prefix . '_sm',
        'title'         => __( 'Redes Sociales', 'dentalvip' ),
        'object_types'  => array( 'settings', ),
        'context'       => 'normal',
        'priority'      => 'high',
        'show_names'    => true,
        'repeatable'    => true,
        'closed'        => true,
    ) );

    // Hero title setting
    $cmb_home->add_field( array(
        'name'       => __( 'Facebook', 'dentalvip' ),
        'id'         => $prefix . '_sm_fb',
        'type'       => 'text',
        'repeatable' => false
    ) );

    // Hero title setting
    $cmb_home->add_field( array(
        'name'       => __( 'Instagram', 'dentalvip' ),
        'id'         => $prefix . '_sm_ig',
        'type'       => 'text',
        'repeatable' => false
    ) );

    //Initiation of the metabox hero group
    $cmb_home = new_cmb2_box( array(
        'id'            => $prefix . '_hero',
        'title'         => __( 'Hero', 'dentalvip' ),
        'object_types'  => array( 'settings', ),
        'context'       => 'normal',
        'priority'      => 'high',
        'show_names'    => true,
        'repeatable'    => true,
        'closed'        => true,
    ) );

    // Hero Image setting
    $cmb_home->add_field( array(
        'name'       => __( 'Hero Image', 'dentalvip' ),
        'id'         => $prefix . '_hero_img',
        'type'       => 'file',
        'repeatable' => false
    ) );

    // Hero title setting
    $cmb_home->add_field( array(
        'name'       => __( 'Título', 'dentalvip' ),
        'id'         => $prefix . '_hero_title',
        'type'       => 'text',
        'repeatable' => false
    ) );

    // Hero text one setting
    $cmb_home->add_field( array(
        'name'       => __( 'Descripción', 'dentalvip' ),
        'id'         => $prefix . '_hero_text_one',
        'type'       => 'text',
        'repeatable' => false
    ) );

    // Hero text two setting
    $cmb_home->add_field( array(
        'name'       => __( 'Eslogan', 'dentalvip' ),
        'id'         => $prefix . '_hero_text_two',
        'type'       => 'text',
        'repeatable' => false
    ) );

    //Initiation of the metabox footer group
    $cmb_home = new_cmb2_box( array(
        'id'            => $prefix . '_footer',
        'title'         => __( 'Footer', 'dentalvip' ),
        'object_types'  => array( 'settings', ),
        'context'       => 'normal',
        'priority'      => 'high',
        'show_names'    => true,
        'repeatable'    => true,
        'closed'        => true,
    ) );

    // Slogan setting
    $cmb_home->add_field( array(
        'name'       => __( 'Eslogan', 'dentalvip' ),
        'id'         => $prefix . '_footer_slogan',
        'type'       => 'text',
        'repeatable' => false
    ) );

    // Address setting
    $cmb_home->add_field( array(
        'name'       => __( 'Dirección', 'dentalvip' ),
        'id'         => $prefix . '_footer_address',
        'type'       => 'text',
        'repeatable' => false
    ) );

    // Logos setting
    $cmb_home->add_field( array(
        'name'       => __( 'Logo 1', 'dentalvip' ),
        'id'         => $prefix . '_footer_logos',
        'type'       => 'file',
        'repeatable' => false
    ) );

    // Logos setting
    $cmb_home->add_field( array(
        'name'       => __( 'Logo 2', 'dentalvip' ),
        'id'         => $prefix . '_footer_logo2',
        'type'       => 'file',
        'repeatable' => false
    ) );

    // Logos setting
    $cmb_home->add_field( array(
        'name'       => __( 'Logo 3', 'dentalvip' ),
        'id'         => $prefix . '_footer_logo3',
        'type'       => 'file',
        'repeatable' => false
    ) );

    // Contact label setting
    $cmb_home->add_field( array(
        'name'       => __( 'Etiqueta enlace de contacto', 'dentalvip' ),
        'id'         => $prefix . '_footer_label',
        'type'       => 'text',
        'repeatable' => false
    ) );

    // Copyright setting
    $cmb_home->add_field( array(
        'name'       => __( 'Copyright', 'dentalvip' ),
        'id'         => $prefix . '_footer_copy',
        'type'       => 'wysiwyg',
        'repeatable' => false
    ) );

      //Initiation of the metabox Homepage group
      $cmb_home = new_cmb2_box( array(
          'id'            => $prefix . '_home',
          'title'         => __( 'Home', 'dentalvip' ),
          'object_types'  => array( 'settings', ),
          'context'       => 'normal',
          'priority'      => 'high',
          'show_names'    => true,
          'repeatable'    => true,
          'closed'        => true,
      ) );

      // Logo setting
      $cmb_home->add_field( array(
          'name'       => __( 'Logo', 'dentalvip' ),
          'id'         => $prefix . '_logo',
          'type'       => 'file',
          'repeatable' => false
      ) );

      // Title setting
      $cmb_home->add_field( array(
          'name'       => __( 'Título', 'dentalvip' ),
          'id'         => $prefix . '_title',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Welcome text setting
      $cmb_home->add_field( array(
          'name'       => __( 'Texto Bienvenida', 'dentalvip' ),
          'id'         => $prefix . '_welcome_text',
          'type'       => 'wysiwyg',
          'repeatable' => false
      ) );

      // Partner logo setting
      $cmb_home->add_field( array(
          'name'       => __( 'Logo 1', 'dentalvip' ),
          'id'         => $prefix . '_welcome_l1',
          'type'       => 'file',
          'repeatable' => false
      ) );

      // Partner logo setting
      $cmb_home->add_field( array(
          'name'       => __( 'Logo 2', 'dentalvip' ),
          'id'         => $prefix . '_welcome_l2',
          'type'       => 'file',
          'repeatable' => false
      ) );

      // Partner logo setting
      $cmb_home->add_field( array(
          'name'       => __( 'Logo 3', 'dentalvip' ),
          'id'         => $prefix . '_welcome_l3',
          'type'       => 'file',
          'repeatable' => false
      ) );

      // Location setting
      $cmb_home->add_field( array(
          'name'       => __( 'Ciudad - País', 'dentalvip' ),
          'id'         => $prefix . '_welcome_loc',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Features
      $cmb_feature_group = $cmb_home->add_field( array(
          'id'          => $prefix . '_feature_repeat',
          'type'        => 'group',
          'options'     => array(
              'group_title'   => __( 'Caracteríatica {#}', 'dentalvip' ),
              'add_button'    => __( 'Add AnotherCaracterística', 'dentalvip' ),
              'remove_button' => __( 'Remove Característica', 'dentalvip' ),
              'sortable'      => true,
              'closed'        => true,
          ),
      ));

      $cmb_home->add_group_field( $cmb_feature_group, array(
          'name' => 'Título',
          'id'   => $prefix .'_feat_title',
          'type' => 'text',
      ));

      $cmb_home->add_group_field( $cmb_feature_group, array(
          'name' => 'Texto 1',
          'id'   => $prefix .'_feat_text1',
          'type' => 'text',
      ));

      $cmb_home->add_group_field( $cmb_feature_group, array(
          'name' => 'Texto 2',
          'id'   => $prefix .'_feat_text2',
          'type' => 'text',
      ));

      $cmb_home->add_group_field( $cmb_feature_group, array(
          'name' => 'Imagen',
          'id'   => $prefix .'_feat_img',
          'type' => 'file',
      ));


      // Specialties title setting
      $cmb_home->add_field( array(
          'name'       => __( 'Título de Especialidades', 'dentalvip' ),
          'id'         => $prefix . '_spc_title',
          'type'       => 'text',
          'repeatable' => false
      ) );


      // Specialties description setting
      $cmb_home->add_field( array(
          'name'       => __( 'Descripción de Especialidades', 'dentalvip' ),
          'id'         => $prefix . '_spc_text',
          'type'       => 'wysiwyg',
          'repeatable' => false
      ) );


      // Specialties
      $cmb_spc_group = $cmb_home->add_field( array(
          'id'          => $prefix . '_spc_repeat',
          'type'        => 'group',
          'options'     => array(
              'group_title'   => __( 'Especialidad {#}', 'dentalvip' ),
              'add_button'    => __( 'Add Another Especialidad', 'dentalvip' ),
              'remove_button' => __( 'Remove Especialidad', 'dentalvip' ),
              'sortable'      => true,
              'closed'        => true,
          ),
      ));

      $cmb_home->add_group_field( $cmb_spc_group, array(
          'name' => 'Nombre',
          'id'   => $prefix .'_spc_name',
          'type' => 'text',
      ));

      $cmb_home->add_group_field( $cmb_spc_group, array(
          'name' => 'Descripción',
          'id'   => $prefix .'_spc_desc',
          'type' => 'textarea',
      ));

      $cmb_home->add_group_field( $cmb_spc_group, array(
          'name' => 'Imagen',
          'id'   => $prefix .'_spc_img',
          'type' => 'file',
      ));

      $cmb_home->add_group_field( $cmb_feature_group, array(
          'name' => 'URL',
          'id'   => $prefix .'_spc_uri',
          'type' => 'text',
      ));

      // Phrase setting
      $cmb_home->add_field( array(
          'name'       => __( 'Frase', 'dentalvip' ),
          'id'         => $prefix . '_phrase',
          'type'       => 'wysiwyg',
          'repeatable' => false
      ) );

      // Author setting
      $cmb_home->add_field( array(
          'name'       => __( 'Autor', 'dentalvip' ),
          'id'         => $prefix . '_phrase_autor',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Position setting
      $cmb_home->add_field( array(
          'name'       => __( 'Cargo', 'dentalvip' ),
          'id'         => $prefix . '_phrase_position',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Company setting
      $cmb_home->add_field( array(
          'name'       => __( 'Clínica', 'dentalvip' ),
          'id'         => $prefix . '_phrase_company',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Parallax image setting
      $cmb_home->add_field( array(
          'name'       => __( 'Imagen de Estadísticas', 'dentalvip' ),
          'id'         => $prefix . '_statistic_bg',
          'type'       => 'file',
          'repeatable' => false
      ) );


  }

