<?php 
$img = get_sub_field('full_image');
?>
<div class="container fw-img">
    <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt']; ?>" class="fwimg">
</div>