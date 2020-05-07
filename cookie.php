<?php

setcookie('utilisateur','utilisateur_prenom', time() + 60 *60 * 24);
var_dump($_COOKIE);
?>