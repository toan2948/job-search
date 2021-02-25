<?php
    class Job {
        private $db;
        public function __construct(){
            $this->db = new Database;
        }

        // Get all jobs
        public function getAllJobs(){
            $this->db->query("SELECT job.*, category.name AS category
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

        // get Jobs By Category
        public function getJobsByCategory($category_id) {
            $query ="SELECT * FROM job WHERE category_id =".$category_id. " ORDER BY post_date DESC";
            $this->db->query($query);
            $results = $this->db->resultSet();
            return $results;
        }

        // get a single-job
        public function getJob($job_id) {
            $query ="SELECT * FROM job WHERE id =".$job_id;
            $this->db->query($query);
            $result = $this->db->single();
            return $result;
        }

        //create a job
        public function create($data){
			//Insert Query
			$this->db->query("INSERT INTO job (category_id, job_title, company, description, location, salary, contact_user, contact_email)
			VALUES (:category_id,:job_title, :company, :description, :location, :salary, :contact_user, :contact_email)");
			// Bind Data
			$this->db->bind(':category_id', $data['category_id']);
			$this->db->bind(':job_title', $data['job_title']);
			$this->db->bind(':company', $data['company']);
			$this->db->bind(':description', $data['description']);
			$this->db->bind(':location', $data['location']);
			$this->db->bind(':salary', $data['salary']);
			$this->db->bind(':contact_user', $data['contact_user']);
			$this->db->bind(':contact_email', $data['contact_email']);
			//Execute
			if($this->db->execute()){
				return true;
			} else {
				return false;
			}
		}
    }
?>