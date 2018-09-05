<?php
  /**
   * Procedures custom Type
   * This file contains the custom type definition
   * for features procedures
   */
  
  // Security enhancement
  if ( !defined('ABSPATH') ) die("Forbidden");
  
  /**
   * Create new custom post type
   */
  function create_post_type_procedures(){
  
    /** @var WP_Post_Type $postType */
    $postType = register_post_type('procedures', getProcedureOptionArguments());
    // Check if there was an error creating the post type
    if ($postType instanceof WP_Error) {
      // log or whatever
    }
  }
  add_action('init', 'create_post_type_procedures');
  
  /**
   * Set arguments for post type
   */
  function getProcedureOptionArguments(){
    $cptSlug = get_option('procedures_base', 'procedures');
    $args = array(
      'labels'             => getProcedureOptionLabels(),
      'description'        => __( 'Configuraciones Generales', 'dentalvip' ),
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
  function getProcedureOptionLabels(){
    $labels = array(
      'name'               => _x( 'Procedimientos Destacados', 'post type general name', 'dentalvip' ),
      'singular_name'      => _x( 'Procedimientos Destacados', 'post type singular name', 'dentalvip' ),
      'menu_name'          => _x( 'Procedimientos Destacados', 'admin menu', 'dentalvip' ),
      'name_admin_bar'     => _x( 'Procedimientos Destacados', 'add new on admin bar', 'dentalvip' ),
      'add_new'            => _x( 'New Procedimiento Destacado', 'baptism certificate', 'dentalvip' ),
      'add_new_item'       => __( 'New Procedimiento Destacado', 'dentalvip' ),
      'new_item'           => __( 'Add New Procedimiento Destacado', 'dentalvip' ),
      'edit_item'          => __( 'Edit Procedimientos Destacados', 'dentalvip' ),
      'view_item'          => __( 'View Procedimientos Destacados', 'dentalvip' ),
      'all_items'          => __( 'All Procedimientos Destacados', 'dentalvip' ),
      'search_items'       => __( 'Search Procedimientos Destacados', 'dentalvip' ),
      'parent_item_colon'  => __( 'Parent Procedimientos Destacados:', 'dentalvip' ),
      'not_found'          => __( 'No Procedimientos Destacados were found.', 'dentalvip' ),
      'not_found_in_trash' => __( 'No Procedimientos Destacados were found in trash.', 'dentalvip' )
    );
    return $labels;
  }

  /**
   * Add permalink option to permalinks page
   * to allow slug customization from the dashboard
   */
  function procedures_load_permalinks() {
    if( isset( $_POST['procedures_base'] ) ) {
      update_option(
        'procedures_base',
        sanitize_title_with_dashes( $_POST['procedures_base'] )
      );
    }
    // Permalink page
    add_procedures_field(
      'procedures_base',
      __( 'Procedimientos Destacados base url', 'dentalvip' ),
      'procedures_field_callback',
      'permalink', 'optional'
    );
  }
  //add_action( 'load-options-permalink.php', 'procedures_load_permalinks' );
  
  /**
   * Field callback for permalinks options
   */
  function procedures_field_callback() {
    $value = get_option( 'procedures_base' );
    echo '<input type="text" value="' . esc_attr( $value ) . '" name="procedures_base" id="procedures_base" class="regular-text" />';
  }
  
  /**
   * Flush permalinks
   * This will be executed just when the theme get activated
   *
   * This function registers the slug in wordpress
   */
  function rewrite_flush_for_procedures() {
    /** Init post type */
    create_post_type_procedures();
    /** Flush rewrite options to update permalinks */
    flush_rewrite_rules();
  }
  add_action('after_switch_theme', 'rewrite_flush_for_procedures');

  // Files required
  require "procedures-fields.php";
