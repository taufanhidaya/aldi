<?php
session_start();
include "connect.php";

$username = (isset($_POST['username'])) ? htmlentities($_POST['username']) : "";
$password = (isset($_POST['password'])) ? htmlentities($_POST['password']) : "";

if (!empty($_POST['submit_validate'])) {
    $query = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

    if ($query && mysqli_num_rows($query) > 0) {
        $hasil = mysqli_fetch_array($query);

        // Gunakan password_verify untuk memeriksa hash
        if (password_verify($password, $hasil['password'])) {
            $_SESSION['username'] = $hasil['username'];
            $_SESSION['role'] = $hasil['role'];
            $_SESSION['id_user'] = $hasil['id_user'];
            header('Location: ../home');
            exit();
        } else {
            echo "<script>
                alert('Username atau password Anda salah!');
                window.location.href = '../login';
            </script>";
        }
    } else {
        echo "<script>
            alert('Username atau password Anda salah!');
            window.location.href = '../login';
        </script>";
    }
}
?>