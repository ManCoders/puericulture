<?php

session_start();
session_abort();
session_destroy();
session_unset();
session_regenerate_id(true);

header("Location: index.php");
die();