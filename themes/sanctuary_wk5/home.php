<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>Page Title</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/jquery.fullPage.css" />

</head>
<body>
<?php
/*
Template Name: Home Page
*/

get_header(); ?>

<div id="fullpage" class="fullpage_wrap">
   	<div class="section" id="section0" style="background-image: url(<?php the_field('background_one'); ?>); background-position: center; background-repeat: no-repeat; background-size: cover"> 
     <h2 class="page-section page-section1"><?php the_field('page_section1'); ?></h2>
   		<p class="page-description page-description1"><?php the_field('page_description1'); ?></p>
   	</div>
    <div class="section" id="section2" style="background-image: url(<?php the_field('background_two'); ?>); background-position: center; background-repeat: no-repeat; background-size: cover">
      <h2 class="page-section page-section2"><?php the_field('page_section2'); ?></h2>
      <p class="page-description page-description2"><?php the_field('page_description2'); ?></p>
    </div>
    <div class="section" id="section3" style="background-image: url(<?php the_field('background_three'); ?>); background-position: center; background-repeat: no-repeat; background-size: cover">
      <h2 class="page-section page-section3"><?php the_field('page_section3'); ?></h2>
      <p class="page-description page-description3"><?php the_field('page_description3'); ?></p>
    </div>
    <div class="section" id="section4" style="background-image: url(<?php the_field('background_four'); ?>); background-position: center; background-repeat: no-repeat; background-size: cover">
      <h2 class="page-section page-section4"><?php the_field('page_section4'); ?></h2>
      <p class="page-description page-description4"><?php the_field('page_description4'); ?></p>
    </div>
    <div class="section" id="section5" style="background-image: url(<?php the_field('background_five'); ?>); background-position: center; background-repeat: no-repeat; background-size: cover">
      <h2 class="page-section page-section5"><?php the_field('page_section5'); ?></h2>
      <p class="page-description page-description5"><?php the_field('page_description5'); ?></p>
    </div>
</div> 


<?php get_footer(); ?>
</body>
</html>
