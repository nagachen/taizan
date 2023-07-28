<?php
date_default_timezone_set('Asia/Taipei');
session_start();
include_once __DIR__ . "/controller/vote.php";





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



