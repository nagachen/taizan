<?php 
include_once "db.php";

class Income extends Db{
    function __construct(){
        parent::__construct('vote_income');
    }
}