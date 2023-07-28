<?php 
include_once "db.php";

class Vote extends Db{
    function __construct(){
        parent::__construct('vote');
    }
}