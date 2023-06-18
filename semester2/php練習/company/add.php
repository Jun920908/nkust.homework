<?php
$name=$_POST['name'];
$title=$_POST['title'];
$telephone=$_POST['telephone'];
$birth=$_POST['birth'];
$db_host='localhost';
$db_name='company';
$db_user='root';
$db_password='';
$dsn="mysql:host=$db_host;dbname=$db_name;charset=utf8";
try{
$conn=new PDO($dsn,$db_user,$db_password);
$sql='INSERT INTO `employee` (`name`, `title`, `telephone`, `birth`) VALUES (?,?,?,?)';
$stmt=$conn->prepare(($sql));
$result=$stmt->execute(array($name,$title,$telephone,$birth));
if($result){
    $count=$stmt->rowCount();
    if($count<1){
    $response['status']=240;
    $response['message']="新增失敗";
    }else{
    $response['status']=200;
    $response['message']="新增成功";
    }
}    
else{
    $response['status']=400;
    $response['message']="SQL錯誤";
}
}
catch(PDOException $e){
    $response['status']=$e->getCode();
    $response['message']=$e->getMessage();
}
echo json_encode($response);