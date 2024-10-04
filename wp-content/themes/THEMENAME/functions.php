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

?>