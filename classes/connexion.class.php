<?php 
    class ConnexionBdd {
        private $host = 'localhost';
        private $dbname = 'galerieBdd';
        private $user = 'root';
        private $passwd = '';
        private $connexion;

        function __construct (){
            if(isset($host, $dbname, $user, $passwd)){
                $this->host = $host ;
                $this->dbname = $dbname;
                $this->user = $user;
                $this->passwd = $passwd;
            }
            try{
                $this->connexion = new PDO('mysql:dbname=site_galerie_bdd;host=127.0.0.1;port=3306;', $this->user, $this->passwd);
            }catch (PDOException $e){
                var_dump($e);
                echo 'Erreur : impossible de se connecter à la bdd !';
            die();
            }
        }

        public function getConnexion(){
            return $this->connexion;
        }
    }

    //à mettre dans un autre fichier
    $db = new connexionBdd(); // si je veux faire une connexion à un autre site.
    $bdd = $db->getConnexion();
?>