<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Connexion</title>
    </head>

    <body>
        <h1>Inscriptions</h1>

     

            <section>
                <form action="register.php" method="post">
                        <label for="inputnom">
                        <input id="inputnom" type="text" name="nom" placeholder="Entrer votre nom" required="required">
                    </div>
                    <div>
                        <label for="inputprenom">
                        <input id="inputprenom" type="text" name="prenom" placeholder="Entrer votre prenom" required="required">
                    </div>
                    <div>
                        <label for="inputpseudo">
                        <input id="inputpseudo" type="text" name="pseudo" placeholder="Entrer votre pseudo" required="required">
                    </div>
                    <div>
                        <label for="inputemail">
                        <input id="inputemail" type="text" name="email" placeholder="Entrer votre email" required="required">
                    </div>
                    <div>
                        <label for="inputpwd">
                        <input id="inputpwd" type="password" name="mdp" placeholder="Entrer votre mot de passe" required="required">
                    </div>
                    <div>
                        <button type="submit" name="inscription" value="Sinscrire">S'inscrire</button>
                    </div>
                </form>
                
            </section>

    </body>
</html>
