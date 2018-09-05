<?php
  /**
   * This document contains the fields used for the General Setting custom type
   */

  add_action( 'cmb2_admin_init', 'cmb2_testimonials_metaboxes' );
  
  /***********************************************
   * Define the metabox and field configurations *
   ***********************************************/
  function cmb2_testimonials_metaboxes() {
    // Start with an underscore to hide fields from custom fields list
    $prefix = '_testimonials';
    //Initiation of the metabox Contact group
    $cmb_home = new_cmb2_box( array(
      'id'            => $prefix . '_testimonials_hero_group',
      'title'         => __( 'Procedimiento', 'dentalvip' ),
      'object_types'  => array( 'testimonials', ),
      'context'       => 'normal',
      'priority'      => 'high',
      'show_names'    => true,
      'repeatable'    => true,
      'closed'        => false,
    ) );

      // Name setting
      $cmb_home->add_field( array(
          'name'       => __( 'Nombre', 'dentalvip' ),
          'id'         => $prefix . '_nombre',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Testimonial setting
      $cmb_home->add_field( array(
          'name'       => __( 'Testimonio', 'dentalvip' ),
          'id'         => $prefix . '_text',
          'type'       => 'textarea',
          'repeatable' => false
      ) );

      // Occupation setting
      $cmb_home->add_field( array(
          'name'       => __( 'Profesión', 'dentalvip' ),
          'id'         => $prefix . '_prof',
          'type'       => 'text',
          'repeatable' => false
      ) );

      // Photo setting
      $cmb_home->add_field( array(
          'name'       => __( 'Foto', 'dentalvip' ),
          'id'         => $prefix . '_photo',
          'type'       => 'file',
          'repeatable' => false
      ) );

  }

