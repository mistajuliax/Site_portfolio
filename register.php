<?php

require 'classes/connexion.class.php';

$db = new ConnexionBdd();
$bdd = $db->getConnexion();

$userName = $_POST["nom"];
$userFirstname = $_POST["prenom"];
$userPseudo = $_POST["pseudo"];
$userEmail = $_POST["email"];
$userPass = ($_POST["password"]);
$pass_hash = password_hash($userPass, PASSWORD_ARGON2ID, ['cost'=> 12]);


$data = $bdd->prepare("INSERT INTO utilisateur (utilisateur_nom, utilisateur_prenom, utilisateur_pseudo, utilisateur_email, utilisateur_mdp) VALUES (:utilisateur_nom, :utilisateur_prenom, :utilisateur_pseudo, :utilisateur_email, :utilisateur_mdp)");
$data -> bindParam(':utilisateur_nom', $userName, PDO::PARAM_STR, 255);
$data -> bindParam(':utilisateur_prenom', $userFirstname, PDO::PARAM_STR, 255);
$data -> bindParam(':utilisateur_pseudo', $userPseudo, PDO::PARAM_STR, 255);
$data -> bindParam(':utilisateur_email', $userEmail, PDO::PARAM_STR, 255);
$data -> bindParam(':utilisateur_mdp', $pass_hash, PDO::PARAM_STR, 255);
$data -> execute();


header('Location: seConnecter.php');

?>