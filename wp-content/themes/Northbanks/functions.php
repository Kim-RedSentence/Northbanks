<?php

ini_set( 'upload_max_size' , '256M' );
ini_set( 'post_max_size', '256M');
ini_set( 'max_execution_time', '300' );
ini_set( 'mysql.trace_mode', 0 );

add_theme_support( 'menus' );
add_theme_support( 'post-thumbnails' );
register_nav_menus( array(
    'primary'   => 'Display this menu in the header',
    'footer'   => 'Display this menu in the footer',

) );

function work_post_type() {
	register_post_type('case_studies',
		array(
			'labels'      => array(
				'name'          => __('Case Studies', 'textdomain'),
				'singular_name' => __('Case Study', 'textdomain'),
                
			),
            'args'            => array (
                'menu_icon'     => 'dashicons-text-page',
            ),
            'taxonomies'  => array( 'category' ),
            'supports'        => array( 
                'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions'
            ),
				'public'      => true,
				'has_archive' => true,
		)
	);
}
add_action('init', 'work_post_type');
?>