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

//konek
require_once('../Connections/sisfokol.php'); 

//fungsi-fungsi
include("../include/function.php"); 

//ambil nilai
$mgkd = cegah($_REQUEST['mgkd']);
$mpelkd = cegah($_REQUEST['mpelkd']);
$pelajaran = cegah($_REQUEST['pelajaran']);
$mprogkd = cegah($_REQUEST['mprogkd']);
$progstudi = cegah($_REQUEST['progstudi']);
$mkelkd = cegah($_REQUEST['mkelkd']);
$kelas = cegah($_REQUEST['kelas']);
$topikkd = cegah($_REQUEST['topikkd']);
$topik = cegah($_REQUEST['topik']);
$nomer = cegah($_REQUEST['nomer']);
$kd = cegah($_REQUEST['kd']);

//ada gak?
$SQL1 = sprintf("SELECT * FROM soal_essay_detail ".
					"WHERE nomer = '$nomer'");

mysql_select_db($database_sisfokol, $sisfokol);
$Rs1 = mysql_query($SQL1, $sisfokol) or die(mysql_error());
$row_rs1 = mysql_fetch_assoc($Rs1);
$totalRows_rs1 = mysql_num_rows($Rs1);

//jika iya, gak oleh dobel
if ($totalRows_rs1 != 0) 
	{	
	mysql_close($sisfokol);
	
	$pesan = "Nomer soal tersebut sudah dipakai. Ganti yang lain!";
	$returner = "soal_essay_soal.php?mgkd=$mgkd&mpelkd=$mpelkd&pelajaran=$pelajaran&mprogkd=$mprogkd".
					"&progstudi=$progstudi&mkelkd=$mkelkd&kelas=$kelas&topikkd=$topikkd".
					"&topik=$topik";
	echo "<script>alert('$pesan');location.href='$returner'</script>";
	}

else
	//nek gak 
	{
	$SQL = sprintf("UPDATE soal_essay_detail SET nomer = '$nomer' ".
					"WHERE kd_soal_essay = '$topikkd' ".
					"AND kd = '$kd'");

	mysql_select_db($database_sisfokol, $sisfokol);
	$Rs1 = mysql_query($SQL, $sisfokol) or die(mysql_error());
	
	mysql_close($sisfokol);
	
	//auto-kembali
	$returner = "soal_essay_soal.php?mgkd=$mgkd&mpelkd=$mpelkd&pelajaran=$pelajaran&mprogkd=$mprogkd".
					"&progstudi=$progstudi&mkelkd=$mkelkd&kelas=$kelas&topikkd=$topikkd".
					"&topik=$topik";
	header("location:$returner");
	}
?>