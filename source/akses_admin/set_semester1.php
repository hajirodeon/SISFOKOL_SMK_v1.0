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

//koneksi
require_once('../Connections/sisfokol.php');

//fungsi-fungsi
include("../include/function.php"); 

//ambil nilai
$smti = cegah($_REQUEST['smt']);

//netralkan dahulu. . .
$SQL1 = sprintf("UPDATE m_semester_set SET status = 'false'");

mysql_select_db($database_sisfokol, $sisfokol);
$Rs1 = mysql_query($SQL1, $sisfokol) or die(mysql_error());


//set semester sekarang!
$SQL2 = sprintf("UPDATE m_semester_set SET status = 'true' WHERE kd = '$smti'");

mysql_select_db($database_sisfokol, $sisfokol);
$Rs2 = mysql_query($SQL2, $sisfokol) or die(mysql_error());

//diskonek
mysql_close($sisfokol);
	
//auto-kembali
header("location:set_semester.php");
?>