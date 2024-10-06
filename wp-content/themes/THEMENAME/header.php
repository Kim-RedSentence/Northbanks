<!DOCTYPE html>
<html lang="en">
<head>
<?php wp_head(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/> -->
    <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/assets/js/main.js"></script>
    <!-- <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->
    <script src="https://kit.fontawesome.com/23b2a3419b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.typekit.net/jnc7wra.css">
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css"/>
</head>
<body>
  
<?php 
  $headLogo = get_field('logo_dark', 'options');
  $email = get_field('contact_email', 'options');
  $number = get_field('contact_number', 'options');
?>
<div class="topbar container">
  <div class="container__inner cols cols--row">
    <div class="topbar__logo">
      <a href="/"><img src="<?php echo $headLogo['url']; ?>" alt="<?php echo $headLogo['alt']; ?>"></a>
    </div>
    <div class="topbar__right">
      <div class="topbar__contact">
        <ul>
          <li><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></li>
          <li><a href="tel:<?php echo $number; ?>"><?php echo $number; ?></a></li>
        </ul>
        <a href="<?php the_field('linkedin', 'options');?>"><i class="fa-brands fa-linkedin-in"></i></a>
        <a href="<?php the_field('instagram', 'options'); ?>"><i class="fa-brands fa-instagram"></i></a>
      </div>
      <div class="topbar__button">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <nav class="nav">
          <?php
            wp_nav_menu(array(
              'theme_location' => 'primary',
              'container' => '',
              'container_class' => 'nav__container',
              'menu_class' => 'nav__menu',
            ));
          ?>
          <div class="nav__contact">
            <ul>
              <li><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></li>
              <li><a href="tel:<?php echo $number; ?>"><?php echo $number; ?></a></li>
            </ul>
        </div>
        <div class="nav__socials">
          <span>
            <ul>
              <li>
                <a href=""><i class="fa-brands fa-linkedin-in"></i></a>
              </li>
              <li>
                <a href=""><i class="fa-brands fa-instagram"></i></a>
              </li>
            </ul>
          </span>
          <span>
            <a class="button button--white" href="">Lets get together</a>
          </span>
        </div>
      </nav>
    </div>
  </div>
</div>