<?php
$link = get_sub_field('cta_link'); 
?>
<div class="container container--grey">
    <div class="container__inner cta">
        <h3><?php the_sub_field('cta_body'); ?></h3>
        <a class="button button--transparent" href="<?php echo $link['url'];?>"><?php echo $link['title']; ?></a>
    </div>
</div>