<?php
function gcd(int $a,int $b){
    while($b!=0){
        $t=$b;
        $b=$a%$b;
        $a=$t;
    }
    return $a;
}
$a=floor($_POST['a']);
$b=floor($_POST['b']);
echo gcd($a,$b);