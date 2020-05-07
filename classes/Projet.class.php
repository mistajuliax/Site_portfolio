<?php

require 'classes/connexion.class.php';

$db = new ConnexionBdd();
$bdd = $db->getConnexion();

$projetName = $_POST["titre"];
$projetImg = $_POST["img"];
$projetDesc = $_POST["desc"];
$projetCategorie = $_POST["projetcategorie"];

$data = $bdd->prepare("INSERT INTO projet (projet_titre, projet_image, projet_description, id_Projet_categorie) VALUES (:projetName, :projetDesc, :projetImg, :projetCategorie)");
$data -> bindParam(':projetName', $projetName, PDO::PARAM_STR, 255);
$data -> bindParam(':projetDesc', $projetDesc, PDO::PARAM_STR, 255);
$data -> bindParam(':projetImg', $projetImg, PDO::PARAM_STR, 255);
$data -> bindParam(':projetCategorie', $projetCategorie, PDO::PARAM_INT);
$data -> execute();

header('Location: index.php');