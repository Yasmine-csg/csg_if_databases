<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

$reeks=array();
//Deze for-loop vult de array $reeks met getallen
for ($t=1;$t<=15;$t+=2) {
  array_push($reeks,$t);
}
print_r($reeks);
echo "<br>";
$macht3=array();

foreach ($reeks as &$element) {
    $element = pow($element,3);
array_push($macht3,$element);
}
print_r($macht3);

$aantal = count($macht3); 
$i = 0;
while ($i <= $aantal-1) {  
    $i++; 
    if ($macht3[$i]>1000)
     echo "$macht3[$i] <br>";
}
/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>