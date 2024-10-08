<div class="container">
    <div class="container__inner container__inner--narrow cols clients">
        <h2><?php the_sub_field('client_title');?></h2>
        <?php if( have_rows('client_repeater') ): ?>
            <?php while( have_rows('client_repeater') ): the_row();
            if (get_sub_field('client_logo')): 
                $client = get_sub_field('client_logo');
            else: 
                $client = get_field('default_image', 'options');
            endif; ?> 
                <img class="cols__col cols__col--4 clients__client" src="<?php echo $client['url']; ?>" alt="<?php echo $client['alt']; ?>">
            <?php endwhile; ?>
        <?php endif; ?>
    </div>
</div>