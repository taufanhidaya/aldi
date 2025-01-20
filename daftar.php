<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Anggota</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Form Pendaftaran Anggota</h2>

        <form action="proses/daftar_proses.php" method="POST">
            <div class="mb-3">
                <label for="nm_lengkap" class="form-label">Nama Lengkap</label>
                <input type="text" class="form-control" id="nm_lengkap" name="nm_lengkap" required>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="nm_lapangan" class="form-label">Nama Lapangan</label>
                <input type="text" class="form-control" id="nm_lapangan" name="nm_lapangan" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="mb-3">
                <label for="no_registrasi" class="form-label">No. Registrasi</label>
                <input type="text" class="form-control" id="no_registrasi" name="no_registrasi" required>
            </div>
            <button type="submit" class="btn btn-primary">Daftar</button>
        </form>
    </div>
</body>
</html>
