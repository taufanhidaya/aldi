<?php
session_start(); // Memulai sesi pengguna

// Default halaman
$page = "page/home.php";

// Memfilter parameter `x` dan `sub` agar terhindar dari serangan kode injeksi
$x = isset($_GET['x']) ? htmlspecialchars($_GET['x']) : 'home';
$sub = isset($_GET['sub']) ? htmlspecialchars($_GET['sub']) : '';

// Routing berdasarkan parameter
switch ($x) {
    case 'home':
        $page = "page/home.php";
        break;
    case 'profil':
        $page = "page/profil.php";
        break;
    case 'kegiatan':
        $page = "page/kegiatan.php";
        break;
    case 'anggota':
        $page = "page/anggota.php";
        break;
    case 'divisi':
        switch ($sub) {
            case 'gunung_hutan':
                $page = "page/divisi/gunung_hutan.php";
                break;
            case 'panjat_tebing':
                $page = "page/divisi/panjat_tebing.php";
                break;
            case 'arung_jeram':
                $page = "page/divisi/arung_jeram.php";
                break;
            case 'konservasi':
                $page = "page/divisi/konservasi.php";
                break;
        }
        break;
    case 'pengurus':
        switch ($sub) {
            case 'struktur':
                $page = "page/pengurus/struktur.php";
                break;
            case 'periode':
                $page = "page/pengurus/periode.php";
                break;
        }
        break;
    case 'login':
        $page = "login.php";
        break;
    case 'daftar':
        $page = "daftar.php";
        break;
    default:
        $page = "page/home.php"; // Halaman default jika parameter tidak valid
        break;
}

// Include template utama
include "main.php";
?> 