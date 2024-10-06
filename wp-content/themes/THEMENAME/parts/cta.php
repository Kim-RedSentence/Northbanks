<?php
$link = get_sub_field('cta_link'); 
if (get_sub_field('cta_bg') == 'dark') :
    $bg = 'dark';
elseif (get_sub_field('cta_bg') == 'white') :
    $bg = "white";
else :
    $bg = 'grey';
endif; 

if (get_sub_field('cta_btn_col') == 'light') :
    $btn = 'light';
elseif (get_sub_field('cta_btn_col') == 'dark') :
    $btn = 'dark';
else : 
    $btn = 'transparent';
endif;
?>
<div class="container container--<?php echo $bg; ?>">
    <div class="container__inner cta">
        <h3><?php the_sub_field('cta_body'); ?></h3>
        <a class="button button--<?php echo $btn; ?>" href="<?php echo $link['url'];?>"><?php echo $link['title']; ?></a>
    </div>
</div>