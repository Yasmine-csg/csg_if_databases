<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

for ($o=1; $o<=6; $o++) {
  $frequentie[$o]=0;  
}

function dobbelsteen() {
  $worp=1+rand(0,5);
  //echo $worp." | ";
  return $worp;
}

for ($n=0; $n<100; $n++) {
  $frequentie[dobbelsteen()]++;  
}

function bereken_hoogte($arr) {
    $m = max($arr);
    $verhouding = 200/$m;
    echo $verhouding;
    for ($i=0; $i<6; $i++) {
        $hoogte[$i]= $arr[$i] * verhouding;
    }
    return $hoogte;
}

print_r  (  $frequentie);
$hgt = bereken_hoogte($frequentie);
print_r($hgt);

echo '<h2>Staafdiagram frequentie</h2>';
for ($o=1; $o<=6; $o++) {
  //$hoogte=$(frequentie)[$o]*50;
  $hoogte=$hgt[$o];
  echo '<img src="images/FF4D00-0.8.png" style="width: 100px; height: '.$hoogte.'px; margin-left: 5px;">';  
}


/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>