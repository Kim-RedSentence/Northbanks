<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '~/Z/W(s}c0YB),-{$-~HL*n5!QkxXVo)~pH.T )z/{h}pD#X:Hee5XGt)S!}se5F' );
define( 'SECURE_AUTH_KEY',  '/.3=xFc,a*a,,d_YpT8&;]Q1u1*~ `|$>#U,/@IeAp.JvWKUaHB<>@_Hao$?T&#.' );
define( 'LOGGED_IN_KEY',    'VtL4xFekGJBM@1ptiJ?,^Rn(/6V~Vtq587QRi10I}pfjUDf@sRI#Tg|!N*-3)rX+' );
define( 'NONCE_KEY',        '4Kot!B,B__ruS{7aVvY{Te?)=>:%M3@sv*cOt0=(t[=.~F@rw6Z|c:tkO().akV+' );
define( 'AUTH_SALT',        '}Hj;W3fq=>daY !btli=ghM}bbgQt]rtr5] )yo2TxkM9~3}1efG]VZ~S3idkGJ1' );
define( 'SECURE_AUTH_SALT', 'V:wJq5b+.!z[H|`*!J.#R`4,^u())3]zHDBn$nXj|Inc!-{;GA:gDq(]H[:B=V:o' );
define( 'LOGGED_IN_SALT',   'hUU?jy7bvIY w#lKpg:n5{z=V^Bi[^=,Jj(0+ s/1GrizyF.@317rBXgyl4/=g;m' );
define( 'NONCE_SALT',       '<~?^(HbUCW}YJ),0/^X<G`T xtLT#2F=2Rg8^uSv}pJr.}_ZbOq-A}U3EJ7E=#o,' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
