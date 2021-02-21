<?php
require 'inc/header.php';?>

<a class="btn btn-primary" href="index.php">Back</a>
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







<?php require 'inc/footer.php'
?>