<?php 
include_once "db.php";

class Age extends Db{
    function __construct(){
        parent::__construct('vote_age');
    }
}