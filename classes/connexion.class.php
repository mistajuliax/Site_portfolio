<?php 
    class ConnexionBdd {
        private $host = 'localhost';
        private $user = 'root';
        private $passwd = '';
        private $connexion;

        function __construct (){


            include ("./conf.php");

            if(isset($host, $user, $passwd)){
                $this->host = $host ;
                $this->user = $user;
                $this->passwd = $passwd;
            }
            try{
                $this->connexion = new PDO($this->host, $this->user, $this->passwd);
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