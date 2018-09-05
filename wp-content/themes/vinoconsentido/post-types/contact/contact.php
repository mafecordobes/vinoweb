<?php
  /**
   * This document contains the fields used for the Contact custom type
   */

  add_action( 'cmb2_admin_init', 'cmb2_contact_metaboxes' );
  
  /***********************************************
   * Define the metabox and field configurations *
   ***********************************************/
  function cmb2_contact_metaboxes() {
    // Start with an underscore to hide fields from custom fields list
    $prefix = '_contact';
    //Initiation of the metabox Contact group
    $cmb_contact = new_cmb2_box( array(
      'id'            => $prefix . '_contact_group',
      'title'         => __( 'Página de contacto', 'dentalvip' ),
      'object_types'  => array( 'page' ),
      'show_on'       => array( 'key' => 'page-template', 'value' => 'contact.php' ), 
      'context'       => 'normal',
      'priority'      => 'high',
      'show_names'    => true,
      'repeatable'    => true,
      'closed'        => false,
    ) );

    // Hero title setting
    $cmb_contact->add_field( array(
      'name'       => __( 'Imagen', 'dentalvip' ),
      'id'         => $prefix . '_imagen',
      'type'       => 'file',
      'repeatable' => false
    ) );

    $cmb_contact->add_field( array(
      'name'       => __( 'Subtitulo', 'dentalvip' ),
      'id'         => $prefix . '_subtitle',
      'type'       => 'text',
      'repeatable' => false
    ) );

    $cmb_contact->add_field( array(
      'name'       => __( 'Descripción', 'dentalvip' ),
      'id'         => $prefix . '_description',
      'type'       => 'textarea',
      'repeatable' => false
    ) );

    
    $cmb_contact->add_field( array(
      'name'       => __( 'Título servicios', 'dentalvip' ),
      'id'         => $prefix . '_title_services',
      'type'       => 'text',
      'repeatable' => false,
    ) );
   
    $services_group = $cmb_contact->add_field( array(
      'name'       => __( 'Servicio', 'dentalvip' ),
      'id'         => $prefix . '_team_group',
      'type'        => 'group',
      'repeatable'  => true,
      'options'     => array(
          'group_title'   => __( 'Servicio {#}', 'dentalvip' ),
          'add_button'    => __( 'Agregar servicio', 'dentalvip' ),
          'remove_button' => __( 'Eliminar servicio', 'dentalvip' ),
          'sortable'      => true,
      ),
    ) );

    $cmb_contact->add_group_field( $services_group, array(
      'name' => 'Título',
      'id'   => 'title',
      'type' => 'text',
    ) );
  
    $cmb_contact->add_group_field( $services_group, array(
        'name' => 'Imagen',
        'id'   => 'image',
        'type' => 'file',
    ) );

    $cmb_contact->add_group_field( $services_group, array(
      'name' => 'Logo',
      'id'   => 'logo',
      'type' => 'file',
    ) );

    $cmb_contact->add_group_field( $services_group, array(
      'name' => 'Descripción',
      'id'   => 'description',
      'type' => 'textarea',
    ) );

    $cmb_contact->add_field( array(
      'name'       => __( 'Background Redes Sociales', 'dentalvip' ),
      'id'         => $prefix . '_bg_form',
      'type'       => 'file',
      'repeatable' => false,
    ) );

  }

