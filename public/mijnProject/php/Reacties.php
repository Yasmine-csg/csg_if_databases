<?php
include('database.php');
session_start();

echo "In reacties opslaan";
echo $_SESSION['user'];
echo $_SESSION['fotoNummer'];

if (isset($_REQUEST['reactie'])) {
echo $_REQUEST['reactie'];
$sql = "insert into reacties (foto,account,reactie) 
        SELECT '$_SESSION[fotoNummer]',a.id,'$_REQUEST[reactie]'
        from accounts a
        where email = '$_SESSION[user]';";

if ($DBverbinding->query($sql) === TRUE) {
        $_SESSION["melding"] = "Reactie toegevoegd!";
} else {
        $_SESSION["melding"] = "Er is een fout opgetreden!";
}      
header("Location: ../index.php?nr=$_SESSION[fotoNummer]");

}
?>