<?php
//Sistem Informasi ini berbasis OPEN SOURCE dengan lisensi GNU/GPL. 
//
//OPEN SOURCE HAJIROBE dengan segala hormat tidak bertanggung jawab dan tidak memiliki pertanggungjawaban
//kepada apapun atau siapa pun akibat terjadinya kehilangan atau kerusakan yang mungkin muncul yang berasal
//dari buah karya ini.
//
//Sistem Informasi ini akan selalu dikembangkan dan jika ditemukan kesalahan logika ataupun kesalahan program,
//hal ini bukanlah disengaja. Melainkan hal tersebut adalah salah satu dari tahapan pengembangan lebih lanjut. 
//
//Sistem Informasi Sekolah (SISFOKOL) untuk SMK v1.0, dikembangkan oleh OPEN SOURCE HAJIROBE (Agus Muhajir).
//Dan didistribusikan oleh BIASAWAE PRODUCTION (http://www.biasawae.com)
//
//Bila Anda mempunyai pertanyaan, komentar, saran maupun kritik layangkan saja ke hajirodeon@yahoo.com .
//Semoga program ini berguna bagi Anda.
//
//Ikutilah perkembangan terbaru Sistem Informasi ini di BIASAWAE PRODUCTION.

session_start();

///cek session
require("include/cek.php"); 

 

//ambil nilai konfigurasi tertentu
include("../include/config.php"); 

//koneksi
require_once('../Connections/sisfokol.php'); 

//fungsi-fungsi
include("../include/function.php"); 

//ambil nilai
$keahlian = cegah($_POST['keahlian']);
$tingkat = cegah($_POST['tingkat']);
$ruang = cegah($_POST['ruang']);
$walikelas = cegah($_POST['walikelas']);

//cek, sudah ada belum
$SQL1 = sprintf("SELECT * FROM m_ruang_kelas ".
					"WHERE kd_keahlian = '$keahlian' ".
					"AND kd_tingkat = '$tingkat' ".
					"AND kd_ruang = '$ruang'");

mysql_select_db($database_sisfokol, $sisfokol);
$Rs1 = mysql_query($SQL1, $sisfokol) or die(mysql_error());
$row_rs1 = mysql_fetch_assoc($Rs1);
$totalRows_rs1 = mysql_num_rows($Rs1);

//jika iya
if ($totalRows_rs1 != 0) 
	{
	$pesan = "Ruang Kelas sudah ada, Silahkan diulangi!";
	$kembali = "akad_ruang_kelas.php";
	
	echo "<script>alert('$pesan');location.href='$kembali'</script>";
	}

else
	{

//perintah SQL
$SQL2 = sprintf("INSERT INTO m_ruang_kelas(kd, kd_keahlian, kd_tingkat, kd_ruang, kd_guru) ".
					"VALUES ('$x', '$keahlian', '$tingkat', '$ruang', '$walikelas')");

mysql_select_db($database_sisfokol, $sisfokol);
$Rs2 = mysql_query($SQL2, $sisfokol) or die(mysql_error());

//diskonek
mysql_close($sisfokol);

//auto kembali
$keahkod = $keahlian;
$tingkod = $tingkat;

$returner = "akad_ruang_kelas.php?keahkod=$keahkod&tingkod=$tingkod";
header("location:$returner");
}
?>