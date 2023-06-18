<?php
$id=$_POST['id'];
$name=$_POST['name'];
$addr=$_POST['addr'];
$birth=$_POST['birth'];
$db_host = 'localhost';
$db_name = 'school';
$db_user = 'root';
$db_password = '';
$dsn = "mysql:host=$db_host;dbname=$db_name;charset=utf8";
try{
$conn = new PDO($dsn, $db_user, $db_password);
$sql = 'Insert Into `student` (`id`, `name`, `addr`, `birth`) VALUES (?,?,?,?)';
$stmt = $conn->prepare($sql);
$result = $stmt->execute(array($id,$name,$addr,$birth));
if ($result) {
    $count=$stmt->rowCount();
    if ($count<1){
        $response['status']=240;//失敗
        $response['message']='新增失敗'; 
    }   
    else{
    $response['status'] = 200; //OK
    $response['message']="新增成功";
    } 
}
else {
    $response['status'] = 400; //Bad Request
    $response['message'] = "SQL錯誤";
    }
} catch (PDOException $e){
    $response['status'] = $e->getCode();
    $response['message'] = $e->getMessage();  
}   
echo json_encode($response);
