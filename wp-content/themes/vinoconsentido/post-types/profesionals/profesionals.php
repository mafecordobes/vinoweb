<?php
  /**
   * This document contains the fields used for the Profesionals custom type
   */

  add_action( 'cmb2_admin_init', 'cmb2_profesionals_metaboxes' );
  
  /***********************************************
   * Define the metabox and field configurations *
   ***********************************************/
  function cmb2_profesionals_metaboxes() {
    // Start with an underscore to hide fields from custom fields list
    $prefix = '_profesionals';
    //Initiation of the metabox Contact group
    $cmb_profesionals = new_cmb2_box( array(
      'id'            => $prefix . '_profesionals_hero_group',
      'title'         => __( 'General', 'dentalvip' ),
      'object_types'  => array( 'page' ),
      'show_on'       => array( 'key' => 'page-template', 'value' => 'profesionals.php' ), 
      'context'       => 'normal',
      'priority'      => 'high',
      'show_names'    => true,
      'repeatable'    => true,
      'closed'        => false,
    ) );

    // Hero title setting
    $cmb_profesionals->add_field( array(
      'name'       => __( 'Imagen', 'dentalvip' ),
      'id'         => $prefix . '_imagen',
      'type'       => 'file',
      'repeatable' => false
    ) );

    $cmb_profesionals->add_field( array(
      'name'       => __( 'Subtitulo', 'dentalvip' ),
      'id'         => $prefix . '_subtitle',
      'type'       => 'text',
      'repeatable' => false
    ) );

    $cmb_profesionals->add_field( array(
      'name'       => __( 'Descripción', 'dentalvip' ),
      'id'         => $prefix . '_description',
      'type'       => 'text',
      'repeatable' => false
    ) );

    $profesionals_group = $cmb_profesionals->add_field( array(
      'name'       => __( 'Profesionales', 'dentalvip' ),
      'id'         => $prefix . '_profesional_group',
      'type'        => 'group',
      'repeatable'  => true,
      'options'     => array(
          'group_title'   => __( 'Profesional {#}', 'dentalvip' ),
          'add_button'    => __( 'Agregar profesional', 'dentalvip' ),
          'remove_button' => __( 'Eliminar Profesional', 'dentalvip' ),
          'sortable'      => true,
      ),
    ) );

    $cmb_profesionals->add_group_field( $profesionals_group, array(
      'name' => 'Fotografía',
      'id'   => 'photo',
      'type' => 'file',
    ) );
  
    $cmb_profesionals->add_group_field( $profesionals_group, array(
        'name' => 'Nombre',
        'id'   => 'nombre',
        'type' => 'text',
    ) );

    $cmb_profesionals->add_group_field( $profesionals_group, array(
      'name' => 'Título',
      'id'   => 'title',
      'type' => 'text',
    ) );

    $cmb_profesionals->add_group_field( $profesionals_group, array(
      'name' => 'Descripción',
      'id'   => 'description',
      'type' => 'wysiwyg',
    ) );

    $cmb_profesionals->add_group_field( $profesionals_group, array(
      'name' => 'Logo universidad',
      'id'   => 'logo',
      'type' => 'file',
      'repeatable' => true,
    ) );

    $team_group = $cmb_profesionals->add_field( array(
      'name'       => __( 'Personal', 'dentalvip' ),
      'id'         => $prefix . '_team_group',
      'type'        => 'group',
      'repeatable'  => true,
      'options'     => array(
          'group_title'   => __( 'Personal {#}', 'dentalvip' ),
          'add_button'    => __( 'Agregar personal', 'dentalvip' ),
          'remove_button' => __( 'Eliminar personal', 'dentalvip' ),
          'sortable'      => true,
      ),
    ) );

    $cmb_profesionals->add_group_field( $team_group, array(
      'name' => 'Fotografía',
      'id'   => 'photo',
      'type' => 'file',
    ) );
  
    $cmb_profesionals->add_group_field( $team_group, array(
        'name' => 'Nombre',
        'id'   => 'nombre',
        'type' => 'text',
    ) );

    $cmb_profesionals->add_group_field( $team_group, array(
      'name' => 'Título',
      'id'   => 'title',
      'type' => 'text',
    ) );

    $cmb_profesionals->add_field( array(
      'name'       => __( 'Background Formulario', 'dentalvip' ),
      'id'         => $prefix . '_bg_form',
      'type'       => 'file',
      'repeatable' => false,
    ) );

    $cmb_profesionals->add_field( array(
      'name'       => __( 'Título enlaces de intéres', 'dentalvip' ),
      'id'         => $prefix . '_title_interest',
      'type'       => 'text',
      'repeatable' => false,
    ) );

    $paramsInterest = array(
      'post_type' => 'interest',
      'numberposts' => -1,
      'order' => 'ASC'
    );
    $cptInterest = get_posts($paramsInterest);

    $arrayInterest = array();

    foreach($cptInterest as $interest){
      $arrayInterest[$interest->ID] = $interest->post_title;
    }

    $cmb_profesionals->add_field( array(
      'name'             => __( 'Enlace de intéres', 'dentalvip' ),
      'description'      => __( 'Máximo tres enlaces', 'dentalvip' ),
      'id'               => $prefix . '_link_interest_one',
      'type'             => 'select',
      'show_option_none' => true,
      'default'          => 'none',
      'options'          => $arrayInterest,
      'repeatable'       => true,
    ) );

  }

