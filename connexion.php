<?php

require "bdd.php"; 

$usersName = $_POST["nom"];
$usersFirstname = $_POST["prenom"];
$pseudo = $_POST["pseudo"];
$usersEmail = $_POST["email"];
$usersPass = sha1($_POST["password"]);

$data = $db->prepare("INSERT INTO users (users_Name, users_Firstname, users_Email, users_Pass) VALUES (:usersName, :usersFirstname, :usersEmail, :usersPass)");
$data -> bindParam(':usersName', $usersName, PDO::PARAM_STR, 255);
$data -> bindParam(':usersFirstname', $usersFirstname, PDO::PARAM_STR, 255);
$data -> bindParam(':usersEmail', $usersEmail, PDO::PARAM_STR, 255);
$data -> bindParam(':usersPass', $usersPass, PDO::PARAM_STR, 255);
$data -> execute();

header('Location: index.php');

?>