<?php

class Database {
    //localhost connection
    private $host = 'localhost';
    private $user = 'root';
    private $password = '';
    private $dbname = 'job_list';

    //job-search app
    // private $host = 'us-cdbr-east-03.cleardb.com';
    // private $user = 'bdfce401fd566d';
    // private $password = '992c6ead';
    // private $dbname = 'heroku_b8e48e4fcbc1a96';
  
    // job-borse app
    // private $host = 'eu-cdbr-west-03.cleardb.net';
    // private $user = 'bbeab981970278';
    // private $password = 'f5e0f7e4';
    // private $dbname = 'heroku_f58e244db07b167';
        
    private $conn;
    private $error;
    private $stmt;

    public function __construct() {
         // set DATA SOURCE NAME
         $dsn = 'mysql:host=' . $this->host. ';dbname='. $this->dbname;
         //set Options
         $options = array (
                PDO::ATTR_PERSISTENT => true,
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
         );

         // PDO instantiate
         try {
                $this->conn = new PDO($dsn, $this->user, $this->password, $options);
         } catch (PDOException $e){
            $this->error = $e->getMessage();
         }
    }

    public function query($query){
        $this->stmt = $this->conn->prepare($query);
    }
    public function bind($param, $value, $type = null){
        if(is_null($type)){
            switch(true){
                case is_int ($value): 
                            $type =PDO::PARAM_INT;
                            break;
                case is_bool ($value): 
                            $type =PDO::PARAM_BOOL;
                            break;
                case is_null ($value): 
                            $type =PDO::PARAM_NULL;
                            break;
                default: 
                            $type =PDO::PARAM_STR;
            }
        $this->stmt->bindValue($param, $value, $type);
    }
}
    public function execute(){
        $this->stmt->execute();
    }
    public function resultSet(){
        $this->execute();
        return $this->stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function single(){
        $this->execute();
        return $this->stmt->fetch(PDO::FETCH_OBJ);
    }}


?>