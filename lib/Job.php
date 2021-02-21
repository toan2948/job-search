<?php
    class Job {
        private $db;
        public function __construct(){
            $this->db = new Database;
        }

        // Get all jobs
        public function gettAllJobs(){
            $this->db->query("SELECT job.job_title, job.description, category.name AS category
                                FROM job
                                INNER JOIN category 
                                ON job.category_id = category.id
                                ORDER BY post_date DESC;");

        // assign the result set
        $results = $this->db->resultSet();
        return $results;
        }
        // Get categories
        public function getCategories(){
            $query = "SELECT * FROM category";
            $this->db->query($query);
            $results = $this->db->resultSet();
            return $results;
        }
    }
?>