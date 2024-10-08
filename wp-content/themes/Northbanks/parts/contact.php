<div class="container">
    <div class="container__inner cols contact">
        <div class="cols__col--1of3">
            <h1><?php the_sub_field('cont_title'); ?></h1>
            <p><?php the_sub_field('cont_body'); ?></p>
        </div>
        <div class="cols__col--2of3 contact__form">
            <?php the_sub_field('cont_form'); ?>
        </div>
    </div>
</div>