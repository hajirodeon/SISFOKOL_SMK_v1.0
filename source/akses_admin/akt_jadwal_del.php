<?php
//Sistem Informasi ini berbasis OPEN SOURCE dengan lisensi GNU/GPL. 
//
//OPEN SOURCE HAJIROBE dengan segala hormat tidak bertanggung jawab dan tidak memiliki pertanggungjawaban
//kepada apapun atau siapa pun akibat terjadinya kehilangan atau kerusakan yang mungkin muncul yang berasal
//dari buah karya ini.
//
//Sistem Informasi ini akan selalu dikembangkan dan jika ditemukan kesalahan logika ataupun kesalahan program,
//hal ini bukanlah disengaja. Melainkan hal tersebut adalah salah satu dari tahapan pengembangan lebih lanjut. 

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

//konek db
require_once('../Connections/sisfokol.php'); 

//fungsi-fungsi
include("../include/function.php"); 

//ambil nilai
$kd = $_REQUEST['kd'];
$keahkod = $_REQUEST['keahkod'];
$tingkod = $_REQUEST['tingkod'];
$rukod = $_REQUEST['rukod'];

//jika tanpa kode, alias hapus semua
if ($kd == "")
	{
	$SQL = sprintf("DELETE FROM jadwal ".
					"WHERE kd_keahlian = '$keahkod' ".
					"AND kd_tingkat = '$tingkod' ".
					"AND kd_ruang = '$rukod'");
	
	mysql_select_db($database_sisfokol, $sisfokol);
	$Rs = mysql_query($SQL, $sisfokol) or die(mysql_error());
	}

else
	{
	$SQL = sprintf("DELETE FROM jadwal WHERE kd = '$kd'");
	
	mysql_select_db($database_sisfokol, $sisfokol);
	$Rs = mysql_query($SQL, $sisfokol) or die(mysql_error());
	}
	
mysql_close($sisfokol);

$returner = "akt_jadwal.php?keahkod=$keahkod&tingkod=$tingkod&rukod=$rukod";
header("location:$returner");
?>