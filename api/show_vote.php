<?php

include_once "../base.php";

$sql="SELECT age_level, SUM(age_vote) as age_vote FROM vote_age GROUP BY age_level";
$ages=$Age->q($sql);
$ageData=array();
foreach($ages as $idx=>$age){
    foreach($age as $key =>$value){
        //    dd($key);
        //    dd($value);
        if($key=='age_level'){
            $currentKey=$value;
        }else{

            $ageData[$currentKey] = $value;
        }

    }   
}
$sql="SELECT income_level, SUM(income_vote) as income_vote FROM vote_income GROUP BY income_level";
$income=$Income->q($sql);
$incomeData=array();
foreach($income as $idx=>$row){
    foreach($row as $key =>$value){
        //    dd($key);
        //    dd($value);
        if($key=='income_level'){
            $currentKey=$value;
        }else{

            $incomeData[$currentKey] = $value;
        }

    }   
}
$mergedArray = array_merge($ageData, $incomeData);
 
// dd($mergedArray);
   echo json_encode($mergedArray);
//  echo json_encode($incomeData);
?>