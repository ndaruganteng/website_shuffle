<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'db_catalog';

    $conn = mysqli_connect($hostname, $username, $password, $dbname) or die ('Gagal Terhubung ke database');
?>