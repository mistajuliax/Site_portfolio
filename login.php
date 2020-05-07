<?php

session_start();

require 'classes/connexion.class.php'; 

$db = new ConnexionBdd();
$bdd = $db->getConnexion();

$userEmail = $_POST["email"];
$userPass = ($_POST["mdp"]);
$pass_hash = password_hash($userPass, PASSWORD_ARGON2ID, ['cost'=> 12]);

$req = $bdd->prepare("SELECT utilisateur utilisateur_nom, utilisateur_prenom, utilisateur_pseudo, utilisateur_email, utilisateur_mdp FROM utilisateur WHERE utilisateur_email = :utilisateur_email AND utilisateur_mdp = :utilisateur_mdp)");

$req -> bindParam(':utilisateur_email', $userEmail, PDO::PARAM_STR, 255);
$req -> bindParam(':utilisateur_mdp', $pass_hash, PDO::PARAM_STR, 255);
$req -> execute();

$test = $req->fetchall();

if (count($test) === 1 ) {
    echo 'connecté !';
}

if ($userEmail == $test['utilisateur_email'] && $pass_hash == $req['utilisateur_mdp']){
    $_SESSION["req"] = $test;
}


header('Location: index.php');

?>