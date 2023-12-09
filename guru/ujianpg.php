<?php
if(empty($_GET['page'])) header("Location:index.php");
include "sambungkan.php";
$result = mysqli_query($conn, "SELECT * FROM tb_soal_ujian");
$row=[];
while ($row = mysqli_fetch_array($result)) {
$rows[] = $row;
}
$dataujian = $rows;
?>

<div class="card">
    <div class="card-header">
        <h4 class="card-title">Kelola Ujian</h4>
    </div>
    <div class="card-body">
        <td style="text-align: center;">
            <span class="fa faplus"></span>
        </td>
        <a href="index.php?page=add_ujianpg" class="btn btn-success btn-md"><span class="fa fa-plus"></span> Tambah</a>
        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
                    <th width="1%">NO</th>
                    <!-- <th width="10%">KODE </th> -->
                    <th width="20%">MATA PELAJARAN</th>
                    <th>SOAL UJIAN</th>
                    <th width="13%">KUNCI JAWABAN</th>
                    <th width="13%">AKSI</th>
                </tr>
            </thead>
            <tbody>
                <?php $id = 1;
                foreach ($dataujian as $ujian) : ?>
                    <tr>
                        <td><?= $id++; ?></td>
                      
                        <td><?= $ujian['nama_matapelajaran']; ?></td>
                        <td>
                            <?= $ujian['pertanyaan']; ?>
                            <ol type="A">
                                <li><?= $ujian['a']; ?></li>
                                <li><?= $ujian['b']; ?></li>
                                <li><?= $ujian['c']; ?></li>
                                <li><?= $ujian['d']; ?></li>
                                <li><?= $ujian['e']; ?></li>
                            </ol>
                        </td>
                        <td><?= $ujian['kunci_jawaban']; ?></td>
                        <td style="text-align: center;">
                            <a href="index.php?page=edit_ujianpg&actions=edit_ujianpg&id=<?= $ujian['id_soal_ujian']; ?>"class="btn btn-primary"><span class="fa fa-edit"></span></a>
                            <a onclick="return confirm('Apakah yakin data akan dihapus?')" href="index.php?page=delete_ujianpg&actions=delete_ujianpg&id=<?= $ujian['id_soal_ujian']; ?>" class="btn btn-danger btn-md"><span class="fa fa-trash"></span></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
