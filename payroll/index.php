<?php

require_once '../include/session.php';

echo isset($_SESSION["user_id"]) ? $users_id = $_SESSION["user_id"] : "no user_id";

?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payroll Dashboard</title>
    <link rel="stylesheet" href="./assets/css/text.css">
    <script src="./assets/npm/charts.js"></script>
</head>

<body>

    <?php echo $users_id; ?>



</body>

</html>