<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

$leerling=array('nr' => 150125, 'voornaam' => 'Yasmine', 'achternaam' => 'Ibrahim' , 'geboortejaar' => '2003');
echo "<pre>Leerling:";
print_r($leerling);
echo "</pre>";

/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>