<?php
include_once "../base.php";
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: *");
header("Access-Control-Allow-Headers: Origin, Methods, Content-Type");


$table = ucfirst($_POST['table']);
$subject_id = $_POST['subject_id'];
$title = $$table->find($subject_id);
$rows = $$table->all(['main_id' => $subject_id]);
// print_r($title);
// print_r($rows);
$title=$title['title'];
$obj="title:$title";
foreach($rows as $idx=>$value){
    $obj .= ",opt".($idx+1) .":{$value['title']}";
}
echo $obj;
    ?>