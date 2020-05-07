<?php

    class ConnexionBdd {
        private $host = 'localhost:8090';
        private $dbname = 'galerieBdd';
        private $user = 'root';
        private $pass = '';
        private $connexion;

        function __construct (){
            if(isset($host, $dbname, $user, $pass)){
                $this->host = $host ;
                $this->dbname = $dbname;
                $this->user = $user;
                $this->passd = $pass;
            }
            try{
                $this->connexion = new PDO('mysql:host=$host' . $this->host . '; dbname=$dbname' . $this->dbname, $this->user, $this->pass);
            }catch (PDOException $e){
                echo 'Erreur : impossible de se connecter à la bdd !';
                die();
            }
        }

        public function getConnexion(){
            if(isset($host, $dbname, $user, $pass));

            return $this->connexion;
        }
    }

?>