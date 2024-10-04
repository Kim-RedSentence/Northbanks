<div class="container">
    <div class="container__inner cols posts">
        <div class="cols__col--4 posts__title">
            <h3><?php the_sub_field('posts_title'); ?></h3>
            <p><?php the_sub_field('posts_body'); ?></p>
            <?php 
            if (get_sub_field('posts_link')): 
                $link = get_sub_field('posts_link');
            ?>
            <a class="button button--transparent button--left" href="<?php echo $link['url']; ?>"><?php echo $link['title']; ?></a>
            <?php endif; ?>
        </div>
        <?php
        $posts= new WP_Query(array(
            'posts_per_page' => 3
        )); 
        while ( $posts->have_posts() ) : $posts->the_post(); ?>
                <div class="cols__col--4 posts__post">
                <?php the_post_thumbnail();?>
                <a href="<?php the_permalink();?>">
                    <h4><?php the_title(); ?></h4>
                    <?php the_excerpt(); ?>
                </a>
            </div>
        <?php endwhile; ?>
        <?php wp_reset_postdata(); ?>
    </div>
</div>