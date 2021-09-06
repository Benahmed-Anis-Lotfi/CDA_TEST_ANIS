  <?php

try 
{
    /* Accès à la base de données avec un identifiant et un mot de passe */
    $bdd = new PDO("mysql:host=localhost;charset=utf8;dbname=CDABENAHMED", "root", "yes"); 

    $reponse = $bdd->query('SELECT * FROM ville');

    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
} 

catch (Exception $e) 
{
    echo 'Erreur : ' . $e->getMessage() . '<br />';
    echo 'N° : ' . $e->getCode();
    die('Fin du script');
}


?>