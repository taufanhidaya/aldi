<?php
include 'connect.php'; // Pastikan file koneksi database sudah ada

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nm_lengkap = $_POST['nm_lengkap'];
    $username = $_POST['username'];
    $nm_lapangan = $_POST['nm_lapangan'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT); // Enkripsi password
    $no_registrasi = $_POST['no_registrasi'];

    // Cek apakah no_registrasi ada di tabel anggota
    $query = "SELECT * FROM anggota WHERE no_registrasi = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $no_registrasi);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Jika no_registrasi ditemukan, simpan data ke tabel user
        $query_insert = "INSERT INTO user (nm_lengkap, username, no_registrasi, nm_lapangan, password, role) VALUES (?, ?, ?, ?, ?, 'anggota')";
        $stmt_insert = $conn->prepare($query_insert);
        $stmt_insert->bind_param("sssss", $nm_lengkap, $username, $no_registrasi, $nm_lapangan, $password);

        if ($stmt_insert->execute()) {
            echo "<script>alert('Pendaftaran Berhasil! Silakan login.'); window.location='../index.php?x=login';</script>";
        } else {
            echo "<script>alert('Pendaftaran Gagal! Mohon coba lagi.'); window.history.back();</script>";
        }

        $stmt_insert->close();
    } else {
        // Jika no_registrasi tidak ditemukan
        echo "<script>alert('No. Registrasi tidak ditemukan! Pendaftaran gagal.'); window.history.back();</script>";
    }

    $stmt->close();
    $conn->close();
}
?>
