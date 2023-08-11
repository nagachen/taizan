<?php
date_default_timezone_set('Asia/Taipei');
session_start();
include_once __DIR__ . "/controller/vote.php";
include_once __DIR__ . "/controller/Age.php";
include_once __DIR__ . "/controller/Income.php";





function to($url)
{
    header("location:" . $url);
}
function dd($array)
{
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}

$Vote = new Vote;
$Age = new Age;
$Income = new Income;



