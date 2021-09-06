<?php

/* Heure actuel */
date_default_timezone_set('UTC');

/* Récupération données formulaire */
$id = $_GET["id"];
$nomville = htmlspecialchars($_POST["nomville"]); 
$nomdep = htmlspecialchars($_POST["nomdep"]);
$cp = htmlspecialchars($_POST["cp"]);
$datemaj = date("Y-m-d H:i:s"); 

require "connexion_bdd.php";

try {

/* requête mysql */
$rq = "UPDATE ville SET nomville=:nomville, nomdep=:nomdep,
  cp=:cp, datemaj=:datemaj WHERE id=".$id;
$requete = $bdd->prepare($rq);

/* attribution des nouvelles valeurs */
$requete->bindValue(':nomville', $nomville, PDO::PARAM_STR);
$requete->bindValue(':nomdep', $nomdep, PDO::PARAM_STR);
$requete->bindValue(':cp', $cp, PDO::PARAM_INT);
$requete->bindValue(':datemaj', $datemaj, PDO::PARAM_STR);

/* Execution requête*/
$requete->execute();
$requete->closeCursor();
}

/* si erreur */
catch (Exception $e) {
    echo "La connexion à la base de données a échoué ! <br>";
    echo "Merci de bien vérifier vos paramètres de connexion ...<br>";
    echo "Erreur : " . $e->getMessage() . "<br>";
    echo "N° : " . $e->getCode();
    die("Fin du script");
}

header("Location: index.php");
exit;

?>