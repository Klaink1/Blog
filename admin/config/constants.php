<?php
session_start();
define("ROOT_URL", "http://localhost:3000/");
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'blog');
if (!isset($_SESSION['user-id'])) {
    header("location: " . ROOT_URL . "logout.php");

    session_destroy();
    die();
    header("location: " . ROOT_URL . "signin.php");
}