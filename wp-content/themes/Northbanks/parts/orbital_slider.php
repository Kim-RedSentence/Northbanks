<div class="container">
    <div class="container__inner orbital cols">
        <div class="cols__col cols__col--4 orbital__nav orbital__nav--left">
            <a href="#" id="slide-1" data-slide="1">
                <?php $img = get_sub_field('op1_img'); ?>
                <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" ; />
            </a>
            <a href="#" id="slide-2" data-slide="2">
                <?php $img = get_sub_field('op2_img'); ?>
                <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" ; />
            </a>
        </div>

        <div class="cols__col cols__col--2">
            <div class="orbital__slider">
                <div class="orbital__slide">
                    <?php
                    $img = get_sub_field('op1_img');
                    $title = get_sub_field('op1_title');
                    ?>
                    <div class="orbital__display">
                    <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" />
                    <h2><?php echo $title; ?></h2>
                    </div>
                    <h4><?php echo $title; ?></h4>
                    <p><?php the_sub_field('op1_body'); ?></p>
                </div>
                <div class="orbital__slide">
                    <?php
                    $img = get_sub_field('op2_img');
                    $title = get_sub_field('op2_title');
                    ?>
                    <div class="orbital__display">
                    <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" />
                    <h2><?php echo $title; ?></h2>
                    </div>
                    <h4><?php echo $title; ?></h4>
                    <p><?php the_sub_field('op2_body'); ?></p>
                </div>
                <div class="orbital__slide">
                    <?php
                    $img = get_sub_field('op3_img');
                    $title = get_sub_field('op3_title');
                    ?>
                    <div class="orbital__display">
                    <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" />
                    <h2><?php echo $title; ?></h2>
                    </div>
                    <h4><?php echo $title; ?></h4>
                    <p><?php the_sub_field('op3_body'); ?></p>
                </div>
                <div class="orbital__slide">
                    <?php
                    $img = get_sub_field('op4_img');
                    $title = get_sub_field('op4_title');
                    ?>
                    <div class="orbital__display">
                    <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" />
                    <h2><?php echo $title; ?></h2>
                    </div>
                    <h4><?php echo $title; ?></h4>
                    <p><?php the_sub_field('op4_body'); ?></p>
                </div>
            </div>
        </div>

        <div class="cols__col cols__col--4 orbital__nav orbital__nav--right">
            <a href="#" id="slide-3" data-slide="3">
                <?php $img = get_sub_field('op3_img'); ?>
                <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" ; />
            </a>
            <a href="#" id="slide-4" data-slide="4">
                <?php $img = get_sub_field('op4_img'); ?>
                <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" ; />
            </a>
        </div>
    </div>
</div>