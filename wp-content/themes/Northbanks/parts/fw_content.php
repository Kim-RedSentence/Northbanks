<?php 
if (get_sub_field('fw_bg') == 'dark'):
    $vars = 'black';
elseif (get_sub_field('fw_bg') == 'grey'):
    $vars = 'grey';
else:
    $vars = '';
endif;
?>
<div class="container container--<?php echo $vars; ?>">
    <?php if(get_sub_field('fw_hassidebar')) : ?>
    <div class="container__inner fw fw--<?php echo $vars; ?> cols">
        <div class="fw__main">
        <?php if(get_sub_field('fw_title')): ?>
        <h2><?php the_sub_field('fw_title'); ?></h2>
        <?php endif; ?>
        <?php the_sub_field('fw_body'); ?>
        </div>
        <div class="fw__sidebar">
            <p><?php the_sub_field('fw_subtitle'); ?></p>
            <ul>
            <?php if( have_rows('fw_sidebar') ):
            while( have_rows('fw_sidebar') ) : the_row(); ?>
                <li><?php the_sub_field('fw_sidebar_item'); ?></li>
            <?php endwhile;
            endif; ?>
            </ul>
        </div>
    </div>
    <?php else : ?>
    <div class="container__inner fw fw--<?php echo $vars; ?>">
        <?php if(get_sub_field('fw_title')): ?>
        <h2><?php get_sub_field('fw_title'); ?></h2>
        <?php endif; ?>
        <?php get_sub_field('fw_body'); ?>
    </div>
    <?php endif; ?>
</div>
