<div class="container">
    <div class="container__inner container__inner--overflow cols cols--nowrap">
        <div class="cols__col cols__col--1of3 cs__title">
            <div class="cs__title--inner">
                <h2>Our <br /> Work</h2>
            </div>
            <div class="cs__inner">
                <?php $args = array(
                    'post_type' => 'case_studies',
                    'posts_per_page' => -1,
                );
                $query = new WP_Query($args); ?>
                <?php if ($query->have_posts()): ?>
                    <div class="cs__info">
                        <?php while ($query->have_posts()):
                            $query->the_post();
                            ?>
                            <span>
                                <p><?php the_date('d, m'); ?></p>
                                <p><?php the_title(); ?></p>
                            </span>
                        <?php endwhile; ?>
                    </div>
                <?php endif; ?>
                <?php $link = get_sub_field('css_link'); ?>
                <a class="button button--transparent button--left" href="<?php echo $link['url'];?>"><?php echo $link['title']; ?></a>
            </div>
        </div>
        <div class="cols__col cols__col--full cs__slider">
            <?php if ($query->have_posts()):
                while ($query->have_posts()):
                    $query->the_post();
                    ?>
                    <div class="fpost__slide">
                        <?php the_post_thumbnail(); ?>
                        <a href="<?php the_permalink(); ?>">
                            <h2><?php the_title(); ?></h2>
                        </a>
                    </div>
                    <?php
                endwhile;
                echo '</div>';
            else:
                echo '<p>No posts found.</p>';
            endif;
            wp_reset_postdata();
            ?>
        </div>
    </div>
</div>
</div>
</div>