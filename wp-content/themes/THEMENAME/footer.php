    <?php 
    $footerLogo = get_field('logo_white', 'options');
    $promoLogo = get_field('', 'options');
    if (get_field('show_footer_form')): ?>
    <div class="container container--grey">
        <div class="container__inner prefooter">
        <h3>Keep in touch</h3>
        <p>Subscribe to our newsletter for latest news and industry trends.</p>
        <?php the_field('footer_form', 'options') ?>
        </div>
    </div>
    <?php endif; ?>
    <footer class="container container--black">
        <div class="container__inner cols">
            <div class="footer__logo cols__col--5">
                <a href="/"><img src="<?php echo $footerLogo['url']; ?>" alt="<?php echo $footerLogo['alt']; ?>"></a>
            </div>
            <div class="footer__menu cols__col--5">
            <?php
            wp_nav_menu(array(
              'theme_location' => 'footer',
              'container' => '',
              'container_class' => 'nav__container--footer',
              'menu_class' => 'nav__menu--footer',
            ));
          ?>
            </div>
            <div class="footer__social cols__col--5"></div>
            <div class="footer__promo cols__col--5">
                <img src="<?php echo $promoLogo['url']; ?>" alt="<?php echo $promoLogo['alt']; ?>">
            </div>
            <div class="footer__socials cols__col--5"></div>
            <div class="footer__legal">
                <?php the_field('footer_legal', 'options'); ?>
            </div>
        </div>
    </footer>
</body>

<?php wp_footer(); ?>
</html>