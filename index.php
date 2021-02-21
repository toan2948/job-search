<?php

require_once 'config/init.php';

$job = new Job;


$template = new Template('templates/frontpage.php');

$category = isset($_GET['category']) ? $_GET['category'] :null;

$template->category = $category;

if($category) {
    $template->jobs = $job->getJobsByCategory($category);
} else {
    $template->title = 'Latest Job';
    $template->jobs = $job->getAllJobs();
}

$template->categories = $job->getCategories(); // transfer $categories to frontend.php

echo $template;
 
?>


