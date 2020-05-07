<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <title>Site Galerie</title>
        <script src="js/jquery-3.5.0.min.js"></script>
    </head>
    <body>
        <header>
            <nav class="navbar">
                <ul>
                    <li>Logo</li>
                    <li>
                        <form action="rechercher.php" method="post">
                            <label for ="search">rechercher
                                <input id="search" type="" name="" placeholder="rechercher"/>
                                <button class="bouton" id="" type="submit" value="">Valider</button>
                            </label>
                        </form>
                    </li>
                    <li>
                        <form action="inscription.php" method="post">
                            <label for ="sinscrire">S'inscrire
                                <button class="bouton" id="" type="submit" value="">S'inscrire</button>
                            </label>
                        </form>
                    </li>
                    <li>
                        <form action="SeConnecter.php" method="post">
                            <label for ="connexion">Se Connecter
                                <button class="bouton" id="" type="submit" value="">Se Connecter</button>
                            </label>
                        </form>
                    </li>
                </ul>
            </nav>
        </header>