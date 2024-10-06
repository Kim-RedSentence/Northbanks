<?php 
$image = get_sub_field('hero_background');
$title = get_sub_field('hero_title');
$subtitle = get_sub_field('hero_subtitle');
?>

<?php if(get_sub_field('hero_type') == 'full') : ?>
    <div class="container hero" style="background: url('<?php echo $image['url']; ?>');">
    <?php
    if (get_sub_field('hero_caption_select') != 'none') :
        if(get_sub_field('hero_caption_select') == 'left'):
            $vars = 'left';
        elseif (get_sub_field('hero_caption_select') == 'bottomleft'):
            $vars = 'bottomleft';
        else : 
            $vars = 'bottomright';
        endif;
        $caption = get_sub_field('hero_caption'); ?>
        <div class="hero__caption hero__caption--<?php echo $vars; ?>">
            <p><?php echo $caption; ?></p>
        </div>
    <?php endif; ?>       
        <div class="hero__dot">
            <h1><?php echo $title;?></h1>
            <?php if (get_sub_field('hero_subtitle')):?>
            <p><?php echo $subtitle; ?></p>
            <?php endif; ?>
        </div>
    </div>
<?php else : ?>
    <div class="hero hero__split container cols">
        <div class="hero__halftitle cols__col--heroleft">
            <h1><?php echo $title;?></h1>
        </div>
        <div class="hero__halfimg cols__col--heroright">
            <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
        </div>
    </div>
<?php endif; ?>
