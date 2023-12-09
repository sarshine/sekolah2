
<?php
if (empty($_GET['page'])) {
    header("Location:index.php");
} 

include "sambungkan.php";

// Proses Ambil Data
$id=$_GET['id'];
$getData = mysqli_query($conn, "SELECT id_soal_ujian, nama_matapelajaran, pertanyaan, a, b, c, d, e, kunci_jawaban FROM tb_soal_ujian WHERE id_soal_ujian = $id");

$data= mysqli_fetch_array($getData);

// Proses Update Data
if($_POST){
    $mataPelajaran = $_POST['nama_matapelajaran'];
    $soalUjian = $_POST['pertanyaan'];
    $a = $_POST['a'];
    $b = $_POST['b'];
    $c = $_POST['c'];
    $d = $_POST['d'];
    $e = $_POST['e'];
    $kunciJawaban = $_POST['kunci_jawaban'];
    
    $sql="UPDATE tb_soal_ujian SET nama_matapelajaran = '$mataPelajaran', pertanyaan = '$soalUjian', a = '$a', b = '$b', c = '$c', d = '$d', e = '$e', kunci_jawaban = '$kunciJawaban'
    WHERE id_soal_ujian ='$id'";

    $query=  mysqli_query($conn, $sql) or die ("SQL Edit MHS Error". mysqli_error($conn));
    if ($query){
        echo "<script>window.location.assign('index.php?page=ujianpg');</script>";
    }else{
        echo "<script>alert('ERROR');<script>";
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
        <label for="nama_matapelajaran" class="form-label">Mata Pelajaran</label>
        <input type="text" class="form-control" id="nama_matapelajaran" name="nama_matapelajaran" value="<?=$data['nama_matapelajaran']?>" required>
      </div>
      <div class="mb-3">
        <label for="pertanyaan" class="form-label">Soal Ujian</label>
        <input type="text" class="form-control" id="pertanyaan" name="pertanyaan" value="<?=$data['pertanyaan']?>" required>
      </div>
      <!-- Tambahkan atribut `value` untuk input A, B, C, D, E, dan Kunci Jawaban -->
      <div class="mb-3">
        <label for="a" class="form-label">A</label>
        <input type="text" class="form-control" id="a" name="a" value="<?=$data['a']?>" required>
      </div>
      <div class="mb-3">
        <label for="b" class="form-label">B</label>
        <input type="text" class="form-control" id="b" name="b" value="<?=$data['b']?>" required>
      </div>
      <div class="mb-3">
        <label for="c" class="form-label">C</label>
        <input type="text" class="form-control" id="c" name="c" value="<?=$data['c']?>" required>
      </div>
      <div class="mb-3">
        <label for="d" class="form-label">D</label>
        <input type="text" class="form-control" id="d" name="d" value="<?=$data['d']?>" required>
      </div>
      <div class="mb-3">
        <label for="e" class="form-label">E</label>
        <input type="text" class="form-control" id="e" name="e" value="<?=$data['e']?>" required>
      </div>
      <!--  Kunci Jawaban -->
      <!-- ... -->
      <div class="col">
        <a href="index.php?page=ujianpg" class="btn btn-danger btn-md">
          <span>KEMBALI</span>
        </a>
        <button type="submit" onclick="return confirm('Simpan Data?')" id="submit" name="submit" class="btn btn-success">SIMPAN</button>
      </div>
    </form>
  </div>
</div>
