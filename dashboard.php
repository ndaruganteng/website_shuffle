<?php
    Session_start();
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>catalog</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
    <!-- header -->
    <header>
        <div class="container">
            <h1> <a href="dashboard.php">SHUFFLE CATALOG</a></h1>
            <ul>
                <li><a href="dashboard.php">Dashboard</a></li>
                <li><a href="profil.php">Profil</a></li>
                <li><a href="data-kategori.php">Data Kategori</a></li>
                <li><a href="data-produk.php">Data Produk</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </div>
    </header>
    <!-- akhir header -->
    <!-- content -->
    <div class="section">
        <div class="container">
            <h3>Dashboard</h3>
            <div class="box">
                <h4>Selamat Datang <?php echo $_SESSION['a_global']->admin_name?> di SHUFFLE CATALOG </h4>
            </div>
        </div>
    </div>
    <!-- akhir content -->

    <!-- footer -->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2022-shuffle catalog.</small>
        </div>
    </footer>
    <!-- akhir footer -->
</body>
</html>
