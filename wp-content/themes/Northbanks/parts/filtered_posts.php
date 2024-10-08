<div class="container">
    <div class="container__inner fpost">

        <?php
        // Get the selected categories from a query parameter
        $selected_categories = isset($_GET['category']) ? array_map('sanitize_text_field', $_GET['category']) : [];

        // Prepare a category query if any categories are selected
        $category_query = !empty($selected_categories) ? implode(',', $selected_categories) : '';

        ?>
        <!-- Category Filter Form with Checkboxes -->
        <div class="fpost__filters">
            <form method="get" action="">
                <div class="fpost__filter">
                    <p>Filter by:</p>
                    <?php 
                    // Get all categories
                    $categories = get_categories();
                    foreach ($categories as $category) {
                        $checked = in_array($category->slug, $selected_categories) ? 'checked' : '';
                        echo '<label class="fpost__label">';
                        echo '<input onChange="this.form.submit()" type="checkbox" name="category[]" value="' . esc_attr($category->slug) . '" ' . $checked . '>';
                        echo '<span>' . esc_html($category->name) . '</span>';
                        echo '</label><br>';
                    }
                    ?>
                </div>
            </form>
        </div>
    </div>
    <div class="container__inner container__inner--overflow">
    <?php $args = array(
        'post_type' => 'case_studies',
        'posts_per_page' => -1,
        'category_name' => $category_query, // Filter by selected categories
    );
    $query = new WP_Query($args); ?>

    <div class="fpost__sliders">
        <div class="fpost__accent"></div>
        <div class="fpost__title">
            <div class="fpost__title--inner">
            <h1><?php the_sub_field('fpost_title'); ?></h1>
                <?php if ($query->have_posts()) : ?>
                    <div class="fpost__info">
                    <?php while ($query->have_posts()) :
                    $query->the_post();
                    ?>  
                    <span>
                        <p><?php the_date('d, m'); ?></p>
                        <p><?php the_title();?></p>
                    </span>
                    <?php endwhile; ?>
                </div>
                <?php endif;?>
            </div>
        </div>
          
    <?php if ($query->have_posts()) :
        echo '<div class="fpost__slider">';
        while ($query->have_posts()) :
            $query->the_post();
            ?>
            <div class="fpost__slide">
                <?php the_post_thumbnail(); ?>
                <a href="<?php the_permalink(); ?>"><h2><?php the_title(); ?></h2></a>
            </div>
            <?php
        endwhile;
        echo '</div>';
    else :
        echo '<p>No posts found.</p>';
    endif;
    wp_reset_postdata();
    ?>

<?php $args = array(
        'post_type' => 'case_studies',
        'posts_per_page' => -1,
        'category_name' => $category_query, // Filter by selected categories
        'offset' => '3',
        'order' => 'asc',
    );
    $query = new WP_Query($args); ?>

<?php if ($query->have_posts()) :
        echo '<div class="fpost__lowerslider">';
        while ($query->have_posts()) :
            $query->the_post();
            ?>
            <div class="fpost__slide">
                <?php the_post_thumbnail(); ?>
                <a href="<?php the_permalink(); ?>"><h2><?php the_title(); ?></h2></a>
            </div>
            <?php
        endwhile;
        echo '</div>';
    else :
        echo '<p>No posts found.</p>';
    endif;
    wp_reset_postdata();
    ?>
    </div>
    </div>
</div>