<?php
    class Template {
        //path to Template
        protected $template;
        //vars passed in
        protected $vars = array();

        //Constructor
        public function __construct($template){
            $this->template = $template;

        }

        public function __get($key){
            return $this->var[$key];
        }

        public function __set($key, $value){
            $this->vars[$key] = $value;
        }

        public function __toString(){
            extract($this->vars);
            chdir(dirname($this->template)); // change the current directory the directory 'template' 
            ob_start();

            include basename($this->template); // = output is  the content of file  frontend.php
            
            return ob_get_clean();

        }
    }
?>