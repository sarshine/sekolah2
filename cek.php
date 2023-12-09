<?php  session_start(); include 'sambungkan.php'; 
error_reporting(0); 
if (isset($_SESSION['username'])) {
    header("Location: guru/index.php?page=dashboard");

}else if (isset($_POST['submit'])) {
    $username = htmlspecialchars($_POST['username'], ENT_QUOTES);   
    $password = md5(htmlspecialchars($_POST['password'], ENT_QUOTES)); 
	$sqlSiswa = "SELECT * FROM t_siswa WHERE nis='$username' AND password ='$password'"; 
		$result = mysqli_query($conn, $sqlSiswa);
		if (mysqli_num_rows($result) > 0) { 
			$row = mysqli_fetch_assoc($result); 
			$_SESSION['isLogin'] = true;							$_SESSION['id'] = $row['id'];   
			$_SESSION['nis'] = $row['nis'];							$_SESSION['nama'] = $row['nama'];
			$_SESSION['jenis_kelamin'] = $row['jenis_kelamin']; 	$_SESSION['tempat_lahir'] = $row['tempat_lahir'];
			$_SESSION['tanggal_lahir'] = $row['tanggal_lahir']; 	$_SESSION['kelas'] = $row['kelas'];
			$_SESSION['id_sekolah'] = $row['id_sekolah']; 			$_SESSION['password'] = $row['password']; 
			$_SESSION['foto'] = $row['foto'];						$_SESSION['role'] = 1; 
			$_SESSION['username'] = $row['nis']; 					$_SESSION['jk'] = $row['jk'];
			$_SESSION['peran'] = "siswa";   
		 	 header("Location: guru/index.php?page=dashboard");
		} else {
				$_SESSION['eror'] = "Username atau password anda salah. Silahkan coba lagi";
				header("Location: login.php");
				} 
	}else{
     header("Location: index.php"); 
	} 
?>