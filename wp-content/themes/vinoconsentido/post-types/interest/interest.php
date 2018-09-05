<?php
  /**
   * interest link custom Type
   * This file contains the custom type definition
   * for features interest link
   */
  
  // Security enhancement
  if ( !defined('ABSPATH') ) die("Forbidden");
  
  /**
   * Create new custom post type
   */
  function create_post_type_interest(){
  
    /** @var WP_Post_Type $postType */
    $postType = register_post_type('interest', getInterestOptionArguments());
    // Check if there was an error creating the post type
    if ($postType instanceof WP_Error) {
      // log or whatever
    }
  }
  add_action('init', 'create_post_type_interest');
  
  /**
   * Set arguments for post type
   */
  function getInterestOptionArguments(){
    $cptSlug = get_option('interest_base', 'interest');
    $args = array(
      'labels'             => getInterestOptionLabels(),
      'description'        => __( 'Enlaces de interes', 'dentalvip' ),
      'public'             => true,
      'publicly_queryable' => true,
      'show_ui'            => true,
      'show_in_menu'       => true,
      'query_var'          => true,
      'rewrite'            => array( 'slug' => $cptSlug ),
      'capability_type'    => 'post',
      'has_archive'        => true,
      'hierarchical'       => false,
      'supports'           => array('title'),
      'menu_icon'          => 'dashicons-info',
      'menu_position'      => _POSITION_BELOW_PAGES,
      'show_in_admin_bar'     => true,
      'show_in_nav_menus'     => true,
      'can_export'            => true,
      'exclude_from_search'   => false,
      'register_meta_box_cb'  => '',
    );
    return $args;
  }

  /**
   * Set labels for custom post type
   * @return array labels
   */
  function getInterestOptionLabels(){
    $labels = array(
      'name'               => _x( 'Enlaces de Interés', 'post type general name', 'dentalvip' ),
      'singular_name'      => _x( 'Enlaces de Interés', 'post type singular name', 'dentalvip' ),
      'menu_name'          => _x( 'Enlaces de Interés', 'admin menu', 'dentalvip' ),
      'name_admin_bar'     => _x( 'Enlaces de Interés', 'add new on admin bar', 'dentalvip' ),
      'add_new'            => _x( 'New Enlace de Interés', 'baptism certificate', 'dentalvip' ),
      'add_new_item'       => __( 'New Enlace de Interés', 'dentalvip' ),
      'new_item'           => __( 'Add New Enlace de Interés', 'dentalvip' ),
      'edit_item'          => __( 'Edit Enlaces de Interés', 'dentalvip' ),
      'view_item'          => __( 'View Enlaces de Interés', 'dentalvip' ),
      'all_items'          => __( 'All Enlaces de Interés', 'dentalvip' ),
      'search_items'       => __( 'Search Enlaces de Interés', 'dentalvip' ),
      'parent_item_colon'  => __( 'Parent Enlaces de Interés:', 'dentalvip' ),
      'not_found'          => __( 'No Enlaces de Interés were found.', 'dentalvip' ),
      'not_found_in_trash' => __( 'No Enlaces de Interés were found in trash.', 'dentalvip' )
    );
    return $labels;
  }

  /**
   * Add permalink option to permalinks page
   * to allow slug customization from the dashboard
   */
  function interest_load_permalinks() {
    if( isset( $_POST['interest_base'] ) ) {
      update_option(
        'interest_base',
        sanitize_title_with_dashes( $_POST['interest_base'] )
      );
    }
    // Permalink page
    add_interest_field(
      'interest_base',
      __( 'Enlaces de Interés base url', 'dentalvip' ),
      'interest_field_callback',
      'permalink', 'optional'
    );
  }
  //add_action( 'load-options-permalink.php', 'interest_load_permalinks' );
  
  /**
   * Field callback for permalinks options
   */
  function interest_field_callback() {
    $value = get_option( 'interest_base' );
    echo '<input type="text" value="' . esc_attr( $value ) . '" name="interest_base" id="interest_base" class="regular-text" />';
  }
  
  /**
   * Flush permalinks
   * This will be executed just when the theme get activated
   *
   * This function registers the slug in wordpress
   */
  function rewrite_flush_for_interest() {
    /** Init post type */
    create_post_type_interest();
    /** Flush rewrite options to update permalinks */
    flush_rewrite_rules();
  }
  add_action('after_switch_theme', 'rewrite_flush_for_interest');

  // Files required
  require "interest-fields.php";
