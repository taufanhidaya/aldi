<?php
session_start();

// Hapus semua data session
session_unset();
session_destroy();

// Redirect ke halaman login atau beranda
header("Location: index.php?x=login.php");
exit;
?>
