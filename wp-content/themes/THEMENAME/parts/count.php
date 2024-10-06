<?php
$count = 1;
?>
<div class="container container--layertop container--black">
    <div class="container__inner count cols">
        <h2><?php the_sub_field('count_title');?></h2>
        <div class="count__inner count__inner--slick">
        <?php if( have_rows('count_repeater') ):
            while( have_rows('count_repeater') ) : the_row();
                $subtitle = get_sub_field('count_subtitle');
                $body = get_sub_field('count_body'); ?>
                <div class="count__item">
                    <h3>0<?php echo $count; ?></h3>
                    <h4><?php echo $subtitle; ?></h4>
                    <p><?php echo $body; ?></p>
                </div>
            <?php 
            $count++;
            endwhile;
        endif; ?>
        </div>
        <div class="count__inner cols">
        <?php if( have_rows('count_repeater') ):
        $count = 1;
            while( have_rows('count_repeater') ) : the_row();
                $subtitle = get_sub_field('count_subtitle');
                $body = get_sub_field('count_body'); ?>
                <div class="count__item cols__col--3">
                    <h3>0<?php echo $count; ?></h3>
                    <h4><?php echo $subtitle; ?></h4>
                    <p><?php echo $body; ?></p>
                </div>
            <?php 
            $count++;
            endwhile;
        endif; ?>
        </div>
    </div>
</div>