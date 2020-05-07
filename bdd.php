<?php

require 'classes/connexionBdd.class.php';

$db = new connexionBdd(); // si je veux faire une connexion à un autre site.
$bdd = $db->getConnexion();
?>