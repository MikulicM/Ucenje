<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php include_once 'head.php'; ?>   
  </head>
<body <?php
echo 'style="background-color: gray"';
?>>
    <div class="grid-container">
      <?php 
      // čitati https://www.simplilearn.com/tutorials/php-tutorial/include-in-php
      require_once 'izbornik.php'; ?>
      <div class="grid-x grid-padding-x">
        <?php ?>
        <div class="large-12 cell">
          <div class="<?='callout0;?>" id="tijelo"
          </div>
        </div>
        <?php include_once 'podnozje.php'; ?>
      </div>
    </div>
   <?php include_once 'skripte.php'; ?>
  </body>
</html>