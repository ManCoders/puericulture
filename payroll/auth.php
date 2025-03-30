<?php
require_once '../include/session.php';
isset($_SESSION["user_id"]) ? $users_id = $_SESSION["user_id"] : "header('location: ../index.php')";

?>