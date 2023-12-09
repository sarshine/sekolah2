<?php
// Koneksi Database
$server = "localhost";
$user = "root";
$pass = "";
$database = "db_mapel";

$koneksi = mysqli_connect($server, $user, $pass, $database)or die(mysqli_error($koneksi));

// Jika tombol simpan diklik
if(isset($_POST['bsimpan'])){

    if($_GET['hal'] == "edit"){

            //data akan diedit baru
            $edit = mysqli_query($koneksi, " UPDATE pelajaran set 
                                                pelajaran = '$_POST[tpelajaran]',
                                                kelas = '$_POST[tkelas]',
                                                kode_mapel = '$_POST[tkode]'
                                            WHERE id_mapel = '$_GET[id]'
                                        ");
        //Jika simpan sukses
        if($edit){
            echo "<script>
                    alert('Edit data suksess!');
                    document.location='guru.php';
                  </script>";
        }
        else{
            echo "<script>
                    alert('Edit data GAGAl!!');
                    document.location='guru.php';
                  </script>";
        }
    }else{
            // data akan disimpan baru
            $simpan = mysqli_query($koneksi, "INSERT INTO pelajaran (pelajaran, kelas, kode_mapel)
                                      VALUES ('$_POST[tpelajaran]', '$_POST[tkelas]', '$_POST[tkode]')
                                        ");
        //Jika simpan sukses
        if($simpan){
            echo "<script>
                    alert('Simpan data suksess!');
                    document.location='guru.php';
                  </script>";
        }
        else{
            echo "<script>
                    alert('Simpan data GAGAl!!');
                    document.location='guru.php';
                  </script>";
        }
    }


    
}

//Pengujian jika tombol edit / hapus di klik
if(isset($_GET['hal'])){
    // Pengujian edit data
    if($_GET['hal'] == "edit"){
        //Tampil data yang akan diedit
        $tampil = mysqli_query($koneksi, "SELECT * FROM pelajaran WHERE id_mapel = '$_GET[id]'");
        $data = mysqli_fetch_array($tampil);
        if($data){
            //jika data ditemukan, maka data ditampung ke dalam variabel
            $vpelajaran = $data['pelajaran'];
            $vkelas = $data['kelas'];
            $vkode_mapel = $data['kode_mapel'];
        }
    }
    else if ($_GET['hal'] == "hapus"){
            // hapus data
            $hapus = mysqli_query($koneksi, "DELETE FROM pelajaran WHERE id_mapel = '$_GET[id]' ");
            if($hapus){
                echo "<script>
                    alert('Hapus data suksess!!');
                    document.location='guru.php';
                  </script>";
            }
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <h2>Mata Pelajaran</h2>

    <!-- Awal card form -->
    <div class="card mt-3">
    <div class="card-header bg-primary text-white">
        Form Input Data Mata Pelajaran
    </div>
    <div class="card-body">
       <form method="post" action="">
    <div class="form-group">
        <label>Pelajaran</label>
        <input type="text" name="tpelajaran" value="<?=@$vpelajaran?>" class="form-control" placeholder="Input pelajaran anda disini!" required>
     </div>
        <div class="input-group mt-3">
      <label class="input-group-text" for="inputGroupSelect01">Kelas</label>
      <select class="form-select form-control" name="tkelas" >
        <option selected>Pilih...</option>
        <option value="<?=@$vkelas?>"><?=@$vkelas?></option>
        <option value="X">X</option>
        <option value="XI">XI</option>
        <option value="XII">XII</option>
      </select>
    </div>
    <div class="form-group mt-2">
        <label>Kode Mapel</label>
        <input type="text" name="tkode" value="<?=@$vkode_mapel?>" class="form-control" placeholder="Input kode mapel anda disini!" required>
     </div>

     <button type="submit" class="btn btn-success mt-2 text-white" name="bsimpan">Simpan</button>
     
    </form>
    </div>
    </div>
<!-- Akhir card form -->

<!-- Awal card tablet -->
<div class="card mt-3">
    <div class="card-header bg-success text-white">
        Daftar Mata Pelajaran
    </div>
    <div class="card-body">

        <table class="table table-bordered table-striped">
            <tr>
                <th>NO</th>
                <th>Pelajaran</th>
                <th>Kelas</th>
                <th>Kode Mapel</th>
                <th>Aksi</th>       
            </tr>
            <?php
                $no = 1;
                $tampil = mysqli_query($koneksi, "SELECT * FROM pelajaran order by id_mapel desc");
                while($data = mysqli_fetch_array($tampil)) :
            ?>
            <tr>
                <td><?=$no++?></td>
                <td><?=$data['pelajaran']?></td>
                <td><?=$data['kelas']?></td>
                <td><?=$data['kode_mapel']?></td>
                <td>
                    <a href="guru.php?hal=edit&id=<?=$data['id_mapel']?>" class="btn btn-warning">Edit</a>
                    <a href="guru.php?hal=hapus&id=<?=$data['id_mapel']?>" onclick="return confirm('Apakah yakin ingin menghapus data ini')" class="btn btn-danger">Hapus</a>
                </td>
            </tr>
            <?php endwhile; //Penutup Perulangan while?>
        </table>
      
    </div>
    </div>
<!-- Akhir card tablet -->

</div>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>