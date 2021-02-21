<?php

require_once 'config/init.php';

$job = new Job;


$template = new Template('templates/job-page.php');

$job_id = isset($_GET['id']) ? $_GET['id'] :null;


$template->categories = $job->getCategories(); // transfer $categories to frontend.php

$template->job = $job->getJob($job_id);

echo $template;
 
?>


