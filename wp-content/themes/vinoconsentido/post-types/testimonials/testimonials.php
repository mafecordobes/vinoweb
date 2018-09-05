<?php
  /**
   * Testimonials custom Type
   * This file contains the custom type definition
   * for features testimonials
   */
  
  // Security enhancement
  if ( !defined('ABSPATH') ) die("Forbidden");
  
  /**
   * Create new custom post type
   */
  function create_post_type_testimonials(){
  
    /** @var WP_Post_Type $postType */
    $postType = register_post_type('testimonials', getTestimonialOptionArguments());
    // Check if there was an error creating the post type
    if ($postType instanceof WP_Error) {
      // log or whatever
    }
  }
  add_action('init', 'create_post_type_testimonials');
  
  /**
   * Set arguments for post type
   */
  function getTestimonialOptionArguments(){
    $cptSlug = get_option('testimonials_base', 'testimonials');
    $args = array(
      'labels'             => getTestimonialOptionLabels(),
      'description'        => __( 'Testimonios', 'dentalvip' ),
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
  function getTestimonialOptionLabels(){
    $labels = array(
      'name'               => _x( 'Testimonios', 'post type general name', 'dentalvip' ),
      'singular_name'      => _x( 'Testimonios', 'post type singular name', 'dentalvip' ),
      'menu_name'          => _x( 'Testimonios', 'admin menu', 'dentalvip' ),
      'name_admin_bar'     => _x( 'Testimonios', 'add new on admin bar', 'dentalvip' ),
      'add_new'            => _x( 'New Testimonio', 'baptism certificate', 'dentalvip' ),
      'add_new_item'       => __( 'New Testimonio', 'dentalvip' ),
      'new_item'           => __( 'Add New Testimonio', 'dentalvip' ),
      'edit_item'          => __( 'Edit Testimonios', 'dentalvip' ),
      'view_item'          => __( 'View Testimonios', 'dentalvip' ),
      'all_items'          => __( 'All Testimonios', 'dentalvip' ),
      'search_items'       => __( 'Search Testimonios', 'dentalvip' ),
      'parent_item_colon'  => __( 'Parent Testimonios:', 'dentalvip' ),
      'not_found'          => __( 'No Testimonios were found.', 'dentalvip' ),
      'not_found_in_trash' => __( 'No Testimonios were found in trash.', 'dentalvip' )
    );
    return $labels;
  }

  /**
   * Add permalink option to permalinks page
   * to allow slug customization from the dashboard
   */
  function testimonials_load_permalinks() {
    if( isset( $_POST['testimonials_base'] ) ) {
      update_option(
        'testimonials_base',
        sanitize_title_with_dashes( $_POST['testimonials_base'] )
      );
    }
    // Permalink page
    add_testimonials_field(
      'testimonials_base',
      __( 'Testimonios base url', 'dentalvip' ),
      'testimonials_field_callback',
      'permalink', 'optional'
    );
  }
 // add_action( 'load-options-permalink.php', 'testimonials_load_permalinks' );
  
  /**
   * Field callback for permalinks options
   */
  function testimonials_field_callback() {
    $value = get_option( 'testimonials_base' );
    echo '<input type="text" value="' . esc_attr( $value ) . '" name="testimonials_base" id="testimonials_base" class="regular-text" />';
  }
  
  /**
   * Flush permalinks
   * This will be executed just when the theme get activated
   *
   * This function registers the slug in wordpress
   */
  function rewrite_flush_for_testimonials() {
    /** Init post type */
    create_post_type_testimonials();
    /** Flush rewrite options to update permalinks */
    flush_rewrite_rules();
  }
  add_action('after_switch_theme', 'rewrite_flush_for_testimonials');

  // Files required
  require "testimonials-fields.php";
