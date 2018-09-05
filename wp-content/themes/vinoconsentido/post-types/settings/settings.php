<?php
  /**
   * Settings custom Type
   * This file contains the custom type definition
   * for general settings
   */
  
  // Security enhancement
  if ( !defined('ABSPATH') ) die("Forbidden");
  
  /**
   * Create new custom post type
   */
  function create_post_type_settings(){
  
    /** @var WP_Post_Type $postType */
    $postType = register_post_type('settings', getSettingOptionArguments());
    // Check if there was an error creating the post type
    if ($postType instanceof WP_Error) {
      // log or whatever
    }
  }
  add_action('init', 'create_post_type_settings');
  
  /**
   * Set arguments for post type
   */
  function getSettingOptionArguments(){
    $cptSlug = get_option('settings_base', 'settings');
    $args = array(
      'labels'             => getSettingOptionLabels(),
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
  function getSettingOptionLabels(){
    $labels = array(
      'name'               => _x( 'Configuraciones Generales', 'post type general name', 'dentalvip' ),
      'singular_name'      => _x( 'Configuraciones Generales', 'post type singular name', 'dentalvip' ),
      'menu_name'          => _x( 'Configuraciones Generales', 'admin menu', 'dentalvip' ),
      'name_admin_bar'     => _x( 'Configuraciones Generales', 'add new on admin bar', 'dentalvip' ),
      'add_new'            => _x( 'New Configuración General', 'baptism certificate', 'dentalvip' ),
      'add_new_item'       => __( 'New Configuración General', 'dentalvip' ),
      'new_item'           => __( 'Add New Configuración General', 'dentalvip' ),
      'edit_item'          => __( 'Edit Configuraciones Generales', 'dentalvip' ),
      'view_item'          => __( 'View Configuraciones Generales', 'dentalvip' ),
      'all_items'          => __( 'All Configuraciones Generales', 'dentalvip' ),
      'search_items'       => __( 'Search Configuraciones Generales', 'dentalvip' ),
      'parent_item_colon'  => __( 'Parent Configuraciones Generales:', 'dentalvip' ),
      'not_found'          => __( 'No Configuraciones Generales were found.', 'dentalvip' ),
      'not_found_in_trash' => __( 'No Configuraciones Generales were found in trash.', 'dentalvip' )
    );
    return $labels;
  }

  /**
   * Add permalink option to permalinks page
   * to allow slug customization from the dashboard
   */
  function settings_load_permalinks() {
    if( isset( $_POST['settings_base'] ) ) {
      update_option(
        'settings_base',
        sanitize_title_with_dashes( $_POST['settings_base'] )
      );
    }
    // Permalink page
    add_settings_field(
      'settings_base',
      __( 'Configuraciones Generales base url', 'dentalvip' ),
      'settings_field_callback',
      'permalink', 'optional'
    );
  }
 // add_action( 'load-options-permalink.php', 'settings_load_permalinks' );
  
  /**
   * Field callback for permalinks options
   */
  function settings_field_callback() {
    $value = get_option( 'settings_base' );
    echo '<input type="text" value="' . esc_attr( $value ) . '" name="settings_base" id="settings_base" class="regular-text" />';
  }
  
  /**
   * Flush permalinks
   * This will be executed just when the theme get activated
   *
   * This function registers the slug in wordpress
   */
  function rewrite_flush_for_settings() {
    /** Init post type */
    create_post_type_settings();
    /** Flush rewrite options to update permalinks */
    flush_rewrite_rules();
  }
  add_action('after_switch_theme', 'rewrite_flush_for_settings');

  // Files required
  require "settings-fields.php";
