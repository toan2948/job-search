<?php

require_once 'config/init.php';

$job = new Job;

$template = new Template('templates/frontpage.php');

$template->jobs = $job->gettAllJobs();

$template->categories = $job->getCategories();

echo $template;
 
?>


