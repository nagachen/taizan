<?php
//應以log 的觀點來看待資料庫的寫入，最後再統計

include_once "../base.php";

//取得option_id age income資料
$option_id=$Vote->find(['title'=>$_POST['opt']])['id'];
// echo 'option_id:'.$option_id;

//寫入陣列
$age['option_id']=$option_id;
$age['age_level']=$_POST['age'];


$income['option_id']=$option_id;
$income['income_level']=$_POST['income'];


//寫入資料庫
echo 'age:'.$Age->save($age);
echo 'income'.$Income->save($income);

?>