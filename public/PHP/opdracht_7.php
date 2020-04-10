<?PHP
$titel=str_replace("_"," ",substr(__FILE__,strpos(__FILE__,"opdracht"),-4));
include('opdracht_begin.php');
/****************************
TYP HIERONDER JOUW PHPCODE
****************************/

      $fibonacci=array(0,1);
      for ($n=2; $n<30;$n++) {
        $fibonacci[$n]=$fibonacci[$n-1]+$fibonacci[$n-2];
      }
      echo 'De reeks $fibonacci bevat nu '.count($fibonacci).' getallen.';
      
      // Een while bevat een voorwaarde. Zolang er uit de voorwaarde true (WAAR) komt gaat de herhaling verder
      $n=0;
      while ($fibonacci[$n]<100) {
        $n++;            
      }
      echo "<h2>Er zijn $n Fibonaccigetallen kleiner dan 100.</h2>";      
      
      // een if met een elseif en een else
      foreach($fibonacci as $getal) {
        if($getal % 2==0 and $getal % 3==0) {
          if ($getal>144) {
              echo "$getal ja(2 en 3) |";
          }
        }
      }
      echo "<br>";

      
/****************************
EINDE VAN JOUW PHPCODE
****************************/
include('opdracht_eind.php');
?>