<?php

include_once "../base.php";

$sql="SELECT age_level, count(option_id) as vote FROM vote_age GROUP BY age_level";
$ages=$Age->q($sql);

//  dd($ages);
$ageData=array();
foreach($ages as $idx=>$age){
    foreach($age as $key =>$value){
            //  dd($key);
            // dd($value);
        if($key=='age_level'){
            $currentKey=$value;
        }else{

            $ageData[$currentKey] = $value;
        }

    }   
}
//   dd($ageData);

$sql="SELECT income_level, count(option_id) as vote  FROM vote_income GROUP BY income_level";
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
// dd($incomeData);
$sql="SELECT option_id, count(option_id) as vote FROM vote_income GROUP BY option_id";
$option=$Income->q($sql);
//  dd($option);
$optionData=array();

foreach($option as $idx=>$row){
    foreach($row as $key =>$value){
            //  dd($key);
            //  dd($value);
        if($key=='option_id'){
            $currentKey=$Vote->find($value)['title'];
        }else{

            $optionData[$currentKey] = $value;
        }

    }   
}
// dd($optionData);


$mergedArray = array_merge($ageData, $incomeData);
$mergedArray = array_merge($mergedArray, $optionData);
 
// dd($mergedArray);
    echo json_encode($mergedArray);
//  echo json_encode($incomeData);
?>