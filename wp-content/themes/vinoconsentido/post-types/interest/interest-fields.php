<?php
  /**
   * This document contains the fields used for the Interest Field custom type
   */

  add_action( 'cmb2_admin_init', 'cmb2_interest_metaboxes' );
  
  /***********************************************
   * Define the metabox and field configurations *
   ***********************************************/
  function cmb2_interest_metaboxes() {
    // Start with an underscore to hide fields from custom fields list
    $prefix = '_interest';
    //Initiation of the metabox Contact group
    $cmb_interest = new_cmb2_box( array(
      'id'            => $prefix . '_interest_hero_group',
      'title'         => __( 'Enlace', 'dentalvip' ),
      'object_types'  => array( 'interest', ),
      'context'       => 'normal',
      'priority'      => 'high',
      'show_names'    => true,
      'repeatable'    => true,
      'closed'        => false,
    ) );

    // Hero title setting
    $cmb_interest->add_field( array(
      'name'       => __( 'Nombre', 'dentalvip' ),
      'id'         => $prefix . '_nombre',
      'type'       => 'text',
      'repeatable' => false
    ) );

    // Hero title setting
    $cmb_interest->add_field( array(
      'name'       => __( 'Imagen', 'dentalvip' ),
      'id'         => $prefix . '_image',
      'type'       => 'file',
      'repeatable' => false
    ) );

    // Hero title setting
    $cmb_interest->add_field( array(
      'name'       => __( 'Uri', 'dentalvip' ),
      'id'         => $prefix . '_uri',
      'type'       => 'text',
      'repeatable' => false
    ) );

  }

