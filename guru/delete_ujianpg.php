<?php
if (empty($_GET['page'])) header("Location:index.php");
include "sambungkan.php";
$result = mysqli_query($conn, "SELECT * FROM tb_soal_ujian");
$row = [];
while ($row = mysqli_fetch_array($result)) {
    $rows[] = $row;
}
$dataujian = $rows;

// Fungsi Delete Data
if (isset($_GET['actions']) && $_GET['actions'] === 'delete_ujianpg' && isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM tb_soal_ujian WHERE id_soal_ujian = '$id'";
    $query = mysqli_query($conn, $sql);

    if ($query) {
        echo "<script>alert('Data berhasil dihapus');</script>";
        echo "<script>window.location.assign('index.php?page=ujianpg');</script>";
    } else {
        echo "<script>alert('Gagal menghapus data');</script>";
    }
}
?>
