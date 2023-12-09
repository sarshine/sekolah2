<?php
if (empty($_GET['page'])) {
    header("Location: index.php");
}

include "sambungkan.php";

if ($_POST) {
    // Ambil data dari form
    $mataPelajaran = $_POST['mata_pelajaran']; // Diubah dari 'nama_matapelajaran'
    $soalUjian = $_POST['pertanyaan'];
    $a = $_POST['a'];
    $b = $_POST['b'];
    $c = $_POST['c'];
    $d = $_POST['d'];
    $e = $_POST['e'];
    $kunciJawaban = $_POST['kunci_jawaban'];

    $sql = "INSERT INTO tb_soal_ujian (nama_matapelajaran, pertanyaan, kunci_jawaban, a, b, c, d, e) VALUES ('$mataPelajaran', '$soalUjian', '$kunciJawaban', '$a', '$b', '$c', '$d', '$e')";
    $query = mysqli_query($conn, $sql) or die("SQL Simpan Soal Ujian Error" . mysqli_error($conn));
    if ($query) {
        echo "<script>window.location.assign('index.php?page=ujianpg');</script>";
    } else {
        echo "<script>alert('Simpan Data Gagal');</script>";
    }
}
?>
<div class="card col-6 mx-auto">
    <div class="card-header">
        <h5 class="card-title">Form Soal Ujian</h5>
    </div>
    <div class="card-body">
        <form action="" method="post">
            <div class="mb-3">
                <label for="mapel" class="form-label">Mata Pelajaran</label>
                <select class="form-control" id="mapel" name="mata_pelajaran">
                    <option disabled selected>Pilih Mata Pelajaran</option>
                    <?php
                    $sql = mysqli_query($conn, "SELECT * FROM agenda_pengajaran");
                    while ($data = mysqli_fetch_array($sql)) {
                        echo '<option value="' . $data['mata_pelajaran'] . '">' . $data['mata_pelajaran'] . '</option>';
                    }
                    ?>
                </select>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Soal Ujian</label>
                <input type="text" class="form-control" id="pertanyaan" name="pertanyaan" value="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">A</label>
                <input type="text" class="form-control" id="a" name="a" value="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">B</label>
                <input type="text" class="form-control" id="b" name="b" value="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">C</label>
                <input type="text" class="form-control" id="c" name="c" value="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">D</label>
                <input type="text" class="form-control" id="d" name="d" value="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">E</label>
                <input type="text" class="form-control" id="e" name="e" value="">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Kunci Jawaban</label>
                <input type="text" class="form-control" id="kunci_jawaban" name="kunci_jawaban" value="">
            </div>
            <div class="col">
                <a href="index.php?page=ujianpg" class="btn btn-danger btn-md">
                    <span>KEMBALI</span>
                </a>
                <button type="submit" onclick="return confirm('Simpan Data?')" id="submit" name="submit" class="btn btn-success">SIMPAN</button>
            </div>
        </form>
    </div>
</div>
