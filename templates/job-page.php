<?php
require 'inc/header.php';?>

<br> <br>
<h3> <?php echo $job->job_title; ?> in <?php echo $job->location  ?></h3>
<br>
<p class="fw-bold"> Description </p>
<p><?= $job->description ?></p>
<p class="fw-bold"> Salary </p>
<p><?= $job->salary ?></p>

<p class="fw-bold"> Contact </p>
<p>Name: <?= $job->contact_user ?></p>
<p>Email: <?= $job->contact_email ?></p>
<a href="index.php">Go back</a>
<br> <br>
<?php require 'inc/footer.php'
?>