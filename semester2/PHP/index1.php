<?php
$pan = $_POST['pan'];
$hong = $_POST['hong'];
$choice = $_POST['choice'];
switch ($choice) {
    case '+':
        $ans = $pan + $hong;
        break;
    case '-':
        $ans = $pan - $hong;
        break;
    case '*':
        $ans = $pan * $hong;
        break;
    case '/':
        $ans = $pan / $hong;
        break;
    default:
        # code...
        break;
}
$response=json_encode($ans);
echo $response;