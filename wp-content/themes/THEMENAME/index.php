<?php get_header(); ?>

<?php

$image = get_field('stories_header_image', 'options');

?>
<div class="container hero" style="background: url('<?php echo $image['url']; ?>');">
    <?php
    if (get_sub_field('hero_caption_select') != 'none'):
        if (get_sub_field('hero_caption_select') == 'left'):
            $vars = 'left';
        elseif (get_sub_field('hero_caption_select') == 'bottomleft'):
            $vars = 'bottomleft';
        else:
            $vars = 'bottomright';
        endif;
        $caption = get_sub_field('hero_caption'); ?>
        <div class="hero__caption hero__caption--<?php echo $vars; ?>">
            <p><?php echo $caption; ?></p>
        </div>
    <?php endif; ?>
    <div class="hero__dot">
        <h1><?php the_title(); ?></h1>
        <?php if (the_excerpt()): ?>
            <p><?php the_excerpt(); ?></p>
        <?php endif; ?>
        <a href="<?php the_permalink(); ?>">Read more</a>
    </div>
</div>

<?php
// Get the selected categories from a query parameter
$selected_categories = isset($_GET['category']) ? array_map('sanitize_text_field', $_GET['category']) : [];
// Get the selected tags from a query parameter
$selected_tags = isset($_GET['tag']) ? array_map('sanitize_text_field', $_GET['tag']) : [];
// Get the search query from a query parameter
$search_query = isset($_GET['search']) ? sanitize_text_field($_GET['search']) : '';
// Prepare a category query if any categories are selected
$category_query = !empty($selected_categories) ? implode(',', $selected_categories) : '';
// Prepare a tag query if any tags are selected
$tag_query = !empty($selected_tags) ? implode(',', $selected_tags) : '';

// Category and Tag Filter Form with Checkboxes
?>

<div class="container">
    <div class="container__inner blogs">
        <div class="blogs__inner cols">
            <div class="blogs__list">
                <?php
                // WP_Query arguments
                $args = array(
                    'post_type' => 'post', // Change this to your custom post type if needed
                    'posts_per_page' => 6, // Show all posts
                    'category_name' => $category_query, // Filter by selected categories
                );

                // Modify the query to include the search term
                if (!empty($search_query)) {
                    $args['s'] = $search_query; // Add search parameter
                }

                // Add tag filtering if tags are selected
                if (!empty($tag_query)) {
                    $args['tag'] = $tag_query; // Add tag parameter
                }

                // The Query
                $query = new WP_Query($args);

                // The Loop
                if ($query->have_posts()):
                    while ($query->have_posts()):
                        $query->the_post();
                        ?>
                        <div class="blogs__item">
                            <?php the_post_thumbnail(); ?>
                            <div class="blogs__item--inner">
                                <h2><?php the_title(); ?></h2>
                                <p><?php the_excerpt(); ?></p>
                                <a href="<?php the_permalink(); ?>">Read on</a>      
                          </div>
                        </div>
                        <?php
                    endwhile;
                else:
                    echo '<p>No posts found.</p>';
                endif;

                // Reset Post Data
                wp_reset_postdata();
                ?>
            </div>
            <div class="blogs__sidebar">
                <div class="blogs__filters">
                    <form method="get" action="">
                        <!-- Search Bar -->
                        <div class="bfilter__search">
                            <input type="text" id="search" name="search" value="<?php echo esc_attr($search_query); ?>"
                                placeholder="Search">
                        </div>


                        <div class="bfilter__socials">
                        <p>Follow Us:</p>
                        <ul>
                            <li><a href="<?php the_field('linkedin', 'options'); ?>"><i class="fa-brands fa-linkedin-in" aria-hidden="true"></i></a></li>
                            <li><a href="<?php the_field('instagram', 'options'); ?>"><i class="fa-brands fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                        </div>

                        <div class="bfilter__recommended">
                        <p>Our Picks:</p>

                        </div>

                        <div class="bfilter__category">
                            <p>Categories:</p>
                            <?php
                            // Get all categories
                            $categories = get_categories();
                            foreach ($categories as $category) {
                                $checked = in_array($category->slug, $selected_categories) ? 'checked' : '';
                                echo '<label>';
                                echo '<input onChange="this.form.submit()" type="checkbox" name="category[]" value="' . esc_attr($category->slug) . '" ' . $checked . '>';
                                echo esc_html($category->name);
                                echo '</label><br>';
                            }
                            ?>
                        </div>

                        <div class="bfilter__tag">
                            <p>Tags:</p>
                            <?php
                            // Get all tags
                            $tags = get_tags();
                            foreach ($tags as $tag) {
                                $checked = in_array($tag->slug, $selected_tags) ? 'checked' : '';
                                echo '<label>';
                                echo '<input onChange="this.form.submit()" type="checkbox" name="tag[]" value="' . esc_attr($tag->slug) . '" ' . $checked . '>';
                                echo esc_html($tag->name);
                                echo '</label><br>';
                            }
                            ?>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>