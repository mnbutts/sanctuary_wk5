<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>Page Title</title>
</head>

<?php
/*
Template Name: Cabin Page
*/

get_header(); ?>
<body>
<div class="gallery_page_section">
<section class="gallery">
   <?php
    $images = get_field('images');
 
    if( $images ): ?>
        <div id="slider" class="flexslider">
            <ul class="slides">
                <?php foreach( $images as $image ): ?>
                    <li>
                        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <!--<div id="carousel" class="flexslider">
            <ul class="slides">
                <?php foreach( $images as $image ): ?>
                    <li>
                        <img src="<?php echo $image['sizes']['thumbnail']; ?>" alt="<?php echo $image['alt']; ?>" />
                    </li>
                <?php endforeach; ?>
            </ul>
        </div> -->
 
    <?php endif; ?>
</section>
<section class="gallery_info">
    <h3 class="cabin_title"><?php the_field('cabin_name'); ?></h3>
    <p><?php the_field('cabin_details'); ?></p>

    <h4 class="cabin_features"><?php the_field('cabin_features'); ?></h4>
    <p><?php the_field('feature_details'); ?></p>

    <h4 class="cabin_features"><?php the_field('standard_features'); ?></h4>
    <p><?php the_field('standard_feature_details'); ?></p>

    <p><?php the_field('cabin_prices'); ?></p>

    <button class="cabin_button">check availiability</button>

</section>
</div>

</body>
<?php get_footer(); ?>
</html>
