<?php

$nom = null;

if (!empty($_GET['action']) && $_GET['action'] === 'deconnecter') {
    unset($_COOKIE['utilisateur']);
    setcookie('utilisatuer', '', time()-10 );
}
if (!empty($_COOKIE['utilisateur'])) {
    $nom = $_COOKIE['utilisateur'];
}
if (!empty($_POST['nom'])) {
    setcookie('utilisateur', $_POST['nom']);
}
require 'header.php';
?>

<?php if ($nom): ?>
    <h1>Bonjour : <?= htmlentities($nom) ?></h1>
    <a href="profil.php?action=deconnecter">Se déconnecter</a>
<?php else : ?>
    <form action="" method="post">
        <div class="form-group">
            <input class="form-control" name ="nom" placeholder="Entrer votre nom">
        </div>
        <button class="btn-primary">Se Connecter</button>
    </form>
<?php endif; ?>

<?php require 'footer.php'; ?>