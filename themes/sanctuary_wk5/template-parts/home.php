<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>Page Title</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/home.css" />

</head>
<body>
<?php
/*
Template Name: Home Page
*/

get_header(); ?>

<div id="fullpage">
   	<div class="section" id="section0">
     <h2 class="page-sections"><?php the_field('page_section', 2); ?></h2>
   		<p class="page-descriptions"><?php the_field('page_description', 2); ?></p>
   	</div>
    <div class="section" id="section2">
      <h2 class="page-sections"><?php the_field('page_section', 24); ?></h2>
      <p class="page-descriptions"><?php the_field('page_description', 24); ?></p>
    </div>
    <div class="section" id="section3">
      <h2 class="page-sections"><?php the_field('page_section', 26); ?></h2>
      <p class="page-descriptions"><?php the_field('page_section', 26); ?></p>
    </div>
    <div class="section" id="section4">
      <h2 class="page-sections"><?php the_field('page_section', 33); ?></h2>
      <p class="page-descriptions"><?php the_field('page_section', 33); ?></p>
    </div>
    <div class="section" id="section5">
      <h2 class="page-sections"><?php the_field('page_section', 35); ?></h2>
      <p class="page-descriptions"><?php the_field('page_section', 35); ?></p>
    </div>
</div>


<?php get_footer(); ?>
</body>
</html>
